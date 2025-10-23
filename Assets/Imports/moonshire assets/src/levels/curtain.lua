curtain = {}

-- 0 = inactive
-- 1 = closing
-- 2 = opening
curtain.state = 0
curtain.alpha = 0
curtain.rad = 0
curtain.type = "fade"
curtain.x = -10
curtain.y = -10
curtain.dirTime = 0.5
curtain.backup = 0 -- alpha of an always visible 'backup' curtain

-- Transition information
curtain.destMap = "1_meadow"
curtain.destX = 0
curtain.destY = 0
curtain.full = false

function curtain:call(destMap, destX, destY, type, entranceId)
    curtain.destMap = destMap
    if not destMap then curtain.destMap = loadedMap end
    curtain.destX = destX if not destX then curtain.destX = player:getX() end
    curtain.destY = destY if not destY then curtain.destY = player:getY() end
    curtain.type = "circle"
    if type then curtain.type = type end
    if player.state == 0 then player.state = 12 end
    curtain.x = -10
    curtain.y = -10
    curtain.width = love.graphics.getWidth() + 20
    curtain.height = love.graphics.getHeight() + 20
    curtain.entranceId = entranceId
    curtain.cutsceneState = 0
    curtain.killWeapon = false

    if destMap == "blacksmithCutscene" then
        curtain.destX = -1
        curtain.destY = -1
        curtain.type = "fade"
        curtain.cutsceneState = 1 -- closing
    end

    if destMap == "client" then
        curtain.type = "circle"
    end

    curtain:close()
end

function curtain:getRad()
    if love.graphics.getWidth() > love.graphics.getHeight() then
        return love.graphics.getWidth()*0.65
    else
        return love.graphics.getHeight()*0.65
    end
end

function curtain:draw()
    if curtain.state == 0 then return end

    local bVal = 16

    if self.backup > 0 then
        love.graphics.setColor(0, 0, 0, self.backup)
        love.graphics.rectangle("fill", -10, -10, love.graphics.getWidth() + 20, love.graphics.getHeight() + 20)
    end

    if self.white then bVal = 245 end

    if curtain.type == "fade" or curtain.type == "quickFade" or curtain.type == "storyFade" or curtain.full then
        love.graphics.setColor(bVal/255,bVal/255,bVal/255, curtain.alpha)
        love.graphics.rectangle("fill", -10, -10, love.graphics.getWidth() + 20, love.graphics.getHeight() + 20)
    elseif curtain.type == "left" or curtain.type == "right" or curtain.type == "up" or curtain.type == "down" then
        love.graphics.setColor(bVal/255,bVal/255,bVal/255,1)
        love.graphics.rectangle("fill", curtain.x, curtain.y, curtain.width, curtain.height)
    else -- circle
        love.graphics.setColor(bVal/255,bVal/255,bVal/255,1)
        love.graphics.circle("fill", love.graphics.getWidth()/2, love.graphics.getHeight()/2, self.rad)
    end
end

function curtain:close()
    self.state = 1
    curtain.white = false
    curtain.full = false
    curtain.alpha = 0
    curtain.rad = 0

    if curtain.type == "fade" then
        flux.to(self, 0.4, {alpha = 1}):ease("linear"):oncomplete(function() self:open() end)
    elseif curtain.type == "quickFade" then
        flux.to(self, 0.2, {alpha = 1}):ease("linear"):oncomplete(function() self:open() end)
    elseif curtain.type == "storyFade" then
        flux.to(self, 2.25, {alpha = 0.7}):ease("backinout"):oncomplete(function()
            -- START STORY
            gamestate = 0.2
            startMusic(bgm.story, true)
            startConversation(conversations.story)
        end)
    elseif curtain.type == "flashback" then
        curtain.full = true
        curtain.white = true
        curtain.killWeapon = true
        flux.to(self, 2.5, {alpha = 1}):ease("linear"):oncomplete(function() self:open() end)
    elseif curtain.type == "shine" then
        curtain.full = true
        curtain.white = true
        flux.to(self, 1.5, {alpha = 1}):ease("quadin"):oncomplete(function() self:open() end)
    elseif curtain.type == "left" then
        curtain.alpha = 1
        curtain.x = -1 * curtain.width - 10
        curtain.y = -10
        flux.to(self, curtain.dirTime, {x = -10}):ease("quadout"):oncomplete(function() self:open() end)
    elseif curtain.type == "right" then
        curtain.alpha = 1
        curtain.x = curtain.width + 10
        curtain.y = -10
        flux.to(self, curtain.dirTime, {x = -10}):ease("quadout"):oncomplete(function() self:open() end)
    elseif curtain.type == "down" then
        curtain.alpha = 1
        curtain.x = -10
        curtain.y = curtain.height + 10
        flux.to(self, curtain.dirTime, {y = -10}):ease("quadout"):oncomplete(function() self:open() end)
    elseif curtain.type == "up" then
        curtain.alpha = 1
        curtain.x = -10
        curtain.y = -1 * curtain.height - 10
        flux.to(self, curtain.dirTime, {y = -10}):ease("quadout"):oncomplete(function() self:open() end)
    else -- circle
        curtain.alpha = 1
        local destRad = self.getRad()
        flux.to(self, 1, {rad = destRad}):ease("quadout"):oncomplete(function() self:open() end)
    end
