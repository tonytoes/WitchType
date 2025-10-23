challenges = {}

function challenges:init()
    challenges.rippleSpawnList = {}
    challenges.rippleSpawnTimer = 0
    challenges.rippleSpawnIndex = 0
end

function spawnChallenge(id, x, y, args)

    if data.states.challenges[id] then
        if args and args.selfChest then
            spawnChest(x, y, id)
            return -- challenge has already been completed
        end
        if args and args.selfSave then
            spawnSaveSpot("save", x, y)
            return -- challenge has already been completed
        end
    end

    local challenge = {}
    challenge.id = id
    challenge.x = x
    challenge.y = y
    challenge.dead = false
    challenge.args = args
    challenge.state = 0
    challenge.xtra = 0
    challenge.timer = 0.2 -- small buffer when the map starts
    challenge.winTimer = 0
    challenge.score = 0
    challenge.triggerType = "nearby"
    challenge.triggerVal = 32
    challenge.waves = {}
    challenge.wave = 1
    challenge.hasReward = true
    challenge.reward = nil
    challenge.silentComplete = true
    challenge.mySceneType = nil

    if args then -- trigger X and Y are used for proximity check, which is needed for MOST challenges
        if args.triggerX then challenge.triggerX = args.triggerX end
        if args.triggerY then challenge.triggerY = args.triggerY end
        if args.triggerType then challenge.triggerType = args.triggerType end
        if args.triggerVal then challenge.triggerVal = args.triggerVal end
        if args.selfChest then challenge.selfChest = true end
        if args.selfSave then challenge.selfSave = true end
        if args.maxDist then challenge.maxDist = args.maxDist end
        if args.sceneType then challenge.mySceneType = args.sceneType end
    end

    challenge.waves = challenges:getWaves(challenge) -- needed for some other non-wave values

    function challenge:checkTrigger()
        if not (player.state == 0 or player.state == 0.5) then return false end

        -- FIRST, if possible, do a large proximity check
        -- because no challenge should activate if you're nowhere nearby
        if self.triggerX and self.triggerY then
            if distanceBetween(player:getX(), player:getY(), self.triggerX, self.triggerY) > 128 then
                return false -- the player is nowhere near the trigger point
            end
        end

        local distToPlayer = distanceBetween(player:getX(), player:getY(), self.x, self.y)
        if self.maxDist and distToPlayer > self.maxDist then return false end
        if self.triggerType == "nearby" then
            if distanceBetween(player:getX(), player:getY(), self.x, self.y) < self.triggerVal then return true end
        elseif self.triggerType == "below" then
            if player:getY() > self.triggerVal then return true end
        elseif self.triggerType == "above" then
            if player:getY() < self.triggerVal then return true end
        elseif self.triggerType == "right" then
            if player:getX() > self.triggerVal then return true end
        elseif self.triggerType == "left" then
            if player:getX() < self.triggerVal then return true end
        end
        return false
    end

    if id == "balloonGame" then
        challenge.state = 4 -- 1 second before countdown
        challenge.timer = 1
        player.state = 0
	    cam:fluxUnzoom(0.6)
        dialogue.talking = false

        dj.fade(1)

        loadMap("misc/ocean", 0, 0)
        local pn = pins:getByName("balloonCenter")
        player:setPosition(pn.x, pn.y)
	    weapons:spawn("boomerang", pn.x - 32, pn.y)
	    weapons:spawn("boomerang", pn.x + 32, pn.y)

        function challenge:update(dt)
            self.timer = self.timer - dt
            if self.state < 10 then
                if self.timer < 0 then
                    self.state = self.state - 1
                    self.timer = 1
                    if self.state == 0 then
                        balloonGameStart()
                        self.state = 10 -- game is now active
                        self.timer = 30
                        dj.play(sounds.misc.countdownFinal, "static", "effect")
                        startMusic(bgm.minigame, true)
                    else
                        dj.play(sounds.misc.countdown, "static", "effect")
                    end
                end
            end
            if self.state == 10 then
                if #enemies < 1 or self.timer < 0 then
                    local stopGame = true
                    if self.timer < 0 then
                        self.winTimer = 9999
                    end

                    if self.xtra < 3 and #enemies < 1 then
                        stopGame = false
                        self.xtra = self.xtra + 1
                        balloonGameStart(self.xtra)
                    end

                    if stopGame then                    
                        -- challenge complete
                        dj.play(sounds.misc.challengeComplete, "static", "effect")
                        self.state = 11
                        self.timer = 2
                    end
                else
                    self.winTimer = self.winTimer + dt
                end
            end
            if self.state == 11 then
                if self.timer < 0 then
                    self.state = 12
                    self.dead = true
                    player.specialStart = 4 -- 'quickTalk' makes it so the player will talk to whoever is closest as soon as the map loads
                    player.winTimer = self.winTimer

                    if not data.states.challenges["balloonGame"] then
                        if self.winTimer > 0 then
                            data.states.challenges["balloonGame"] = self.winTimer
                            data.states.npcs["balloonGame"] = 12 -- finished for the first time
                        end
                    else
                        if self.winTimer > 0 then
                            if self.winTimer < data.states.challenges["balloonGame"] then
                                data.states.challenges["balloonGame"] = self.winTimer
                                data.states.npcs["balloonGame"] = 14 -- new personal best!
                            else
                                data.states.npcs["balloonGame"] = 13 -- finished, but not PB
                            end
                        end
                    end
                    
                    if self.winTimer > 999 then
                        data.states.npcs["balloonGame"] = 11 -- fail
                    end

                    local pn = pins:getByName("balloonCenter")
                    curtain:call("3_town", 490, 518, "circle")
                end
            end
        end

        function challenge:draw()
            local pn = pins:getByName("balloonCenter")
            if not pn then return end
            love.graphics.setFont(fonts.misc.minigame)
            setWhite()
            if self.state <= 3 then
                local text = "3"
                if self.state == 2 then text = "2" elseif self.state == 1 then text = "1" elseif self.state == 0 then text = "Start!" end
                love.graphics.printf(text, pn.x-222, pn.y-40, 444, "center")
            end
            if self.state == 10 then
                local togo = #enemies
                if self.xtra == 1 then togo = togo + 4 end
                if self.xtra == 0 then togo = togo + 8 end
                text = togo .. " to go!"
                if self.timer > 29 then text = "Start!" end -- this is hacky, oh well
                love.graphics.printf(text, pn.x-222, pn.y-40, 444, "center")
                love.graphics.printf(disp_time(self.winTimer, 3), pn.x-222, pn.y+12, 444, "center") -- originally put self.timer in here, counting down. Now it counts up
            end
            if self.state == 11 or self.state == 12 then
                text = "Finish!"
                if #enemies > 0 then text = "Too slow!" end -- this is hacky, oh well
                love.graphics.printf(text, pn.x-222, pn.y-40, 444, "center")
                local tm = 30 -- losing time
                if self.winTimer > 0 and self.winTimer < 999 then tm = self.winTimer end
                love.graphics.printf(disp_time(tm, 3), pn.x-222, pn.y+12, 444, "center")
            end
        end
    end

    if id:lower():find('fight') then
        if data.states.challenges[id] then
            -- spawn some minor enemies instead, just for gigs
            return -- challenge has already been completed
        end

        challenges:setFight(challenge)
    end

    table.insert(challenges, challenge)
