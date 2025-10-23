cutscene = {}

function cutscene:init()
    cutscene.id = ""
    cutscene.state = 0
    cutscene.timer = 0
    cutscene.camX = 0
    cutscene.camY = 0
    cutscene.barrierX = 0 -- used for barrier fades (very common cutscene)
    cutscene.barsVal = 0
    
    cutscene.reward = {}
end

function cutscene:start(id, args)
    if self.state > 0 then -- cutscene is already in progress, switching to this new one
        self.timer = -1
    else
        self.barsVal = 0
        cam:fluxZoom(nil, 1)
        self.timer = 1
        player:cutscene(player.lastMoveDir)
        cam.smoother = Camera.smooth.damped(2) -- make it take longer

        if args and args.skipBars then
            -- do nothing
        else
            flux.to(self, 0.5, {barsVal = 1}):ease("sineout")
        end
    end

    self.id = id
    self.state = 1
    self.args = args

    -- I know this is stupid, but at least it tells me what options I have for args
    self.lookAtX = player:getX() if args and args.lookAtX then self.lookAtX = args.lookAtX end
    self.lookAtY = player:getY() if args and args.lookAtY then self.lookAtY = args.lookAtY end
    self.lookDur = 0.5 if args and args.lookDur then self.lookDur = args.lookDur end
    self.pauseDur = 0.5 if args and args.pauseDur then self.pauseDur = args.pauseDur end
    self.spawnClass = nil if args and args.spawnClass then self.spawnClass = args.spawnClass end
    self.spawnId = nil if args and args.spawnId then self.spawnId = args.spawnId end
    self.nextScene = nil if args and args.nextScene then self.nextScene = args.nextScene end
    self.finishMusic = nil if args and args.finishMusic then self.finishMusic = args.finishMusic end
    self.restartMusic = nil if args and args.restartMusic then self.restartMusic = args.restartMusic end -- boolean, determines if the cutscene restarts the map's music when it finishes
    self.enemyIntroId = nil if args and args.enemyIntroId then self.enemyIntroId = args.enemyIntroId end -- triggers the intro of this enemy
    self.reward = nil if args and args.reward then self.reward = args.reward end -- reward to spawn at the end of the cutscene

    if args and args.bossChest then
        if gameMap.layers["Chests"] then
            for i, obj in ipairs(gameMap.layers["Chests"].objects) do
                if (args.bossChest and obj.properties and obj.properties.bossCheck and not obj.properties.alt) then -- alt is when there's two boss chests
                    self.reward = {
                        x=obj.x,
                        y=obj.y,
                        rewardType="chest",
                        id=obj.name,
                        args=obj.properties
                    }
                    self.lookAtX = obj.x
                    self.lookAtY = obj.y
                end
            end
        end
    end

    if args and args.eyerisReward then
        local pn = pins:getByName('eyerisBossPin')
        self.reward = {
            x=pn.x,
            y=pn.y,
            rewardType="soil",
            id='eyeris'
        }
        self.lookAtX = pn.x
        self.lookAtY = pn.y
    end

    if args and args.challengeChest then
        if args.reward then -- reward is passed in, as opposed to bosschests above
            self.reward = args.reward
            self.lookAtX = args.reward.x
            self.lookAtY = args.reward.y
        end
    end

    if args and args.challengeId then self.challengeId = args.challengeId else self.challengeId = nil end
end

function cutscene:update(dt)
    -- Update logic for all cutscenes
    if self.state <= 0 then return end

    if self.timer > 0 then
        self.timer = self.timer - dt
    end

    if self.id == "lookAtThis" then
        if self.timer < 0 then
            self.state = self.state + 1
            if self.state == 2 then
                player.focusX = self.lookAtX
                player.focusY = self.lookAtY
                cam:fluxZoom("focusFocus", 1.5)
                self.timer = self.lookDur
                if self.enemyIntroId then
                    enemies:getByUniqueId(self.enemyIntroId):startIntro()
                end
            elseif self.state == 3 then
                if self.reward or self.spawnClass then
                    self:spawnReward(true) -- try to spawn a reward
                elseif self.pauseDur then
                    self.timer = self.pauseDur
                else
                    self:returnToPlayer()
                end
            elseif self.state == 4 then
                self:returnToPlayer()
                self.timer = 0.5
            end
        end
    end

    if self.id == "quickLook" then
        if self.state == 1 then
            player.focusX = self.lookAtX
            player.focusY = self.lookAtY
            cam:fluxZoom("focusFocus", 0.75)
            self.timer = self.lookDur
            self.state = 2
        elseif self.state == 2 then
            if self.timer < 0 then
                if self.reward or self.spawnClass then
                    self:spawnReward(true) -- try to spawn a reward
                    self.state = 3
                else
                    self:returnToPlayer()
                end
            end
        elseif self.state == 3 then
            if self.timer < 0 then
                self:returnToPlayer()
            end
        end
    end

    if self.id == "followPlayer" then
        player.focusX = player:getX()
        player.focusY = player:getY()
        if self.state == 1 then
            cam:fluxZoom("focusFocus", 0.75)
            self.timer = self.lookDur
            self.state = 2
        elseif self.state == 2 then
            if self.timer < 0 then
                self:returnToPlayer()
            end
        end
    end

    if self.id == "slowPan" then
        if self.timer < 0 then
            self.state = self.state + 1
            if self.state == 2 then
                cam.smoother = Camera.smooth.damped(1.5) -- make it take longer
                player.focusX = self.lookAtX
                player.focusY = self.lookAtY
                cam:fluxZoom("focusFocus", 1.5)
                self.timer = self.lookDur
            elseif self.state == 3 then
                self:returnToPlayer()
                self.timer = 0.25
            end
        end
    end

    if self.id == "slowPanThereAndBack" then
        if self.timer < 0 then
            self.state = self.state + 1
            if self.state == 2 then
                cam.smoother = Camera.smooth.damped(1.5) -- make it take longer
                player.focusX = self.lookAtX
                player.focusY = self.lookAtY
                cam:fluxZoom("focusFocus", 1.5)
                self.timer = self.lookDur
            elseif self.state == 3 then -- go back to looking at the challenge spot
                cam.smoother = Camera.smooth.damped(1.05) -- make it take longer
                local chal = challenges:getById(self.challengeId)
                self.lookAtX = chal.x
                self.lookAtY = chal.y
                player.focusX = self.lookAtX
                player.focusY = self.lookAtY
                self.timer = self.lookDur*2

                if chal.id == "ruinsFight" then
                    removeTable(npcs)
                    weapons:removeNpcWeapons()
                    npcs:spawn("soldierLeaderRuins", 530, 368, {simpleTriggerTimer=3.5})
                    npcs:spawn("soldierRuins1", 648, 348, {simpleTriggerTimer=3.8})
                    npcs:spawn("soldierRuins2", 506, 330, {simpleTriggerTimer=4.1})
                    player:setPosition(610, 378)
                    player:look(-1)
                    player.lastMoveDir = vector(-1, -1)
                end
            elseif self.state == 4 then
                self:returnToPlayer()
                self.timer = 0.25
            end
        end
    end

    if self.state >= 1000 then
        if self.timer < 0 then
            self:finish()
        end
    end
