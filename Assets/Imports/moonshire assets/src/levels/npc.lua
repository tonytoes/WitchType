npcs = {}

function npcs:spawn(name, x, y, args)
    -- initialize new npc table
    local npc = {}
    npc.name = name
    npc.x = x
    npc.y = y
    npc.width = 24
    npc.height = 30
    npc.visible = true
    npc.talkDist = 32
    npc.viewDist = 80
    npc.talkative = false
    npc.canSeePlayer = false
    npc.looksAtPlayer = true
    npc.animName = ""
    npc.defaultAnim = "idle"
    npc.emoting = false
    npc.map = getNpcMap(npc.name)
    npc.basic = false

    -- 0: idling
    -- 0.5: prep talk
    -- 1: talking
    -- 5: running away
    npc.state = 0
    npc.extraState = 0

    npc.scaleX = 1
    npc.talkSpr = sprites.ui.talk
    npc.talkCushion = 36
    npc.talkCushionY = -4
    npc.talkXoff = -3
    npc.talkYoff = -30
    npc.shadowX = 0
    npc.shadowY = -0.5
    npc.shadowSpr = "npc"
    npc.dead = false
    npc.doWalkPosition = true -- determines if the player walks nearby to talk
    npc.pitch = 2
    npc.delayTalk = 0
    npc.row = 1
    npc.runAwaySpeed = 115
    npc.dieOnTalk = false
    npc.smYOff = 0
    npc.talking = false

    npc.colorImmune = true
    npc.spriteSheet = sprites.npc.shopkeeper

    npc = npcs:getStats(npc)

    -- copy over all args properties
    if args then
        for k,v in pairs(args) do
            npc[k] = v -- even though k is the index, I believe the index should be strings, so this should apply all properties
        end
    end

    if npc.bossCheck then
        if not allEnemies[npc.bossCheck] then
            return nil 
        end
    end

    if npc.bailWithBossCheck then
        if allEnemies[npc.bailWithBossCheck] then
            return nil 
        end
    end

    if npc.bailWithoutBossCheck then
        if not allEnemies[npc.bailWithoutBossCheck] then
            return nil 
        end
    end

    if npc.bailWithChallengeCheck then
        if data.states.challenges[npc.bailWithChallengeCheck] then
            return nil 
        end
    end

    if npc.bailAfterState then
        if data.states.npcs[npc.name] and data.states.npcs[npc.name] > npc.bailAfterState then
            return nil 
        end
    end

    if npc.bailBeforeState then
        if data.states.npcs[npc.name] and data.states.npcs[npc.name] < npc.bailWithMaxState then
            return nil
        end
    end

    if npc.defaultDir then
        npc.scaleX = npc.defaultDir
        npc.looksAtPlayer = false
    end

    -- CANT use self in here, because it's passed into animations
    function npc:onAnimComplete()
        if npc.emoting then
            npc:setAnim(npc.defaultAnim)
            npc.emoting = false
        end
    end

    npc.grid = anim8.newGrid(npc.width, npc.height, npc.spriteSheet:getWidth(), npc.spriteSheet:getHeight())

    if npc.animOrder then
        npc.animations = {} -- rows match the following order
        for i,a in ipairs(npc.animOrder) do
            -- find any commas and split them into separate animations
            if string.find(a, ",") then
                local animTable = split(a, ",")
                for j=1,#animTable do
                    npc.animations[animTable[j]] = anim8.newAnimation(npc.grid('1-' .. npc.frameCounts[i], i), npc.frameSpeeds[i], npc.onAnimComplete)
                end
            else
                npc.animations[a] = anim8.newAnimation(npc.grid('1-' .. npc.frameCounts[i], i), npc.frameSpeeds[i], npc.onAnimComplete)
            end
        end
        npc.anim = npc.animations[npc.defaultAnim] -- top row animation (probably idle)
        npc.animName = npc.defaultAnim
    elseif npc.animClass then

        if npc.animClass == "sage" then
            local frameSpeeds = {0.65 + math.random()*0.3, 0.35 + math.random()*0.1, 0.29}
            npc.animations = {}
            npc.animations.idle = anim8.newAnimation(npc.grid('1-3', 1), frameSpeeds)
            npc.animations.holdIdle = anim8.newAnimation(npc.grid('1-3', 2), frameSpeeds)
            npc.animations.cast = anim8.newAnimation(npc.grid('1-2', 3), {0.12, 0.35}, function() npc.anim = npc.animations.castFinish npc:createProjectiles() end)
            npc.animations.castFinish = anim8.newAnimation(npc.grid('3-4', 3), {0.3, 0.16}, function() npc.anim = npc.animations.holdIdle end)
        end

        if npc.animClass == "soldier" then
            local frameSpeeds = {0.65 + math.random()*0.3, 0.35 + math.random()*0.1, 0.29}
            npc.animations = {}
            npc.animations.idle = anim8.newAnimation(npc.grid('1-3', 1), frameSpeeds)
            npc.animations.holdIdle = anim8.newAnimation(npc.grid('1-3', 2), frameSpeeds)
            npc.animations.runAway = anim8.newAnimation(npc.grid('1-3', 3), 0.09)
        end

        if npc.animClass == "engineer" then
            local frameSpeeds = {0.75, 0.4, 0.29}
            npc.animations = {}
            npc.animations.idle = anim8.newAnimation(npc.grid('1-3', 1), {0.5, 0.3, 0.9})
            npc.animations.sleep = anim8.newAnimation(npc.grid('1-3', 2), {0.85, 0.45, 1.4})
            npc.animations.alert = anim8.newAnimation(npc.grid(1, 3), 5)
        end

    else -- default animations for NPCs

        local totalFrames = npc.spriteSheet:getWidth() / npc.width
        local frameSpeeds = {0.65 + math.random()*0.3, 0.35 + math.random()*0.1, 0.29}
        if totalFrames == 4 then frameSpeeds = {0.36, 0.22, 0.22, 0.22} end
        if totalFrames == 6 then frameSpeeds = {0.15, 0.15, 0.15, 0.15, 0.15, 0.15} end
        npc.animations = {}
        npc.animations.idle = anim8.newAnimation(npc.grid('1-' .. totalFrames, npc.row), frameSpeeds)    
        npc.animations.talk = anim8.newAnimation(npc.grid('1-2', npc.row), 0.18)
    
    end

    npc.anim = npc.animations.idle
    if npc.defaultAnim then npc.anim = npc.animations[npc.defaultAnim] end

    npc.args = args
    if args and args.parent then npc.parent = args.parent npc.hasParent = true end
    if args and args.pitch then npc.pitch = args.pitch end
    if args and args.visible ~= nil then npc.visible = args.visible npc.basic = true end

    if npc.parent and npc.parent.weapon then
        npc.visible = false
        npc.doWalkPosition = false
    end

    if npc.visible == false then
        npc.talkSpr = sprites.ui.exclamation
        npc.talkXoff = 0
        npc.talkYoff = -14
        if args and args.talkYoff then npc.talkYoff = args.talkYoff end
    else
        npc.talkSpr = sprites.ui.exclamation
        npc.talkXoff = 0
        npc.talkYoff = -30
        if args and args.talkYoff then npc.talkYoff = args.talkYoff end
    end

    function npc:update(dt)
        if self.anim then self.anim:update(dt) end
        self.talkative = false
        self.canSeePlayer = false

        if self.parent and self.parent.dead then self.dead = true end
        if self.hasParent and not self.parent then self.dead = true end

        if self.parent and self.parent.plug then
            self.x = self.parent.x+7
            self.y = self.parent.y+5
        end

        if self.delayTalk > 0 then self.delayTalk = self.delayTalk - dt end
        if self.delayTalk < 0 and dialogue.talking == false then self:talk() return end

        -- this is for chests that have already been opened
        if self.parent and self.parent.chest and self.parent.state >= 1 then
            return
        end

        if (player.state == 0 or player.state == 5 or player.state == 5.1 or player.state == 13) and (lookForPlayer(self.x, self.y, self.viewDist)) then -- ignore scale check
            self.canSeePlayer = true
            if self.looksAtPlayer then
                if player:getX() < self.x then self.scaleX = -1 else self.scaleX = 1 end
            end
        end

        if self.visible == false then
            self.canSeePlayer = true -- invisible npc's can always see
        end

        if distanceBetween(self.x, self.y, player:getX(), player:getY()) < self.talkDist then
            if self.canSeePlayer and player.postBuffer <= 0 then
                self.talkative = true
            end
        end

        if self.timer then
            self.timer = self.timer - dt
            if self.timer < 0 then
                if self.retimer then self.timer = self.retimer else self.timer = nil end
                if self.timerTrigger then self:timerTrigger() end
            end
        end

        if self.simpleTriggerTimer then
            self.simpleTriggerTimer = self.simpleTriggerTimer - dt
            if self.simpleTriggerTimer < 0 then
                self.simpleTriggerTimer = nil
                if self.trigger then self:trigger() end
            end
        end

        if self.animClass == "sage" and self.anim == self.animations.castFinish then
            if self.anim.position == 1 then
                self.holdOffX = 2
                self.holdOffY = -16.5
            else
                self.holdOffX = 0
                self.holdOffY = self.baseHoldOffY
            end
        end

        if self.state == 5 then -- running away
            self.y = self.y + self.runAwaySpeed * dt

            if self.y > gameMap.pixelHeight * 1.2 then
                self.dead = true
            end
        end

        if self.forceScaleX then self.scaleX = self.forceScaleX end
    end

    function npc:draw()
        setWhite()
        if self.visible then
            self.anim:draw(self.spriteSheet, self.x, self.y, nil, self.scaleX, 1, self.width/2, self.height-1)
        end
        if self.talkative and player.state == 0 then
            love.graphics.draw(npc.talkSpr, self.x + self.talkXoff, self.y + self.talkYoff, nil, nil, nil, npc.talkSpr:getWidth()/2, npc.talkSpr:getHeight()/2)
        end

        if self.prop then
            if self.prop == "spear" then
                local propShadowSpr = sprites.shadows.roundXS
                love.graphics.setColor(0.1, 0.1, 0.1, 0.35)
                love.graphics.draw(propShadowSpr, self.x + 9*self.scaleX, self.y-0.5, nil, 0.8, nil, propShadowSpr:getWidth()/2, propShadowSpr:getHeight()/2)
                setWhite()
                local weaponsSpr = sprites.weapons.npc.spear
                love.graphics.draw(weaponsSpr, self.x + 9*self.scaleX, self.y-12.5, nil, 1, 1, weaponsSpr:getWidth()/2, weaponsSpr:getHeight()/2)
            end
        end

        if self.holding then
            local weaponSpr = sprites.weapons[self.holding]
            local holdX = 0
            local holdY = -12.5
            if self.holdOffX then holdX = self.holdOffX end
            if self.holdOffY then holdY = self.holdOffY end
            if weaponSpr then love.graphics.draw(weaponSpr, self.x - 11*self.scaleX + holdX*self.scaleX, self.y+holdY, math.pi/-2, 1, 1, weaponSpr:getWidth()/2, weaponSpr:getHeight()/2) end
        end
    end

    function npc:talk(delay)
        talk.basic = nil
        local validReady = player.readyToTalk and (player.readyToTalk == self.name)
        if player.state ~= 0 and not validReady then return end -- ONLY ALLOWING STATE 0 I'M SERIOUS!

        if self.dieOnTalk then
            self.dead = true
        end

        if self.parent and self.parent.interact and self.parent.skipWalk then -- skipWalk prevents the cutsceneWalk stuff
            self.parent:interact()
            player.skipAttack = true -- used so you DONT slash at chests, npc's etc
            return
        end

        if delay and delay > 0 then
            player.readyToTalk = self.name
            self.delayTalk = delay
            return
        end

        if player.state == 0 or validReady then -- used to also allow 13 here, but I'm removing it now
            self.talking = true
            if player:getX() < self.x then self.scaleX = -1 else self.scaleX = 1 end
            if self.talkDir then self.scaleX = self.talkDir end

            player.focusX = self.x
            player.focusY = self.y

            local destX = self.x + self.talkCushion * self.scaleX
            local destY = self.y + self.talkCushionY
            if self.customDestX then destX = self.x + self.customDestX end
            if self.customDestY then destY = self.y + self.customDestY end

            local walkTime = 0.5
            local distTodest = distanceBetween(destX, destY, player:getX(), player:getY())
            if distTodest < 2 then
                walkTime = 0
            elseif distTodest < 8 then
                walkTime = 0.25
            end

            if self.doWalkPosition then
                local finishVec = vector(self.x - destX, 1) 
                if self.finishLookX then finishVec.x = self.finishLookX end
                if self.finishLookY then finishVec.y = self.finishLookY end
                player:cutsceneWalk(destX, destY, walkTime, {finalX = finishVec.x, finalY = finishVec.y})
            else
                player.state = 13
                player:justIdle()
            end
            
            cam:fluxZoom("playerDialogue", 0.6)

            if self.parent and self.parent.interact and not self.parent.skipWalk then -- skipWalk prevents the cutsceneWalk stuff
                self.parent:interact()
                return
            end

            local convoName = self.name
            convoName = conversations:stateAdjust(self.name)
            convoName = conversations:stateAdjust2(convoName, {state=self.state, extraState=self.extraState})

            dialogue.npcPitch = self.pitch
            --startConversation(conversations[convoName])
            talk:checkAllNpcRelays()
            talk:start(self.name)
            
            self.delayTalk = 0
            if validReady then player.readyToTalk = nil end
        end

        if npc.animations.talkRight then
            self:setAnim("talkRight")
        end
    end

    function npc:runAway()
        if not self.animations or not self.animations.runAway then return nil end

        dj.play(sounds.misc.flee, "static", "effect")
        self.anim = self.animations.runAway
        self.anim:gotoFrame(1)
        self.state = 5

        self.prop = nil
        if self.weapon then weapons:deleteByUid(self.weaponUniqueId) end
        if self.dropWeapon then weapons:spawn(self.dropWeapon, self.x, self.y, {bounceVec=vector(0, -60)}) end
    end

    function npc:setAnim(newAnim, emote)
        if self.animName ~= newAnim then
            self.animName = newAnim
            if self.animations[newAnim] then
                self.anim = self.animations[newAnim]
                self.anim:gotoFrame(1)
                if emote then
                    self.emoting = true
                else
                    self.defaultAnim = newAnim
                end
            end
        end
    end

    function npc:setMapAnim()
        if self.map then
            local stateObj = self.map[data.states.npcs[self.name]]
            if stateObj and stateObj.anim then self:setAnim(stateObj.anim) end
        end
    end

    function npc:doneTalking()
        self.talking = false
        self:setAnim(self.defaultAnim)
        if self.defaultDir then self.scaleX = self.defaultDir end
    end

    if npc.weapon then
        local wuid = npc.name .. "_" .. npc.weapon
        npc.weaponUniqueId = wuid
        weapons:spawn(npc.weapon, npc.x, npc.y, {uniqueId=wuid, npc=npc})
    end

    if not npc.basic then
        if data.states.npcs[npc.name] then
            if npc.map then
                local stateObj = npc.map[data.states.npcs[npc.name]]
                if stateObj and stateObj.anim then npc:setAnim(stateObj.anim) end
            end
        else
            data.states.npcs[npc.name] = 1
        end
    end

    table.insert(npcs, npc)
end

function npcs:update(dt)
    for _,n in ipairs(npcs) do n:update(dt) end

    local i = #npcs
    while i > 0 do
        if npcs[i].dead then table.remove(npcs, i) end
        i = i - 1
    end
end

function npcs:checkClick()
    for _,n in ipairs(npcs) do
        if n.talkative then
            player.postBuffer = 0.5
            n:talk()
        end
    end
end

-- return the first npc with the name
function npcs:getByName(name)
    for _,n in ipairs(npcs) do
        if n.name == name then return n end
    end
end

function npcs:triggerByName(name)
    for _,n in ipairs(npcs) do
        if n.name == name then
            if n.trigger then n:trigger() end
        end
    end
end

function npcs:standardFrameSpeeds()
    return {0.65 + math.random()*0.3, 0.35 + math.random()*0.1, 0.29}
end