end

function challenges:setFight(challenge)

    challenge.timer = 0.25 -- small buffer when the map starts, since things are still loading in

    function challenge:update(dt)
        if self.timer > 0 then self.timer = self.timer - dt end
        if self.timer < 0 then self.timer = 0 end

        if self.state == 0 then -- Small wait before doing anything
            
            if self.timer <= 0 then
                -- set the trigger type from the default
                -- you can set this from Tiled, but forestFight has conditional trigger
                if self.id == "forestFight" then
                    -- first, check if the player is entering from the south, or the north
                    if player:getX() < self.x then
                        self.triggerType = "right"
                        self.triggerVal = 328
                    else
                        self.triggerType = "below"
                        self.triggerVal = 488
                    end
                end
                self.state = 0.5
            end

        elseif self.state == 0.5 then -- waiting on the trigger

            if self:checkTrigger() then
                self.state = 1
                self.timer = 1.5 -- 1.5 seconds before first enemy is spawned

                local sceneType = "lookAtThis"
                local cx = self.x
                local cy = self.y
                local dur = 2

                if self.id == "forestCaveFight" then
                    sceneType = "quickLook"
                    cx = 600 cy = 808 dur = 1
                    self.timer = 1
                end

                if self.id == "forestFight1" then
                    sceneType = "none"
                end

                if self.id == "ruinsFight" then
                    sceneType = "slowPanThereAndBack"
                    cy = cy - 164
                    dur = 3
                end

                if self.mySceneType then sceneType = self.mySceneType end

                walls:undelay("blockade")
                if self.music then dj.fade(1) end

                if sceneType == "none" then self.skipCutscene = true end

                if not self.skipCutscene then
                    self.sceneType = sceneType
                    cutscene:start(sceneType, {lookAtX=cx, lookAtY=cy, lookDur=dur, finishMusic=self.music, challengeId=self.id})
                else
                    self.state = 1
                    self.timer = -1
                end
            end

        elseif self.state == 1 then -- zooming to challenge position

            if self.timer <= 0 then -- spawn the first enemy

                self.wave = 1
                self.waves = challenges:getWaves(self)

                -- custom spawn wave 1 for the following, otherwise do standard spawn
                if self.id == "cloudFightWest" then
                    spawnEnemy(self.x - 112, self.y, "kotengu", {challengeId=self.id, destX = self.x + 64, destY = self.y})
                elseif self.id == "ruinsFight" then
                    spawnEnemy(self.x, self.y, "daitengu", {challengeId=self.id})
                elseif self.instaWave then
                    local enemyList = self.waves[self.wave]
                    for i=1,#enemyList do
                        local en = enemyList[i]
                        spawnEnemy(en.x, en.y, en.class, {challengeId=self.id})
                    end
                else
                    -- regular spawn of enemies
                    rippleSpawnEnemies(self.waves[self.wave])
                end
                
                self.state = 2
            end

        elseif self.state == 2 then -- fight officially started and we're checking for score and spawning waves

            if self.wave and self.waves and self.waves[self.wave] and self.score >= #self.waves[self.wave] then
                -- wave complete!
                self.wave = self.wave + 1
                self.score = 0
                if self.wave <= #self.waves then rippleSpawnEnemies(self.waves[self.wave]) end -- spawn next wave (if necessary)

                if self.wave >= #self.waves then -- just spawned the last wave, move to next state
                    self.state = 3
                end
            end

        elseif self.state == 3 then -- final wave has been spawned, waiting for score to pass threshold

            if not self.waves[self.wave] or self.score >= #self.waves[self.wave] then -- challenge complete
                self.state = 4
                self.dead = true
                walls:clearBlockades()
                dj.play(sounds.misc.success, "static", "effect", 1)
                data.states.challenges[self.id] = true

                local reward = nil
                if self.reward then reward = self.reward
                elseif self.selfChest then
                    reward = {
                        x=self.x,
                        y=self.y,
                        rewardType="chest",
                        id=self.id
                    }
                elseif self.selfSave then
                    reward = {
                        x=self.x,
                        y=self.y,
                        rewardType="saveSpot",
                        id=self.id
                    }
                elseif gameMap.layers["Chests"] then -- automatically looks around for any chests that are rewards for this challenge
                    for i, obj in ipairs(gameMap.layers["Chests"].objects) do
                        if obj.properties and obj.properties.challengeCheck and obj.properties.challengeCheck == self.id then -- alt is when there's two boss chests
                            reward = {
                                x=obj.x,
                                y=obj.y,
                                rewardType="chest",
                                id=obj.name,
                                args=obj.properties
                            }
                        end
                    end
                end

                if reward then -- if there's a reward, start the cutscene
                    cutscene:start("lookAtThis", {restartMusic=true, reward=reward, challengeChest=true, pauseDur=2 })
                end

                cutscene.restartMusic = true
            end
            
        end
    end

