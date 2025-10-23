function npcs:getStats(n)

    if sprites.npc[n.name] then n.spriteSheet = sprites.npc[n.name] end

    if n.name == "blacksmith" then
        n.width = 30
        n.height = 30
    end

    if n.name == "farmer" then
        n.width = 30
        n.height = 30
    end

    if n.name == "shopkeeper" then
        --n.spriteSheet = sprites.npc.oldLady
    end

    if n.name == "sailor" then
        --n.spriteSheet = sprites.npc.oldLady
    end
    
    if n.name == "soldierEastGate" then
        n.pitch = 2
        n.prop = "spear"
        n.defaultAnim = "holdIdle"
        n.animClass = "soldier"
        n.spriteSheet = sprites.npc.soldier1
    end

    if n.name == "soldierBarracks" then
        n.pitch = 1.5
        n.spriteSheet = sprites.npc.soldier1
        n.animClass = "soldier"
        n.basic = true
    end
    

    if n.name == "soldierBarracks2" then
        n.pitch = 3.2
        n.prop = "spear"
        n.spriteSheet = sprites.npc.soldier1
        n.animClass = "soldier"
        n.defaultAnim = "holdIdle"
    end

    if n.name == "soldierWestGate" then
        n.pitch = 2
        n.animClass = "soldier"
        n.spriteSheet = sprites.npc.soldier1
        n.prop = "spear"
        n.defaultAnim = "holdIdle"
    end

    if n.name == "soldierLeaderRuins" then
        n.pitch = 1.5
        n.animClass = "soldier"
        n.spriteSheet = sprites.npc.soldier3
        n.weapon = "torch"
        n.dropWeapon = "torch"
        n.defaultAnim = "holdIdle"
        function n:trigger() self:runAway() end
    end

    if n.name == "soldierLeader" then
        n.pitch = 1.5
        n.animClass = "soldier"
        n.spriteSheet = sprites.npc.soldier3
        n.weapon = "torch"
        n.defaultAnim = "holdIdle"
        function n:trigger() self:runAway() end
    end

    if n.name == "soldierRuins1" then
        n.pitch = 2
        n.animClass = "soldier"
        n.spriteSheet = sprites.npc.soldier1
        n.prop = "spear"
        n.dropWeapon = "spear"
        n.defaultAnim = "holdIdle"
        function n:trigger() self:runAway() end
        n.basic = true
    end

    if n.name == "soldierRuins2" then
        n.pitch = 2
        n.animClass = "soldier"
        n.spriteSheet = sprites.npc.soldier2
        n.prop = "spear"
        n.dropWeapon = "spear"
        n.defaultAnim = "holdIdle"
        function n:trigger() self:runAway() end
        n.basic = true
    end

    if n.name == "balloonGame" then
        n.pitch = 1.85
        n.spriteSheet = sprites.npc.sailor
    end

    if n.name == "strategist" then
        n.pitch = 1.5
        n.smYOff = 20

        n.animOrder = { "idle", "talkRight" }
        n.frameCounts = {3,3}
        n.frameSpeeds = {npcs:standardFrameSpeeds(), npcs:standardFrameSpeeds()}
    end

    if n.name == "teaGirl" then
        n.pitch = 4.2
    end

    if n.name == "wiseman" then
        n.pitch = 2
    end

    if n.name == "engineer" then
        n.pitch = 2
        n.defaultAnim = "sleep"
        n.width = 37
        n.height = 30
        n.shadowSpr = "wideL"
        n.shadowY = -1.5
        n.shadowX = -0.5
        n.looksAtPlayer = false

        n.animOrder = { "idle", "sleep", "startled", "adjust" }
        n.frameCounts = {3,3,2,5}
        n.frameSpeeds = {npcs:standardFrameSpeeds(), {1.15, 0.85, 0.3}, {0.5, 0.25}, {0.1, 0.3, 0.3, 0.3, 0.1}}
    end

    if n.name == "kotenguVictim" then
        n.spriteSheet = sprites.npc.kotengu
        n.pitch = 2.5
        n.defaultAnim = "rest"
        n.width = 37
        n.height = 30
        n.bailWithoutBossCheck = "cloudBoss"
        n.shadowSpr = "wideL"
        n.forceScaleX = 1
        n.basic = true

        n.animOrder = { "rest" }
        n.frameCounts = {3}
        n.frameSpeeds = {{0.7 + math.random()*0.3, 0.25, 0.9 + math.random()*0.3}}
    end

    if n.name == "kotenguVictim2" then
        n.spriteSheet = sprites.npc.kotengu
        n.pitch = 1.75
        n.defaultAnim = "rest"
        n.width = 37
        n.height = 30
        n.bailWithoutBossCheck = "cloudBoss"
        n.shadowSpr = "wideL"
        n.forceScaleX = -1
        n.basic = true

        n.animOrder = { "rest" }
        n.frameCounts = {3}
        n.frameSpeeds = {{0.7+ math.random()*0.3, 0.25, 0.9 + math.random()*0.3}}
    end

    if n.name == "sage" then
        n.colorImmune = false
        n.pitch = 3.2
        n.width = 30
        n.height = 30
        n.animClass = "sage"
        n.defaultAnim = "holdIdle"
        n.holding = "sageStaff"
        n.holdOffY = -12.5
        n.baseHoldOffY = -12.5

        function n:trigger(args)
            self.extraState = self.extraState + 1
            if self.extraState == 1 then -- starting the dodge game
                n.timer = 2 -- wait a second before first cast
                n.retimer = 3 -- wait 2 seconds between casts
                n.counter = 0
                n.healthTrack = player.health
                n.talkDist = -32
                spawnTutorial("roll", n.x, n.y)
            elseif self.extraState == 2 then -- after the dodge game
                n.timer = nil
                n.retimer = nil
                n.talkDist = 32
            elseif self.extraState == 3 then -- summoning a weapon to pick up
                n.talkDist = -32
                self.anim = self.animations.cast
                self.anim:gotoFrame(1)
            elseif self.extraState == 4 then
                n.talkDist = 32
            end
        end

        function n:timerTrigger(args)
            if self.extraState == 1 then
                if player.health < self.healthTrack then self.counter = 0 end
                if self.counter >= 5 then
                    -- game is complete!
                    self:trigger()
                else
                    self.healthTrack = player.health
                    self.anim = self.animations.cast
                    self.anim:gotoFrame(1)
                    self.counter = self.counter + 1
                end
            end
        end

        function n:createProjectiles()
            local track = math.pi/400
            local spiral = math.pi*1.55
            local spiralT = 3
            local offY = -6
            if self.extraState == 3 then
                --[[if player.health >= player.maxHealth then
                    -- summon fire to hurt
                    effects:spawn("fireRing", n.x, n.y + offY)
                    spawnHitbox({shape="circle", rad=74, x=n.x, y=n.y}, {player=false, grow=true})
                end]]
                local vec = vector(56, 0) if player:getX() < self.x then vec.x = -1 * vec.x end
                weapons:spawn("spear", n.x, n.y + offY, {bounceVec=vec})
                spawnTutorial("heal", n.x, n.y)
            elseif player.health < 2 then
                effects:spawn("healWind", player:getX(), player:getY())
                self.counter = 0
            else
                if self.counter <= 2 then projectiles:spawn("shockBall", n.x, n.y + offY, {dir = getSelfToPlayerVector(n.x, n.y), shotgun = nil, trackingVal = track})
                elseif self.counter <= 4 then projectiles:spawn("shockBall", n.x, n.y + offY, {dir = getSelfToPlayerVector(n.x, n.y), shotgun = 5, trackingVal = nil})
                else for i=1,16 do projectiles:spawn("shockBall", n.x, n.y + offY, {dir = getSelfToPlayerVector(n.x, n.y):rotated((i-1) * math.pi*2/16), trackingVal = nil, spiralVal = spiral, spiralTime = spiralT}) end end
                dj.play(sounds.attacks.zap, "static", "effect")
            end
            shake:standard(1)
            spawnBlast(n.x, n.y + offY, 96, nil, 0.4)
        end
    end

    return n
end