end

function curtain:cancel()
    self.state = 0
    self.rad = 0
    player.state = 0
    cam.smoother = Camera.smooth.damped(8)
end

function curtain:open(wt)
    local willTransition = true
    if wt then willTransition = wt end

    if curtain.killWeapon then
        if player.hasWeapon then
            weapons[weapons:getIndex(player.weaponUniqueId)]:drop(player.lastMoveDir*-1)
            player:resetAnimation()
        end
    end

    if self.cutsceneState == 1 then
        self.cutsceneState = 2
        player.state = 13

        if self.destMap == "blacksmithCutscene" then -- this is just pausing the blackness for 2 seconds
            dj.play(sounds.misc.smith, "static", "effect")
            flux.to(self, 2, {alpha = 1.05}):ease("linear"):oncomplete(function()
                self:open(false)
            end)
            newui:stop()
            -- spawn the weapon being made
            weapons:spawn(player.wantedWeaponId, 504, 500)
        end

        return
    elseif self.cutsceneState == 2 then
        self.cutsceneState = 3
        if self.destMap == "blacksmithCutscene" then -- this is just pausing the blackness for 2 seconds
            willTransition = false
        end
    end

    if self.destMap == "amethyst" then
        willTransition = false
        misc:setAmethystCave()
    end

    if self.destMap == "client" then
        willTransition = false
        client:start()
    end

    self.state = 2
    cam.smoother = Camera.smooth.none()

    curtain.backup = 0

    if self.cutsceneState <= 0 then
        cam:fluxUnzoom()
    end

    if self.destMap == "mainMenu" then
        returnToMenu()
        startMusic(bgm.mainMenu, true)
    elseif gamestate < 1 then
        loadGame(newui.fileId)
    elseif gamestate == 3.1 then -- Respawn from game over (old way)
        player.state = 0
        player.health = player.maxHealth -- always load the game with full health
        gamestate = 1
        loadMap(data.player.map, data.player.x, data.player.y, {loading=true}) -- moving loadMap after gamestate changes
    elseif willTransition then
        triggerTransition(self.destMap, self.destX, self.destY, self.entranceId)
    end

    setScale()

    if gamestate == 2 then
        --uxs:create("preDungeon")
        --curtain:cancel()
        return
    end

    --love.graphics.setBackgroundColor(96/255, 174/255, 140/255)
    --love.graphics.setBackgroundColor(26/255, 26/255, 26/255)

    local onFinish = function()
        self.state = 0
        self.alpha = 0
        if player.state ~= 13 and player.state ~= 14 then -- cutscene
            player.state = 0
        end
        cam.smoother = Camera.smooth.damped(8)

        if self.cutsceneState == 3 and self.destMap == "blacksmithCutscene" then
            self.cutsceneState = 4
            data.states.npcs["blacksmith"] = data.states.npcs["blacksmith"] + 1
            talk:start()
        end
    end

    if curtain.type == "fade" then
        flux.to(self, 0.4, {alpha = 0}):ease("linear"):oncomplete(onFinish)
    elseif curtain.type == "quickFade" then
        flux.to(self, 0.2, {alpha = 0}):ease("linear"):oncomplete(onFinish)
    elseif curtain.type == "flashback" then
        flux.to(self, 2.5, {alpha = 0}):ease("linear"):oncomplete(onFinish)
    elseif curtain.type == "shine" then
        flux.to(self, 2.5, {alpha = 0}):ease("linear"):oncomplete(
            function()
                player.state = 0
                cam:fluxUnzoom(0.6)
                onFinish()
            end
        )
    elseif curtain.type == "left" then
        curtain.x = -10
        curtain.y = -10
        local dest = curtain.width + 10
        flux.to(self, curtain.dirTime, {x = dest}):ease("quadin"):oncomplete(onFinish)
    elseif curtain.type == "right" then
        curtain.x = -10
        curtain.y = -10
        local dest = -1 * curtain.width - 10
        flux.to(self, curtain.dirTime, {x = dest}):ease("quadin"):oncomplete(onFinish)
    elseif curtain.type == "down" then
        curtain.x = -10
        curtain.y = -10
        local dest = -1 * curtain.height - 10
        flux.to(self, curtain.dirTime, {y = dest}):ease("quadin"):oncomplete(onFinish)
    elseif curtain.type == "up" then
        curtain.x = -10
        curtain.y = -10
        local dest = curtain.height + 10
        flux.to(self, curtain.dirTime, {y = dest}):ease("quadin"):oncomplete(onFinish)
    else -- circle
        flux.to(self, 1, {rad = 0}):ease("quadin"):oncomplete(onFinish)
    end
end

function curtain:update(dt)
    if self.state == 2 then -- if opening, then force the cam no damp. No dampness whatsoever. It's like a desert while the curtain is opening, there's so little dampness
        cam.smoother = Camera.smooth.none()
    end
end