end

function challenges:update(dt)
    for _,s in ipairs(challenges) do
        if s.update then s:update(dt) end
    end

    local i = #challenges
    while i > 0 do
        if challenges[i].dead then
            table.remove(challenges, i)
        end
        i = i - 1
    end

    if self.rippleSpawnList and self.rippleSpawnIndex > 0 then -- ripple spawn in progress
        self.rippleSpawnTimer = self.rippleSpawnTimer - dt
        if self.rippleSpawnTimer < 0 then
            -- spawn enemy at this index, and THEN increase index
            local en = self.rippleSpawnList[self.rippleSpawnIndex]
            --spawnEnemy(en.x, en.y, en.class, {challenge=true, challengeId=self.id})
            -- if the cutscene is still in progress, the enemies wait to attack until the cutscene is over
            effects2:spawn("enemySpawn3", en.x, en.y, {enemy=en})
            sem:playSound(sounds.enemies.sparkSpawn, {volume=0.1, pitchRand=0.05})
            self.rippleSpawnTimer = 0.3
            self.rippleSpawnIndex = self.rippleSpawnIndex + 1
            if self.rippleSpawnIndex > #self.rippleSpawnList then
                self.rippleSpawnList = {}
                self.rippleSpawnIndex = 0
                self.rippleSpawnTimer = 0
            end
        end
    end
