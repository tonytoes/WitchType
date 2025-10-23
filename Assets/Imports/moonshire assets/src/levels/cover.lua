cover = {} -- simple vignette covering the screen

function cover:init()
    cover.state = 0
    cover.id = "whiteout"
    cover.class = "fade"
    cover.timer = 0
    cover.alpha = 0
    cover.color = "white"
    cover.inTime = 0.5
    cover.middleTime = 1
    cover.outTime = 0.5
    cover.startDelay = 0

    cover.startEvents = nil
    cover.middleEvents = nil
    cover.finishEvents = nil
end

function cover:setStats(id)
    cover.id = id
    cover.class = "fade"
    cover.color = "black"
    cover.rad = 0
    cover.alpha = 0

    if id == "daitenguVictory" then
        cover.color = "black"
        cover.class = "circle"
        cover.inTime = 1
        cover.middleTime = 0.2
        cover.outTime = 1
        cover.startDelay = 1.5

        cover.startEvents = {
            setCutsceneTimer = 6,
        }

        cover.middleEvents = {
            resetNpcs = true,
            cancelCutscene = true,
        }

        cover.finishEvents = {
            talkToNpc = "soldierLeader" -- warp player to NPC, prep them to talk
        }

    end

    if id == "soldierLeaderLeave" then
        cover.color = "black"
        cover.class = "circle"
        cover.inTime = 1
        cover.middleTime = 0.2
        cover.outTime = 1

        cover.middleEvents = {
            resetNpcs = true,
        }

        cover.finishEvents = {
            resetElevators = true,
            playerState = 0,
            endDialogue = true,
        }

    end

    if id == "eyeris" then
        cover.color = "black"
        cover.class = "fade"
        cover.inTime = 0.1
        cover.middleTime = 2
        cover.outTime = 2

        cover.startEvents = {
            setCutsceneTimer = 6,
        }

        cover.middleEvents = {
            changeMap = "caves/c_eyeris",
            playerX = 816,
            camX = 816,
            playerY = 566,
            camY = 566,
        }

        cover.finishEvents = {
        }

    end

    if id == "cloudBossStart" then
        cover.color = "white"
        cover.inTime = 0.15
        cover.middleTime = 1.5
        cover.outTime = 2

        cover.startEvents = {
            soundEffect = sounds.misc.cinematicHit
        }

        cover.middleEvents = {
            triggerBoss = true,
            setCutsceneTimer = 4,
            shiftFocusY = 16,
            setBackground = "cloudBoss2",
            setFakeLayer = false,
        }

        cover.finishEvents = {
            music = bgm.cloudBoss
        }
    end

    if id == "cloudBossReward" then
        cover.color = "white"
        cover.inTime = 0.15
        cover.middleTime = 0.5
        cover.outTime = 1

        cover.startEvents = {
            soundEffect = sounds.misc.cinematicHit
        }

        cover.middleEvents = {
            triggerBoss = true,
            setCutsceneTimer = 4,
            spawnLoot = "lightning",
            destroyParticles = true,
            setFakeLayer = true,
            setBackground = "cloudBoss1",
        }

        cover.finishEvents = {
        }
    
    end

    if id == "coreActivated" then
        cover.color = "white"
        cover.inTime = 2
        cover.middleTime = 1
        cover.outTime = 2
        cover.startDelay = 1.5

        cover.startEvents = {
            soundEffect = sounds.misc.cinematicHit
        }

        cover.middleEvents = {
            setCutsceneTimer = 3,
            setFakeLayer = true,
            setBackground = "cloudDungeon",
        }

        cover.finishEvents = {
            music = bgm.cloudDungeon
        }
    end

    if id == "blacksmith" then
        cover.color = "black"
        cover.class = "fade"
        cover.inTime = 0.3
        cover.middleTime = 2
        cover.outTime = 0.3

        cover.startEvents = { }

        cover.middleEvents = {
            soundEffect = sounds.misc.smith,
            spawnMapWeapon = "greatsword",
        }

        cover.finishEvents = {
            talkToNpc = "blacksmith"
        }

    end
end

function cover:start(id)
    cover:init()
    cover:setStats(id)
    if cover.startDelay then
        cover.state = 0.5
        cover.timer = cover.startDelay
    else
        cover:trueStart()
    end    
end

function cover:trueStart()
    cover.state = 1
    local timein = cover.inTime

    if self.class == "fade" then
        flux.to(cover, timein, {alpha = 1}):ease("linear"):oncomplete(function() cover:middle() end)
    elseif self.class == "circle" then
        cover.alpha = 1
        local destRad = curtain:getRad()
        flux.to(cover, timein, {rad = destRad}):ease("linear"):oncomplete(function() cover:middle() end)
    end
    cover:handleEvents()
end

function cover:middle()
    cover.state = 2
    cover.timer = cover.middleTime
    talk:checkAllNpcRelays()
    cover:handleEvents()
end

function cover:finish()
    cover.state = 3
    local timeout = cover.outTime

    if self.class == "fade" then
        flux.to(cover, timeout, {alpha = 0}):ease("linear"):oncomplete(function() cover:done() end)
    elseif self.class == "circle" then
        flux.to(cover, timeout, {rad = 0}):ease("linear"):oncomplete(function() cover:done() end)
    end

    cover:handleEvents()
end

function cover:handleEvents()
    local eventList = {}
    if cover.state == 1 then
        events:start(cover.startEvents)
    elseif cover.state == 2 then
        events:start(cover.middleEvents)
    elseif cover.state == 3 then
        events:start(cover.finishEvents)
    end
end

function cover:done()
    cover.state = 0
end

function cover:update(dt)
    if self.state then
        self.timer = self.timer - dt
        if self.timer < 0 then self.timer = 0 end
        if self.state == 0.5 and self.timer <= 0 then -- start delay
            self:trueStart()
        end
        if self.state == 2 and self.timer <= 0 then -- middle
            self:finish()
        end
    end
end

function cover:draw()
    if self.state then
        if self.color == "black" then
            love.graphics.setColor(0, 0, 0, self.alpha)
        elseif self.color == "white" then
            love.graphics.setColor(1, 1, 1, self.alpha)
        end

        if self.class == "fade" then
            love.graphics.rectangle("fill", -10, -10, love.graphics.getWidth() + 20, love.graphics.getHeight() + 20)
        elseif self.class == "circle" then
            love.graphics.circle("fill", love.graphics.getWidth()/2, love.graphics.getHeight()/2, self.rad)
        end
    end
end