end

function cutscene:spawnReward(justStart)
    if self.pauseDur then self.timer = self.pauseDur end
    if self.reward then
        if self.reward.rewardType == "chest" then
            if justStart then
                effects2:spawn("spawnMagic", self.lookAtX, self.lookAtY)
                return -- the spawn magic will re-call this function
            end

            spawnChest(self.reward.x, self.reward.y, self.reward.id, self.reward.args)
            spawnBlast(self.reward.x, self.reward.y, 64, nil, 0.3)

            if self.reward.id == "swampCaveFight" or self.reward.id == "forestCaveFight2" or self.reward.id == "forestCaveBoss2" then
                weapons:spawn("torch", self.lookAtX - 24, self.lookAtY + 6)
                weapons:spawn("torch", self.lookAtX + 24, self.lookAtY + 6)
            end
        end

        if self.reward.rewardType == "saveSpot" then
            if justStart then
                effects:spawn("sunflowerGrow", self.lookAtX, self.lookAtY)
                return
            end
            spawnSaveSpot("save", self.lookAtX, self.lookAtY)
        end

        if self.reward.rewardType == "platforms" then
            platforms:resetForChallenge(self.reward.id)
        end

        if self.reward.rewardType == "soil" then
            if self.reward.id == "eyeris" then
                blasts:standard(self.lookAtX, self.lookAtY, 2)
                soils:spawn('eyeris', self.lookAtX, self.lookAtY)
                weapons:spawn('torch', self.lookAtX-52, self.lookAtY)
                weapons:spawn('torch', self.lookAtX+52, self.lookAtY)
                for i=1,10 do
                    local ar = { dir=vector(math.random(-1,1), math.random(-1,1)):normalized() * math.random(16, 42) }
                    resources:spawn('seed', self.lookAtX, self.lookAtY, ar)
                end
            end
        end

        if self.reward.extraCutsceneTime then
            self.timer = self.timer + self.reward.extraCutsceneTime
        end

        self.reward = nil -- so it can't happen a second time
    end
end

function cutscene:returnToPlayer()
    -- before returning to Player, we're going to check if there's a nextScene
    if self.nextScene then
        self:start(self.nextScene.id, self.nextScene.args)
        return nil
    end

    -- assume focusFocus has already started
    cam.smoother = Camera.smooth.damped(4)
    cam:fluxUnzoom(1)
    flux.to(self, 0.5, {barsVal = 0}):ease("sineout")
    self.state = 1000
    self.timer = 0.4

    if self.restartMusic then -- restart the map's music
        startMusic(bgm[gameMap.properties.music], true)
    end

    if self.finishMusic then -- manually provided music that will be played
        startMusic(self.finishMusic, true)
    end
end

function cutscene:basicFinish()
    self.state = 0
    self.timer = 0
    if self.barsVal > 0 then
        flux.to(self, 0.5, {barsVal = 0}):ease("sineout")
    end
end

function cutscene:finish()
    cutscene:basicFinish()
    player.state = 0
    cam.smoother = Camera.smooth.damped(8) -- return to default
end

function cutscene:draw()
    -- draw the black bars
    local barSize = 14
    love.graphics.setColor(0.075, 0.075, 0.075, 1)
    love.graphics.rectangle("fill", -10, -1, windowWidth+20, barSize*self.barsVal*scale)
    love.graphics.rectangle("fill", -10, windowHeight+1, windowWidth+20, -1*barSize*self.barsVal*scale)
end