end

function challenges:draw()
    for _,s in ipairs(challenges) do
        if s.draw then s:draw() end
    end
end

function challenges:getById(id)
    for _,s in ipairs(challenges) do
        if s.id == id then return s end
    end
    return nil
end

function rippleSpawnEnemies(enemyList)
    challenges.rippleSpawnList = enemyList
    challenges.rippleSpawnTimer = -1 -- spawn first enemy immediately
    challenges.rippleSpawnIndex = 1 -- will be set to 0 after this is done
end

function balloonGameStart(val)

    local pn = pins:getByName("balloonCenter")
    local newSpd = 250
    local blastVal = 2
    local wgap = 96
    local hgap = 88

    if not val then
        spawnEnemy(pn.x - wgap, pn.y + hgap, "balloon", {x2=pn.x-wgap, y2=pn.y-hgap, spawnBlast=blastVal, walkSpeed=newSpd}) -- left edge (close)
        spawnEnemy(pn.x + wgap, pn.y - hgap, "balloon", {x2=pn.x+wgap, y2=pn.y+hgap, spawnBlast=blastVal, walkSpeed=newSpd}) -- right edge (close)
        spawnEnemy(pn.x - wgap, pn.y - hgap, "balloon", {x2=pn.x+wgap, y2=pn.y-hgap, spawnBlast=blastVal, walkSpeed=newSpd}) -- top edge (close)
        spawnEnemy(pn.x + wgap, pn.y + hgap, "balloon", {x2=pn.x-wgap, y2=pn.y+hgap, spawnBlast=blastVal, walkSpeed=newSpd}) -- bottom edge (close)
    elseif val == 1 then -- make them get faster!!
        newSpd = 350
        dj.play(sounds.misc.ascendSoft, "static", "effect")
        spawnEnemy(pn.x - wgap, pn.y - hgap, "balloon", {x2=pn.x-wgap, y2=pn.y+hgap, spawnBlast=blastVal, walkSpeed=newSpd}) -- left edge (close)
        spawnEnemy(pn.x + wgap, pn.y + hgap, "balloon", {x2=pn.x+wgap, y2=pn.y-hgap, spawnBlast=blastVal, walkSpeed=newSpd}) -- right edge (close)
        spawnEnemy(pn.x + wgap, pn.y - hgap, "balloon", {x2=pn.x-wgap, y2=pn.y-hgap, spawnBlast=blastVal, walkSpeed=newSpd}) -- top edge (close)
        spawnEnemy(pn.x - wgap, pn.y + hgap, "balloon", {x2=pn.x+wgap, y2=pn.y+hgap, spawnBlast=blastVal, walkSpeed=newSpd}) -- bottom edge (close)
    elseif val == 2 then
        newSpd = 450
        dj.play(sounds.misc.ascendSoft, "static", "effect")
        spawnEnemy(pn.x - wgap, pn.y + hgap, "balloon", {x2=pn.x-wgap, y2=pn.y-hgap, spawnBlast=blastVal, walkSpeed=newSpd}) -- left edge (close)
        spawnEnemy(pn.x + wgap, pn.y - hgap, "balloon", {x2=pn.x+wgap, y2=pn.y+hgap, spawnBlast=blastVal, walkSpeed=newSpd}) -- right edge (close)
        spawnEnemy(pn.x - wgap, pn.y - hgap, "balloon", {x2=pn.x+wgap, y2=pn.y-hgap, spawnBlast=blastVal, walkSpeed=newSpd}) -- top edge (close)
        spawnEnemy(pn.x + wgap, pn.y + hgap, "balloon", {x2=pn.x-wgap, y2=pn.y+hgap, spawnBlast=blastVal, walkSpeed=newSpd}) -- bottom edge (close)
    end
end

function challenges:getWaves(c) -- c is challenge

    if c.id == "waterfallFight" then

        c.music = bgm.minigame
        local wave1 = { {x=c.x, y=c.y, class="hornetSoldier", args={challengeId=c.id}} }
        local wave2 = {
            {x=c.x+92, y=c.y-40, class="hornetWorker", args={challengeId=c.id}},
            {x=c.x-92, y=c.y-40, class="hornetWorker", args={challengeId=c.id}},
            {x=c.x+92, y=c.y+40, class="hornetWorker", args={challengeId=c.id}},
            {x=c.x-92, y=c.y+40, class="hornetWorker", args={challengeId=c.id}},
        }
        local wave3 = {
            {x=c.x+92, y=c.y-40, class="hornetWorker", args={challengeId=c.id}},
            {x=c.x-92, y=c.y-40, class="hornetWorker", args={challengeId=c.id}},
            {x=c.x+92, y=c.y+40, class="hornetWorker", args={challengeId=c.id}},
            {x=c.x-92, y=c.y+40, class="hornetWorker", args={challengeId=c.id}},
            {x=c.x, y=c.y, class="hornetSoldier", args={challengeId=c.id}}
        }
        local wave4 = {
            {x=c.x-80, y=c.y, class="hornetSoldier", args={challengeId=c.id}},
            {x=c.x+80, y=c.y, class="hornetSoldier", args={challengeId=c.id}}
        }

        return { wave1, wave2, wave3, wave4 }
    end

    if c.id == "swampFight" then

        c.music = bgm.minigame
        local wave1 = { {x=c.x, y=c.y, class="hornetSoldier", args={challengeId=c.id}} }
        local wave2 = {
            {x=c.x+92, y=c.y-40, class="hornetWorker", args={challengeId=c.id}},
            {x=c.x-92, y=c.y-40, class="hornetWorker", args={challengeId=c.id}},
            {x=c.x+92, y=c.y+40, class="hornetWorker", args={challengeId=c.id}},
            {x=c.x-92, y=c.y+40, class="hornetWorker", args={challengeId=c.id}},
        }
        local wave3 = {
            {x=c.x+92, y=c.y, class="hornetWorker", args={challengeId=c.id}},
            {x=c.x-92, y=c.y, class="hornetWorker", args={challengeId=c.id}},
            {x=c.x, y=c.y, class="hornetSoldier", args={challengeId=c.id}}
        }
        local wave4 = {
            {x=c.x+92, y=c.y-40, class="hornetWorker", args={challengeId=c.id}},
            {x=c.x-92, y=c.y-40, class="hornetWorker", args={challengeId=c.id}},
            {x=c.x+92, y=c.y+40, class="hornetWorker", args={challengeId=c.id}},
            {x=c.x-92, y=c.y+40, class="hornetWorker", args={challengeId=c.id}},
        }

        return { wave1, wave2, wave3, wave4 }
    end

    if c.id == "forestFight1" then

        c.instaWave = true
        local wave1 = {
            {x=c.x-96, y=c.y+48, class="carnivorock", args={challengeId=c.id}},
            {x=c.x-48, y=c.y+64, class="carnivorock", args={challengeId=c.id}},
        }
        local wave2 = {
            {x=c.x-64, y=c.y, class="slimeRed", args={challengeId=c.id}},
            {x=c.x+64, y=c.y, class="slimeRed", args={challengeId=c.id}},
        }
        local wave3 = {
            {x=c.x-64, y=c.y-32, class="carnivorock", args={challengeId=c.id}},
            {x=c.x+64, y=c.y-32, class="carnivorock", args={challengeId=c.id}},
            {x=c.x, y=c.y+32, class="carnivorock", args={challengeId=c.id}},
        }

        return { wave1, wave2, wave3 }
    end

    if c.id == "forestCaveFight" then

        c.instaWave = true
        local wave1 = {
            {x=c.x-48, y=c.y-48, class="eyeRed", args={challengeId=c.id}},
            {x=c.x+48, y=c.y-48, class="eyeRed", args={challengeId=c.id}},
        }
        local wave2 = {
            {x=c.x, y=c.y-64, class="eyeRed", args={challengeId=c.id}},
            {x=c.x-64, y=c.y+16, class="eyeRed", args={challengeId=c.id}},
            {x=c.x+48, y=c.y+80, class="eyeRed", args={challengeId=c.id}},
        }

        return { wave1, wave2, wave3 }
    end

    if c.id == "swampCaveFight" then

        c.instaWave = true
        local wave1 = {
            {x=c.x-48, y=c.y-48, class="eyeRed", args={challengeId=c.id}},
            {x=c.x+48, y=c.y-48, class="eyeRed", args={challengeId=c.id}},
        }
        local wave2 = {
            {x=c.x, y=c.y-64, class="eyeRed", args={challengeId=c.id}},
            {x=c.x-64, y=c.y+16, class="eyeRed", args={challengeId=c.id}},
            {x=c.x+48, y=c.y+80, class="eyeRed", args={challengeId=c.id}},
        }

        return { wave1, wave2, wave3 }
    end

    if c.id == "cloudFight" then

        c.music = bgm.minigame
        local wave1 = { {x=c.x, y=c.y, class="cloudSpirit", args={challengeId=c.id}} }
        local wave2 = {
            {x=c.x+74, y=c.y, class="puff", args={challengeId=c.id}},
            {x=c.x-74, y=c.y, class="puff", args={challengeId=c.id}},
        }
        local wave3 = {
            {x=c.x, y=c.y-48, class="cloudSpirit", args={challengeId=c.id}},
            {x=c.x, y=c.y+48, class="puff", args={challengeId=c.id}},
        }
        local wave4 = {
            {x=c.x+74, y=c.y, class="puff", args={challengeId=c.id}},
            {x=c.x-74, y=c.y, class="puff", args={challengeId=c.id}},
        }

        return { wave1, wave2, wave3, wave4 }
    end

    if c.id == "cloudFightWest" then

        c.reward = {
            x=c.x - 224,
            y=c.y,
            rewardType="platforms",
            id=c.id,
            extraCutsceneTime=1.5
        }

        c.music = bgm.minigame
        local wave1 = { {} } -- wave 1 has 1 enemy, spawned above
        local wave2 = {
            {x=c.x-74, y=c.y-40, class="puff", args={challengeId=c.id}},
            {x=c.x+74, y=c.y-40, class="puff", args={challengeId=c.id}},
            {x=c.x, y=c.y+40, class="puff", args={challengeId=c.id}},
        }
        local wave3 = {
            {x=c.x-96, y=c.y, class="kotengu", args={challengeId=c.id}},
            {x=c.x+96, y=c.y, class="cloudSpirit", args={challengeId=c.id}},
        }

        return { wave1, wave2, wave3}
    end

    if c.id == "cloudFightWest2" then

        c.skipCutscene = true
        local wave1 = { {x=c.x, y=c.y, class="cloudSpirit", args={challengeId=c.id}} }
        local wave2 = {
            {x=c.x, y=c.y-36, class="puff", args={challengeId=c.id}},
            {x=c.x, y=c.y+36, class="puff", args={challengeId=c.id}},
        }
        local wave3 = {
            {x=c.x-88, y=c.y, class="cloudSpirit", args={challengeId=c.id}},
            {x=c.x+88, y=c.y, class="cloudSpirit", args={challengeId=c.id}},
        }
        local wave4 = {
            {x=c.x-90, y=c.y, class="puff", args={challengeId=c.id}},
            {x=c.x+90, y=c.y, class="puff", args={challengeId=c.id}},
            {x=c.x, y=c.y, class="kotengu", args={challengeId=c.id}},
        }

        return { wave1, wave2, wave3, wave4 }
    end

    if c.id == "ruinsFight" then
        c.music = bgm.boss
        local wave1 = { {} } -- wave 1 has 1 enemy, spawned above
        return { wave1 }
    end

    return {}
end
