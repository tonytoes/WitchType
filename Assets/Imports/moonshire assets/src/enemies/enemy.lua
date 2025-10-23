enemies = {}

function spawnEnemy(x, y, class, args)

    if args and args.waiting and gameMap.waiting then
        -- this enemy is meant to be spawned later using 'spawnWaiting()'
        return
    end

    if args and args.permId and data.states.permEnemies[args.permId] then
        -- this enemy has a permId and has already been defeated. Do not spawn.
        return
    end

    if args and args.bailWithBossCheck then
        if allEnemies[args.bailWithBossCheck] then
            return nil 
        end
    end

    local enemy = {}

    enemy.homeX = x
    enemy.homeY = y
    enemy.scaleX = 1
    enemy.scaleY = 1
    enemy.physWidth = 8
    enemy.physHeight = 8
    enemy.physCorner = 2
    enemy.width = 16 -- spritesheet width
    enemy.height = 16 -- spritesheet height
    enemy.class = class
    enemy.uniqueId = "enemy" .. math.random()
    enemy.dead = false
    enemy.stamp = "enemy"
    enemy.health = 10
    enemy.animType = "standard"
    enemy.animOrder = { "idle", "walk", "attack" }
    enemy.simpleCount = 2 -- used for simple animType
    enemy.simpleSpeed = 0.5
    enemy.animTimer = 0
    enemy.flashTimer = 0
    enemy.searchRefreshTimer = 0
    enemy.stunTimer = 0
    enemy.burningTimer = 0
    enemy.burningCounter = 0
    enemy.danger = 1 -- how much damage on contact
    enemy.shadowSpr = "roundM"
    enemy.shadowY = 8
    enemy.drawShadow = true
    enemy.shadowScale = 1
    enemy.shadowScaleFactor = 1 -- used for extra scaling of the shadow, like rising up
    enemy.shadowOffX = 0
    enemy.shadowState = 1 -- 1 is normal, 0 is invisible
    enemy.alertY = 8
    enemy.hovers = false
    enemy.sliceback = -40
    enemy.hitlist = {} -- contains id's for hitboxes that have hit this enemy
    enemy.lightFactor = 1
    enemy.lastMoveDir = vector(1,1)
    enemy.colorImmune = true
    enemy.searchDist = 80 -- distance the player must be to the enemy in order to be seen
    enemy.wanderDist = 42
    enemy.attackDist = 64
    enemy.attackDir = vector(1,0)
    enemy.attackBuffer = 0
    enemy.smOffset = 8
    enemy.offY = 0
    enemy.jumpY = 0
    enemy.walkSpeed = 40
    enemy.pursueSpeed = 60
    enemy.pursueAnimSpeedFactor = 1.3
    enemy.destX = -10
    enemy.destY = -10
    enemy.frameCounts = {2,2,2,2,1}
    enemy.useAnim = true
    enemy.lastPursueTileInd = -1
    enemy.args = args
    enemy.baseDamping = 5
    enemy.hitDamping = 10
    enemy.acceleration = 60
    enemy.drop = "basic"
    enemy.destPatrolPoint = 1
    enemy.exclaims = true
    enemy.rot = 0
    enemy.attackIndex = 1 -- setting default, doesn't apply to most enemies
    enemy.attMapInd = 1 -- NOTE: the index for attMap is the phase value, and this attMapInd is used for interation within the attMap
    enemy.barrageCounter = 0
    enemy.projSpawnDist = 2
    enemy.projOffY = 0
    enemy.cutsceneOffY = 0 -- used for flying upwards during cutscenes
    enemy.wakeAggroPause = 0.5
    enemy.hasAttacked = false
    enemy.fightStarted = false
    enemy.hitKnockbackFactor = 1.5 -- multiplier for player knocking self back when hitting this enemy
    enemy.strikeTimer = 0 -- used for lightning strike from player
    enemy.repeatAttack = 0 -- used for repeating attacks
    enemy.flyTracker = 0
    enemy.flyMax = 5
    enemy.wrapThresh = 400

    enemy.sprite = sprites.enemies[class]
    if class == "eyeRed" then enemy.sprite = sprites.enemies.eyeBody end

    enemy.burnSheet = sprites.effects.fireStatus
    enemy.burnGrid = anim8.newGrid(32, 32, enemy.burnSheet:getWidth(), enemy.burnSheet:getHeight())
    enemy.burnAnim = anim8.newAnimation(enemy.burnGrid('1-6', 1), 0.08)

    enemy.electricSheet = sprites.effects.smallCharge
    enemy.electricGrid = anim8.newGrid(16, 16, enemy.electricSheet:getWidth(), enemy.electricSheet:getHeight())
    enemy.electricAnim = anim8.newAnimation(enemy.electricGrid('1-9', 1), 0.1, function() enemy.electricRot = math.random() * math.pi * 2 end)
    enemy.electricRot = 0

    -- Enemy states:
    -- -4: intangible and invisible (outside of the map), NOT aggro'd
    -- -3: intangible and invisible (outside of the map), aggro'd
    -- -2: cutscene, physics is moved outside of the map
    -- -1: static and immobile
    -- 0: idle, not moving
    -- 1: moving towards destX destY
    -- 5: sleeping
    -- 6: waking
    -- 10: alerted
    -- 11: pursuing, moving towards the player,
    -- 15: giving up
    -- 19: aggro'd, but waiting
    -- 29: dying state, for bosses
    -- 30: windup
    -- 31: tackle
    -- 32: shoot, barrage, circle
    -- 33: landmine attack
    -- 34: fly around
    enemy.state = 0

    if args and args.permId then
        enemy.permId = args.permId
    end

    if args and args.destX and args.destY then
        enemy.destX = args.destX
        enemy.destY = args.destY
        enemy.state = 1
        enemy.animTimer = 10
        enemy.startWalking = true
    end

    if args and args.lastMoveX then
        enemy.lastMoveDir.x = args.lastMoveX
    end

    if args and args.spawnBlast then
        blasts:standard(x, y, args.spawnBlast)
    end

    enemy.floatTime = 0.8
    enemy.floatY = 0
    enemy.floatMax = 1

    enemy = getStats(enemy)
    enemy = getBossStats(enemy)

    if args then
        if args.walkSpeed then enemy.walkSpeed = args.walkSpeed end
        if args.useSpecialIntro then
            enemy.intro = enemy.specialIntro
        end
        if args.waitObj then
            enemy.state = -2
            enemy.waitObj = args.waitObj
        end
    end

    enemy.maxHealth = enemy.health
    enemy.canRedden = enemy.maxHealth >= 10
    enemy.redness = 0

    if enemy.attMap then
        enemy.phase = 1
        -- copy the attMap stuff into en.phases
        enemy.phases = {}
        
        local ii = 1
        while enemy.attMap[ii] do
            enemy.phases[ii] = {}
            enemy.phases[ii].attackList = {}
            for k,v in pairs(enemy.attMap[ii]) do
                local attStrName = ""
                if type(v) == "table" then
                    attStrName = v.id
                else
                    attStrName = v
                end
                
                if attStrName:startswith("_") then
                    -- this isn't an attack, add the string
                    local strTbl = {attackType=attStrName}
                    table.insert(enemy.phases[ii].attackList, strTbl)
                else
                    -- grab the attack object from myAttacks
                    local attTbl = copy(enemy.myAttacks[attStrName])
                    if attTbl then
                        if type(v) == "table" then
                            for kk,vv in pairs(v) do
                                if kk ~= "id" then attTbl[kk] = vv end
                            end
                        end
                        table.insert(enemy.phases[ii].attackList, attTbl)
                    end
                end
            end

            ii = ii + 1
        end
    end

    function enemy:cycleAttackType(add)
        if self.repeatAttack > 0 then
            self.repeatAttack = self.repeatAttack - 1
            return
        end
        if self.attackList and #self.attackList > 1 then
            if add then self.attackIndex = self.attackIndex + add end
            if self.attackIndex > #self.attackList then self.attackIndex = 1 end

            local willSkip = false
            if self.physics and self.attackList[self.attackIndex].skip then
                if type(self.attackList[self.attackIndex].skip) == "table" then
                    for kk,vv in pairs(self.attackList[self.attackIndex].skip) do
                        if kk == "tooFar" then
                            willSkip = distanceBetween(self.physics:getX(), self.physics:getY(), player:getX(), player:getY()) > vv
                        elseif kk == "tooClose" then
                            willSkip = distanceBetween(self.physics:getX(), self.physics:getY(), player:getX(), player:getY()) < vv
                        end
                    end
                else -- floating point
                    if math.random() < self.attackList[self.attackIndex].skip then
                        willSkip = true
                    end
                end
            end

            if willSkip then
                self:cycleAttackType(1)
                return
            end

            if self.attackList[self.attackIndex].attackType then
                local attType = self.attackList[self.attackIndex].attackType
                if attType:startswith("_") then
                    if attType == "_next" then
                        self.attackIndex = 1
                        self.phase = self.phase + 1
                        enemy:setPhaseStats() -- this will reset attackIndex
                    end
                end
            end

            self.attack = self.attackList[self.attackIndex]
            if self.attack and self.attack.totalTimes then
                self.repeatAttack = self.attack.totalTimes - 1
                if self.attack.randomTimes then
                    local extra = math.random(0, self.attack.randomTimes)
                    self.repeatAttack = self.repeatAttack + extra
                end
            end
        elseif self.attackList and #self.attackList == 1 then
            self.attack = self.attackList[1]
        end
    end

    function enemy:setPhaseStats() -- this is safe to call on all enemies, regardless of if it has phases or not
        if self.phase then -- can't have phase 0
            local phaseObj = enemy.phases[enemy.phase]
            -- apply all properties from this phaseObj to the current enemy
            for k,v in pairs(phaseObj) do -- TODO: double check that this works
                enemy[k] = v -- even though k is the index, I believe the index should be strings, so this should apply all properties
            end
        end

        self:cycleAttackType()
    end
    enemy:setPhaseStats() -- call the function immediately, it also extracts attackList and such so it's necessary even without phases

    -- REMEMBER: ONLY USE 'ENEMY' IN HERE BECAUSE SELF ISNT ACTUALLY THE ENEMY
    function enemy:onAnimComplete() -- most states this does nothing. But some states it does!
        if enemy.state == 6 and (enemy.waitObj and enemy.waitObj.wakeAnim) then
            enemy:stateTrigger({msg="wake animation completed"})
        end
        if enemy.attack and enemy.attack.attackStartFrame then
            if enemy.state >= 31 and enemy.state <= 33 then
                -- attack animation completed, go back to idle
                enemy:changeAnim("idle")

                if not enemy.attack.finishTime then
                    enemy.animTimer = -1
                end
            end
        end
        if enemy.cutsceneState == 1 and enemy.animName == "appear" then
            enemy:cutsceneComplete()
        end
        if enemy.state == -3 then
            if enemy.animName == "disappear" then
                local waitTime = 1 if enemy.attack.hideTime then waitTime = enemy.attack.hideTime end
                enemy.animTimer = waitTime
                enemy:changeAnim("idle")
                -- TODO: do the offscreenAttack here
                if enemy.attack and enemy.attack.offscreenAttack then
                    offscreen:attack(enemy.attack.offscreenAttack)
                end
                if enemy.attack and enemy.attack.offscreenAttackMap then
                    offscreen:startAttMap(enemy.attack.offscreenAttackMap)
                end

                if enemy.attack.reappearAt then
                    if enemy.attack.reappearAt == "randomPin" and #pins > 0 then
                        local attemptCount = 0
                        local pinInd = 0
                        while pinInd == 0 and attemptCount < 100 do
                            local tryPinInd = math.random(1, #pins)
                            local distCheck = 64
                            if distanceBetween(pins[tryPinInd].x, pins[tryPinInd].y, player:getX(), player:getY()) > distCheck then
                                pinInd = tryPinInd
                            end
                            attemptCount = attemptCount + 1
                        end
                        if pinInd then
                            enemy.homeX = pins[pinInd].x
                            enemy.homeY = pins[pinInd].y
                        end
                    end
                end
            elseif enemy.animName == "appear" then
                enemy:unhide()
                enemy:changeAnim("idle")
                if enemy.attack and enemy.attack.bufferTime then enemy.animTimer = enemy.attack.bufferTime end
                enemy:cycleAttackType(1)
                enemy.state = 19
                enemy.animTimer = 1
            end
        end
        if enemy.state == 35 then -- skidding to a stop
            enemy:stateTrigger({msg="finished skidding to a stop"})
        end
    end

    function enemy:startFlyAround()
        self:changeAnim("fly")
        self.state = 34
        self.animTimer = -1
        self.flyTracker = 0
        if self.attack.fly and self.attack.fly.wrapCount then self.flyMax = self.attack.fly.wrapCount end
        self.lastMoveDir = vector(self.scaleX, 0):normalized()
    end

    function enemy:flyWrap()
        self.flyTracker = self.flyTracker + 1
        local offX = 0
        if self.scaleX < 0 then offX = self.wrapThresh*2 else offX = self.wrapThresh*-2 end
        self.physics:setPosition(self.physics:getX() + offX, self.homeY)
    end

    if enemy.useAnim then
        enemy.grid = anim8.newGrid(enemy.width, enemy.height, enemy.sprite:getWidth(), enemy.sprite:getHeight())
        if enemy.animType == "simple" then
            enemy.anim = anim8.newAnimation(enemy.grid('1-' .. enemy.simpleCount, 1), enemy.simpleSpeed)
            enemy.animName = "simple"
        else
            enemy.animations = {} -- rows match the following order
            for i,a in ipairs(enemy.animOrder) do
                local animName = a
                -- find any commas and split them into separate animations
                if string.find(a, ",") then
                    local animTable = split(a, ",")
                    for j=1,#animTable do
                        enemy.animations[animTable[j]] = anim8.newAnimation(enemy.grid('1-' .. enemy.frameCounts[i], i), enemy.frameSpeeds[i], enemy.onAnimComplete)
                    end
                else
                    enemy.animations[a] = anim8.newAnimation(enemy.grid('1-' .. enemy.frameCounts[i], i), enemy.frameSpeeds[i], enemy.onAnimComplete)
                end
            end
            enemy.anim = enemy.animations["idle"] -- top row animation (probably idle)
            enemy.animName = "idle"
        end
    end

    -- create physics for enemy
    enemy.physics = world:newBSGRectangleCollider(x - enemy.physWidth/2, y - enemy.physHeight/2, enemy.physWidth, enemy.physHeight, enemy.physCorner)
    enemy.physics:setCollisionClass('Enemy')
    enemy.physics:setFixedRotation(true)
    enemy.physics:setMass(1)
    enemy.physics:setLinearDamping(enemy.baseDamping) -- 4 is default, 2 is stun
    enemy.physics.parent = enemy
    if enemy.static then enemy.physics:setType('static') end

    enemy.smOffset = enemy.physHeight/2
    enemy.homeTileIndexList = getSightTileIndexList(x, y, 96)

    -- used for idleType patrol
    if enemy.idleType == "patrol" then
        enemy.x1 = x
        enemy.y1 = y
        enemy.totalPatrolPoints = 1
        if args and args.x2 and args.y2 then enemy.x2 = args.x2 enemy.y2 = args.y2 enemy.totalPatrolPoints = 2 end
        if args and args.x3 and args.y3 then enemy.x3 = args.x3 enemy.y3 = args.y3 enemy.totalPatrolPoints = 3 end
        if args and args.x4 and args.y4 then enemy.x4 = args.x4 enemy.y4 = args.y4 enemy.totalPatrolPoints = 4 end
        if args and args.relative then
            enemy.x2 = enemy.x1 + enemy.x2
            enemy.y2 = enemy.y1 + enemy.y2
            if enemy.x3 and enemy.y3 then
                enemy.x3 = enemy.x1 + enemy.x3
                enemy.y3 = enemy.y1 + enemy.y3
            end
            if enemy.x4 and enemy.y4 then
                enemy.x4 = enemy.x1 + enemy.x4
                enemy.y4 = enemy.y1 + enemy.y4
            end
        end
    end

    -- call this function if the enemy floats, to start the cycle
    function enemy:floatUp(dest, start)
        local time = self.floatTime
        if start then time = math.random() end
        self.tween = flux.to(self, time, {floatY = dest}):ease("sineinout"):oncomplete(function() self:floatDown(self.floatMax*-1) end)
    end

    function enemy:floatDown(dest)
        self.tween = flux.to(self, self.floatTime, {floatY = dest}):ease("sineinout"):oncomplete(function() self:floatUp(self.floatMax) end)
    end

    if enemy.float then
        enemy.pursueAnimSpeedFactor = 1
        enemy.baseDamping = 3
        if not (args and args.sleep) then
            enemy:floatUp(enemy.floatMax, true)
        end
    end

    -- call this function if the enemy floats, to start the cycle
    function enemy:wobbleUp()
        if not self.scaleY then self.scaleY = 1 end
        local time = 0.25
        local neg = 1 if self.scaleX < 0 then neg = -1 end
        self.tween = flux.to(self, time, {scaleX = 0.7*neg, scaleY = 1.3}):ease("sineinout"):oncomplete(function() self:wobbleOut() end)
    end

    function enemy:wobbleOut()
        local time = 0.25
        local neg = 1 if self.scaleX < 0 then neg = -1 end
        self.tween = flux.to(self, time, {scaleX = 1.3*neg, scaleY = 0.7}):ease("sineinout"):oncomplete(function() self:wobbleUp() end)
    end

    function enemy:giveLightSource(rad)
        self.lit = true
        self.killLight = false
        local clr = nil
        if self.lightColor then clr = self.lightColor end
        spawnLightSource(self.physics:getX(), self.physics:getY(), rad * self.lightFactor, self.uniqueId, 2, nil, {color=clr})
    end

    if enemy.lightRad then
        enemy:giveLightSource(enemy.lightRad)
    end

    if enemy.wings then
        enemy.wingSheet = enemy.wings.spr
        enemy.wingGrid = anim8.newGrid(enemy.wings.frameW, enemy.wings.frameH, enemy.wingSheet:getWidth(), enemy.wingSheet:getHeight())
        enemy.wingAnim = anim8.newAnimation(enemy.wingGrid('1-' .. enemy.wings.frameCount, 1), enemy.wings.frameSpeeds)
    end

    function enemy:waitWakeStart()
        if self.waitObj and not self.waitObj.state then
            self.waitObj.state = 1
            if self.waitObj.playerWatch ~= nil then
                local offY = self.waitObj.playerWatch
                player:cutsceneWalk(self.physics:getX(), self.physics:getY() + offY, 1.5, {finalX = 0, finalY = offY * -1})
            end
            self.animTimer = 1
            if self.waitObj.startDelay then self.animTimer = self.waitObj.startDelay end
            -- start a cutscene, focus it on self
            local lookOffY = 0
            if self.waitObj.lookOffY then lookOffY = self.waitObj.lookOffY end
            if self.waitObj.cutsceneType then
                if self.waitObj.cutsceneType == "lookAtMe" then
                    cutscene:start("slowPan", {skipBars = self.waitObj.skipBars, lookAtX = self.physics:getX(), lookAtY = self.physics:getY() + lookOffY, lookDur=self.waitObj.cutsceneDur})
                elseif self.waitObj.cutsceneType == "lookAtPlayer" then
                    cutscene:start("slowPan", {skipBars = self.waitObj.skipBars, lookAtX = player:getX(), lookAtY = player:getY() + lookOffY, lookDur=self.waitObj.cutsceneDur})
                end
            end
            
            if self.waitObj.newMusic then
                dj.fade()
            end
        end
    end

    function enemy:waitWake()
        if self.waitObj then
            self.state = 6
            self.waitObj.state = 2
            if self.waitObj.wakeAnim then
                self:changeAnim(self.waitObj.wakeAnim)
                self.animTimer = 999
            end
            if self.waitObj.wakeup then
                if self.waitObj.wakeup == "lightning" then
                    self.animTimer = 0.1 -- it'll start spawning lightning
                end
                if self.waitObj.wakeup == "eyeris" then
                    self.animTimer = 4
                end
            end
        end
    end

    function enemy:lookForPlayer()
        if not self.physics then return false end
        if not self.attack then return end
        local ex = self.physics:getX()
        local ey = self.physics:getY()
        local lookScaleX = 1
        local dist = self.searchDist
        if self.waitObj and self.waitObj.dist then dist = self.waitObj.dist end
        if self.lastMoveDir.x < 0 then lookScaleX = -1 end
        if self.attack.attackType == "landmine" or self.state == 5 or self.skipCheckX then -- sleeping state
            return lookForPlayer(ex, ey, dist)
        end
        return lookForPlayer(ex, ey, dist, self.scaleX)
    end

    -- Used to make enemies move within a circular area
    function enemy:wanderUpdate(dt)

    end

    function enemy:moveLogic(dt, stiff)
        
    end

    function enemy:softHit(dmg)
        if not self.invincible then self.health = self.health - dmg end
    end

    function enemy:deathEscape(escVec)
        self.state = -2
        self.health = 1
        self.animTimer = 1
        self.escapeVec = escVec
        self:changeAnim("escape")
    end

    function enemy:bossFinalDeath()
        if self.class == "eyeris" then
            for i,e in ipairs(enemies) do
                if e.class ~= "eyeris" then
                    e.health = -1
                end
            end
        end

        if self.tween then self.tween:stop() end
        local ex, ey = self.physics:getPosition()
        if self.class == "cloudBoss" then
            self:deathEscape(vector(300, -200))
            particleEvent("greenCoreShards", ex, ey)
            sem:playSound(sounds.enemies.die)
            sem:playSound(sounds.misc.ascendLong)
            shake:standard(2)
            misc:prepareLargeReward("lightning")
        elseif self.class == "daitengu" then
            cutscene.timer = 5
            self:deathEscape(vector(50, -200))
            --cover:start("daitenguVictory") old one
        else
            self:deathDrop()
            self.dead = true
            particleEvent("death", ex, ey)
            particleEvent("death", ex - 16, ey)
            particleEvent("death", ex + 16, ey)
            particleEvent("death", ex, ey - 16)
            particleEvent("death", ex, ey + 16)
            sem:playSound(sounds.enemies.die)
            shake:standard(2)
        end
    end

    function enemy:deathDrop()
        if not self.physics then return nil end
        local ex, ey = self.physics:getPosition()
        if self.drop then -- set to nil in stats if you don't want standard drop
            if self.drop == "weapon" then
                local vec = vector(32, 0):rotated(math.random()*math.pi*2)
                weapons:spawn(self.dropId, ex, ey, {bounceVec=vec})
            end

            if self.drop == "lob" then
                local vec = player.attackDir
                if self.lastHitDir then vec = self.lastHitDir end
                spawnLob(self.dropId, ex, ey, vec, {})
            end
        end
    end

    function enemy:death(fall)
        if self.args and self.args.challengeId then
            for _,c in ipairs(challenges) do
                if c.id == self.args.challengeId then
                    c.score = c.score + 1
                end
            end
        end

        local firstTime = true
        for i,e in pairs(data.states.enemies) do
            if i == self.class then
                data.states.enemies[self.class] = data.states.enemies[self.class] + 1
                firstTime = false
            end
        end
        if firstTime then
            data.states.enemies[self.class] = 1
        end
        setAllEnemies()

        self:burnHeal()

        if not fall then
            local ex, ey = self.physics:getPosition()
            if self.onDeath then
                if self.onDeath == "elecExplosionBig" then
                    self:deathDrop()
                    particleEvent("death", ex, ey)
                    effects2:spawn("elecExplosionBig", ex, ey)
                elseif self.onDeath == "jelly" then
                    effects2:spawn("spark", ex, ey)
                    self:deathDrop()
                end
            elseif self.boss then
                self.physics:setLinearVelocity(0, 0)
                self.state = 29 -- dying state
                self:wobbleUp()
                player:cutscene(getFromToVector(player:getX(), player:getY(), self.physics:getX(), self.physics:getY()):normalized())
                self:changeAnim("dying")
                self.bossBlastCount = 0
                self.animTimer = -1
                dj.fade(2)
                walls:clearBlockades()

                local sceneTime = 3
                if self.deathCutsceneDur then sceneTime = self.deathCutsceneDur end
                local rewardScene = { id="quickLook", args={ restartMusic=true, bossChest=true, pauseDur=2 } }
                if self.rewardScene then rewardScene = self.rewardScene end
                cutscene:start("quickLook", {restartMusic=true, lookAtX = self.physics:getX(), lookAtY = self.physics:getY() - 8, lookDur=sceneTime, nextScene=rewardScene}) -- self.class should be unique enough to figure out the chest
            else
                particleEvent("death", ex, ey)
                dj.play(sounds.enemies.die, "static", "effect")
                self:deathDrop()
            end
        else
            self.dead = true
        end
    end

    function enemy:startIntro()
        if self.intro then
            if self.state == -4 then self:unhide() end
            if self.bossMusic then dj.fade(1) end
            enemy:cutsceneStart(-1)
        end
    end

    -- This update function is the same for all enemies, regardless of type
    function enemy:update(dt)
        if self.flashTimer > 0 then
            self.flashTimer = self.flashTimer - dt
            if self.flashTimer < 0 then self.flashTimer = 0 end
        end

        if self.state == -4 then
            self.physics:setLinearVelocity(0, 0)

            if self.waitingIntro and self.intro then
                local dist = 96
                if self.intro.triggerDist then dist = self.intro.triggerDist end
                if distanceBetween(self.homeX, self.homeY, player:getX(), player:getY()) < dist then
                    self.waitingIntro = false
                    if self.intro.blockades then walls:undelay("blockade") end
                    if self.intro.fullCutsceneDur then
                        local totalDur = self.intro.fullCutsceneDur
                        cutscene:start("lookAtThis", {enemyIntroId=self.uniqueId, lookAtX=self.homeX, lookAtY=self.homeY, lookDur=totalDur, finishMusic=self.bossMusic})
                    else
                        enemy:startIntro()
                    end
                end
            end
        end

        if self.state == -1 then
            self.physics:setLinearVelocity(0, 0)
            --return
        end

        if self.state == -2 and self.escapeVec then
            self.physics:setCollisionClass("Ignore")
            self.physics:setLinearVelocity(self.escapeVec.x, self.escapeVec.y)
            self.rot = math.pi/-6
            self.scaleX = 1
            self.lastMoveDir = vector(1,0)
            self.drawShadow = false
            if self.animTimer <= 0 then
                self.dead = true
                if self.class == "daitengu" then
                    events:start({resetElevators=true})
                    local pn = pins:getByName("elevator")
                    if pn then cutscene:start("lookAtThis", {lookAtX=pn.x, lookAtY=pn.y, lookDur=1.5, restartMusic=true}) end
                end
            end
        end

        if self.burningTimer > 0 then
            enemy.burnAnim:update(dt)
            self.burningTimer = self.burningTimer - dt
            if self.burningTimer < 0 then
                self.burningCounter = self.burningCounter - 1
                --self:softHit(1) -- fire damage
                self:hit(1)
                if self.burningCounter > 0 then
                    self.burningTimer = 1
                else
                    self.burningTimer = 0
                    if not self.lit then self.killLight = true end
                end
            end
        end

        if self.wings then self.wingAnim:update(dt) end
        if self.electrified then self.electricAnim:update(dt) end

        if self.stunTimer > 0 then self.stunTimer = self.stunTimer - dt end
        if self.stunTimer < 0 then self.stunTimer = 0 self.physics:setLinearDamping(self.baseDamping) end

        if self.attackBuffer > 0 then -- attack buffer still ticks if stunned
            self.attackBuffer = self.attackBuffer - dt if self.attackBuffer < 0 then self.attackBuffer = 0 end
        end

        if self.animTimer > 0 then -- animTimer still ticks if stunned
            self.animTimer = self.animTimer - dt if self.animTimer < 0 then self.animTimer = 0 end
        end

        if self.stunTimer > 0 then return end -- don't do ANY logic if stunned
        ------------------------------------------------------------------------------------------------------------------------

        if self.physics and (self.physics:getX() < -64 or self.physics:getX() > gameMap.pixelWidth or self.physics:getY() < -64 or self.physics:getY() > gameMap.pixelHeight) then
            self.outsideMap = true
            if self.outsideMap and self.class == "sentry" then self.dead = true end
        end

        if self.health <= 0 and self.state ~= 29 then
            if not self.boss then self.dead = true end
            if self.permId and not data.states.permEnemies[self.permId] then
                data.states.permEnemies[self.permId] = true -- added this enemy's permId to data so it won't spawn again
            end
            self:death()
        end

        if not self.physics then return end

        if self.canRedden then
            if self.health < self.maxHealth/2 then
                self.redness = (1 - self.health/(self.maxHealth/2))
                if self.redness > 1 then self.redness = 1 end
                if self.redness < 0 then self.redness = 0 end
            end
        end

        if self.anim then
            local animSpd = 1
            if self.state == 11 then animSpd = self.pursueAnimSpeedFactor end
            self.anim:update(dt * animSpd)
        end

        if self.state >= 10 and not self.fightStarted then
            self.fightStarted = true
            if self.blockades then walls:undelay("blockade") end
        end

        local isInWater = inWater(self.physics:getX(), self.physics:getY(), 1)
        if not self.float and isInWater then
            if self.health > 0 then
                self:death(true)
                sink(self.physics:getX(), self.physics:getY())
            end
        end

        if gameMap.isSky and isInWater then self.shadowState = 0 else self.shadowState = 1 end

        -- MOVEMENT LOGIC
        if self.state == 0 or self.state == 10 then -- idle, not moving (10 is alerted)
            -- do nothing
            if self.animTimer <= 0 then self:stateTrigger({msg="state 0 or state 10 animTimer decrease"}) end -- this should change it to something other than 0
        elseif self.state == 1 or self.state == 11 then -- move towards destX destY (wandering, or pursuing)

            local ex, ey = self.physics:getPosition()
            if self.state == 1 then

            elseif self.state == 11 and self.animTimer <= 0 then -- only do this portion every 0.25 seconds
                local totalSearchDist = self.searchDist
                if not self.constantAggro then totalSearchDist = self.searchDist * 4 end -- constant aggro means constant aggro RADIUS
                if not self.boss and distanceBetween(ex, ey, player:getX(), player:getY()) > totalSearchDist then
                    enemy:giveUp() return end
                
                if hasLineOfSight(ex, ey, player:getX(), player:getY(), totalSearchDist) then

                    self.destX = player:getX() self.destY = player:getY()
                    local attDist = 64
                    if self.attackDist then attDist = self.attackDist end
                    if self.attack and self.attack.attackDist then attDist = self.attack.attackDist end
                    if (self.attack and self.attack.attackType ~= "chase") and distanceBetween(ex, ey, player:getX(), player:getY()) < attDist then
                        if self.attackBuffer <= 0 then self:stateTrigger({msg="state 11, should attack now"}) end
                    end

                else

                    -- find best tile that has LOS with player, and LOS with enemy
                    local viable = tileStates:viablePursueTiles(ex, ey)
                    local finalList = {}
                    for _,i in ipairs(viable) do
                        local t = tileStates[i]
                        if hasLineOfSight(ex, ey, t.x, t.y, self.searchDist*2) then
                            table.insert(finalList, i)
                        end
                    end
                    if #finalList > 0 then
                        local finalInd = 1 local closestDist = 999999
                        for _,i in ipairs(finalList) do
                            local t = tileStates[i]
                            local dist = distanceBetween(t.x, t.y, player:getX(), player:getY())
                            if dist < closestDist then
                                finalInd = i
                                closestDist = dist
                            end
                        end
                        -- if you made it here, that means you have a finalInd, this is our new destX destY
                        local t = tileStates[finalInd]
                        self.destX = t.x
                        self.destY = t.y
                        self.lastPursueTileInd = finalInd
                    elseif self.lastPursueTileInd > 0 then
                        local t = tileStates[self.lastPursueTileInd]
                        self.destX = t.x
                        self.destY = t.y
                    else enemy:giveUp() return end
                end

                if self.state == 11 then -- need to recheck because state can change earlier in this section
                    self.animTimer = 0.25 -- refresh rate of this check
                    myPrint("animTimer set for 1/4s refresh " .. self.animTimer, "animTimer")
                end
            end

            local spd = self.walkSpeed
            if self.state > 10 then spd = self.pursueSpeed end
            self.lastMoveDir = getFromToVector(ex, ey, self.destX, self.destY):normalized()

            --self.physics:setLinearVelocity(self.lastMoveDir.x * spd, self.lastMoveDir.y * spd)

            -- TODO: Validate that this is framerate independent
            if distanceBetween(0, 0, self.physics:getLinearVelocity()) < spd then
                self.physics:applyForce((self.lastMoveDir:normalized()*spd):unpack())
            end

            local dist = distanceBetween(self.physics:getX(), self.physics:getY(), self.destX, self.destY)
            if self.state == 1 and dist < 3 then
                if self.idleType == "patrol" then
                    self.destPatrolPoint = self.destPatrolPoint + 1
                    if self.destPatrolPoint > self.totalPatrolPoints then self.destPatrolPoint = 1 end
                end
                self:stateTrigger({msg="destination reached"})
            end
            if self.state == 11 and dist < 3 then self.lastPursueTileInd = -1 end

        end

        if self.state == 5 and self.waitObj and self.waitObj.state then
            if self.animTimer <= 0 then
                self:waitWake()
            end
        end

        if self.state == 6 and self.waitObj and self.waitObj.state then
            if self.animTimer <= 0 then
                local ex, ey = self.physics:getPosition()
                if self.waitObj.wakeup == "lightning" then
                    if self.waitObj.state == 2 then
                        -- change to the charged animation
                        self:changeAnim("wake")
                        self.animTimer = 1.5
                        self.waitObj.state = self.waitObj.state + 1
                        self.waitObj.effectInterval = 0.7
                        shake:standard(2)
                        sem:playSound(sounds.attacks.zapHuge, {volume=0.75})
                        lightSources:adjustRadId(self.uniqueId, 128)
                    elseif self.waitObj.state < 16 then
                        -- spawn a lightning bolt
                        local spawnVec = vector(1, 0)*64
                        spawnVec:rotateInplace(math.random()*math.pi*-1)
                        effects2:spawn("fakeBolt", ex + spawnVec.x, ey - 16 + spawnVec.y, {dir=spawnVec})
                        self.animTimer = self.waitObj.effectInterval + math.random()*self.waitObj.effectInterval/2
                        self.waitObj.effectInterval = self.waitObj.effectInterval * 0.75
                        self.waitObj.state = self.waitObj.state + 1
                    elseif self.waitObj.state == 16 then
                        -- spawn big lightning bolt and whiteout
                        cover:start("cloudBossStart")
                        self.waitObj.state = self.waitObj.state + 1
                        lightSources:adjustRadId(self.uniqueId, 80)
                    end
                elseif self.waitObj.wakeup == "eyeris" then
                    self.waitObj.state = self.waitObj.state + 1
                    if self.waitObj.state == 2 then
                        player:look(1)
                        -- clear the cover
                        self.animTimer = 5
                    elseif self.waitObj.state == 3 then
                        local pn = pins:getByName('a')
                        sem:playSound(sounds.weapons.flame, {volume=0.85, pitchRand=0.1})
                        weapons:spawn("torch", pn.x, pn.y)
                        pn = pins:getByName('c')
                        sem:playSound(sounds.weapons.flame, {volume=0.85, pitchRand=0.1})
                        weapons:spawn("torch", pn.x, pn.y)
                        self.animTimer = 0.35
                    elseif self.waitObj.state == 4 then
                        local pn = pins:getByName('b')
                        sem:playSound(sounds.weapons.flame, {volume=0.85, pitchRand=0.1})
                        weapons:spawn("torch", pn.x, pn.y)
                        pn = pins:getByName('d')
                        sem:playSound(sounds.weapons.flame, {volume=0.85, pitchRand=0.1})
                        weapons:spawn("torch", pn.x, pn.y)
                        self.animTimer = 1.5
                    elseif self.waitObj.state == 5 then
                        player:look(-1)
                        self.animTimer = 0.75
                        cutscene:start("slowPan", {skipBars=true, lookAtX = self.physics:getX(), lookAtY = self.physics:getY(), lookDur=4})                        
                    elseif self.waitObj.state == 6 then
                        self:changeAnim("wake")
                        sem:playSound(sounds.enemies.roarCrushed, {volume=1})
                        enemy.waitObj.wakeAnim = "wake" -- used to trigger the onAnimComplete
                        self.animTimer = 9
                    end
                else
                    self:stateTrigger({msg="wake animation completed"})
                end
            end
        end

        if self.state ~= 11 then self.lastPursueTileInd = -1 end
        if self.state < 30 then self.jumpY = 0 end

        -- Searching for player
        if self.state >= 0 and self.state < 10 then
            self.searchRefreshTimer = self.searchRefreshTimer - dt
            if self.searchRefreshTimer <= 0 then
                if self:lookForPlayer() then
                    if self.state == 5 then -- sleeping state
                        if player.state == 0 or player.state == 0.5 then self:waitWakeStart() end
                    elseif self.state == 6 then -- waking, no need to look for player
                        -- do nothing
                    elseif self.exclaims then
                        self.state = 10
                        effects:spawn("exclamation", self.physics:getX(), self.physics:getY() - self.alertY)
                        self:changeAnim("idle")
                        self.animTimer = 0.3
                        dj.play(sounds.enemies.notice, "static", "effect")
                        myPrint("animTimer exclaims " .. self.animTimer, "animTimer")
                    elseif self.attack.attackType == "landmine" then
                        -- attack immediately
                        dj.play(sounds.enemies.alert, "static", "effect")
                        self:windup()
                    else
                        -- immediately start pursuing
                        self.state = 10
                        self:stateTrigger({msg="instantly start pursuing"})
                    end
                end
                self.searchRefreshTimer = 0.25
            end
        end

        if self.state == 19 then -- aggro wait
            if self.animTimer <= 0 then
                if player.state ~= 13 then
                    self:stateTrigger({msg="aggro wait complete"})
                    if self.postAggroWaitTimer then
                        self.attackBuffer = self.postAggroWaitTimer
                    else
                        self.attackBuffer = math.random()
                    end
                else
                    self.animTimer = 0.2 + math.random()/2 -- random amount of time to wake up between all enemies
                    myPrint("animTimer aggro wait " .. self.animTimer, "animTimer")
                end
            end
        end

        if self.state == 29 then -- dying (boss)
            if self.animTimer <= 0 then
                local ex, ey = self.physics:getPosition()
                self.bossBlastCount = self.bossBlastCount + 1
                if self.bossBlastCount > 13 then
                    enemy:bossFinalDeath()
                else
                    self.animTimer = 0.15
                    local range = math.random()/3
                    local xpos = math.random() * self.width
                    local ypos = math.random() * self.height
                    dj.play(sounds.player.dieLand, "static", "effect", 1, 1-range)
                    particleEvent("death", ex + math.random(-20, 20), ey + math.random(-20, 20))
                end
            end
        end

        if self.state == 30 then
            if not self.hasAttacked and self.attack.attackStartFrame then
                if self.anim.position == self.attack.attackStartFrame then
                    self:stateTrigger({msg="attackStartFrame reached"})
                end
            end

            if self.attack.windupTrackingY then
                local ex, ey = self.physics:getPosition()
                -- TODO: Validate that this is framerate independent
                if distanceBetween(ex, player:getX(), ex, ey) > 4 then
                    local spd = 250 if self.attack.trackingSpeed then spd = self.attack.trackingSpeed end
                    local destDir = vector(0, 1) * spd
                    if player:getY() < ey then destDir.y = destDir.y * -1 end
                    self.physics:applyForce((destDir:normalized()*spd):unpack())
                end
            end
        end

        if self.state == 34 then
            local track = 0
            local spd = 200
            if self.attack and self.attack.fly then 
                if self.attack.fly.trackingVal then track = self.attack.fly.trackingVal end
                if self.attack.fly.speed then spd = self.attack.fly.speed end
                if self.attack.flavor == "horizontalWrap" then
                    if (self.scaleX < 0 and player:getX() - self.physics:getX() > self.wrapThresh) or
                    (self.scaleX > 0 and self.physics:getX() - player:getX() > self.wrapThresh) then
                        enemy:flyWrap()
                    end
                end
            end

            if self.flyTracker == 0 or (self.lastMoveDir.x < 0 and self.physics:getX() < player:getX()) or
                (self.lastMoveDir.x > 0 and self.physics:getX() > player:getX()) then
                track = 0
            end
    
            if track ~= nil and track ~= 0 then
                self.lastMoveDir = rotate_vector_towards_point(self.lastMoveDir, self.physics:getX(), self.physics:getY(), player:getX(), player:getY(), track)
            end
            if self.flyTracker == 0 or self.flyTracker == self.flyMax then self.lastMoveDir = vector(self.scaleX, 0):normalized() end

            self.lastMoveDir:normalizeInplace()
            self.lastMoveDir = self.lastMoveDir * spd

            self.physics:setLinearVelocity(self.lastMoveDir.x, self.lastMoveDir.y)

            if self.flyTracker >= self.flyMax and distanceBetween(self.physics:getX(), self.physics:getY(), self.homeX, self.homeY) < 80 then
                self:stateTrigger({msg="flyMax reached, skidding to stop"})
            end
        end

        local animTimerStates = {10, 15, 30, 31, 32, 33}
        if tableContainsValue(animTimerStates, self.state) then
            if self.animTimer <= 0 then self:stateTrigger({msg="animTimer standard reached"}) end
        end

        if self.state == -2 and self.cutsceneUseTimer then
            if self.animTimer <= 0 then
                self.cutsceneUseTimer = false
                self.cutsceneState = self.cutsceneState + 1
                self:cutsceneTimerEvent()
            end
        end

        if self.state == -3 then
            if self.animTimer <= 0 then
                --self:stateTrigger({msg="state -3 animTimer reached, reappearing"})
                if self.animName ~= "appear" then
                    if self.attack and self.attack.appearSound then
                        sem:playSound(self.attack.appearSound)
                    end
                    self:changeAnim("appear")
                end
            end
        end

        if self.strikeTimer > 0 then
            self.strikeTimer = self.strikeTimer - dt
        end
        if self.strikeTimer < 0 and self.physics then
            self.strikeTimer = 0
            effects2:spawn("playerLightning", self.physics:getX(), self.physics:getY())
        end
    end

    function enemy:stateTrigger(stateArgs)
        myPrint(stateArgs.msg, "stateTrigger") -- msg is required, since it helps with debugging
        if self.state == 0 then -- idle, not moving
            -- remember, this is what happens AFTER this current state is complete
            if self.idleType == "immobile" then
                self.physics:setLinearVelocity(0, 0)
                self.state = -1
            elseif self.idleType == "wander" then
                self:chooseNewDest("wander")
                self.state = 1
                self:changeAnim("walk")
            elseif self.idleType == "hide" then
                self.physics:setLinearVelocity(0, 0)
                self.state = 0
                self:changeAnim("hide")
            elseif self.idleType == "patrol" then
                self:chooseNewDest("patrol")
                self.state = 1
                self:changeAnim("walk")
            end
        elseif self.state == -3 then -- offscreen invisible, reappearing
            self:changeAnim("appear")
        elseif self.state == 1 then -- walking towards destX destY
            self.state = 0
            self.animTimer = 1 + math.random() * 2
            if self.idleType == "patrol" then self.animTimer = self.patrolPointWait end
            self:changeAnim("idle")
        elseif self.state == 6 then -- waking
            self.state = 19 -- aggro wait
            self.animTimer = 1
            if self.waitObj and self.waitObj.aggroPause then self.animTimer = self.waitObj.aggroPause end
            if self.waitObj and self.waitObj.newMusic then cutscene.finishMusic = self.waitObj.newMusic end
            self:changeAnim("idle")
        elseif self.state == 10 then -- alerted
            self.state = 11
            self:changeAnim("walk")
        elseif self.state == 11 then -- close enough to the player to attack
            if self.attack then self:windup() end
        elseif self.state == 15 then -- giving up
            self.state = 0
            self:stateTrigger({msg="giving up"})
        elseif self.state == 19 then -- aggro'd but waiting, now will pursue
            self.state = 11
            self:changeAnim("walk")
        elseif self.state == 30 then -- windup
            self:doAttack()
        elseif self.state == 31 or self.state == 32 then -- tackle/shoot/barrage/circle
            local doneAttacking = true
            if self.attack.barrageMax then
                if self.barrageCounter < self.attack.barrageMax then self:doAttack() doneAttacking = false end
            end
            if doneAttacking then
                self.state = 11
                self.barrageCounter = 0
                self:changeAnim("walk")
                self:cycleAttackType(1)
            end
        elseif self.state == 33 then
            self.state = 0
            self:stateTrigger({msg="instant change from 33 to 0, then stateTriggering"})
            self:cycleAttackType(1)
        elseif self.state == 34 then
            self.state = 35 -- skidding to a stop
            self.physics:setLinearDamping(self.baseDamping*2)
            self:changeAnim("skid")
        elseif self.state == 35 then
            self.physics:setLinearDamping(self.baseDamping)
            self:changeAnim("idle")
            self.state = 19 -- aggro wait
            self.animTimer = 0.5
            self:cycleAttackType(1)
        end
    end

    function enemy:windup()
        -- before ACTUALLY winding up, check to see if any cutscenes need to trigger
        self:checkForCutscenes()
        if self.state == -2 then return end -- if this state was reached, it's in a cutscene. Don't windup

        if self.attack.attackType == "disappearAndAppear" then
            self.homeX = self.physics:getX()
            self.homeY = self.physics:getY()
            self:hide()
            self:changeAnim('disappear')
            self.animTimer = 99 -- this gets updated again at the end of disappear animation
            if self.attack.disappearSound then
                sem:playSound(self.attack.disappearSound)
            end
            return
        end

        if self.attack.attackType == "instaSummon" then
            local px, py = player:getPosition()
            local distVal = 256
            if self.attack.dist then distVal = self.attack.dist end
            local offVec = vector(distVal, 0):rotated(math.random()*math.pi*2)

            spawnEnemy(px + offVec.x, py + offVec.y, self.attack.flavor, {waitTime=0.25})

            self.animTimer = -1
            self:cycleAttackType(1)
            return
        end

        self.hasAttacked = false
        self.state = 30 -- windup

        if self.attack.windupDur then self.animTimer = self.attack.windupDur
        elseif self.attack.attackStartFrame then self.animTimer = 999 -- handled by frame check
        else self.animTimer = 0.5 end
        myPrint("winding up, setting animTimer to " .. self.animTimer, "animTimer")

        self.attackDir = getSelfToPlayerVector(self.physics:getX(), self.physics:getY())
        local attStr = "attack" if self.attack.animName then attStr = self.attack.animName end
        self:changeAnim(attStr)

        self.anim:gotoFrame(1) -- done juuuust in case
        if self.attack.windupBoost then
            local destDir = (self.attackDir:normalized()*self.attack.windupBoost*-1)
            if self.attack.windupTrackingY then
                destDir = vector(self.scaleX*-1, 0):normalized()*self.attack.windupBoost
            end
            self.physics:applyLinearImpulse(destDir:unpack())
        end

        if self.attack.windupSound then
            local windVol = 1
            if self.attack.windupSoundVolume then windVol = self.attack.windupSoundVolume end
            local piRand = 0
            if self.attack.windupSoundPitchRand then piRand = self.attack.windupSoundPitchRand end
            sem:playSound(self.attack.windupSound, {volume=windVol, pitchRand=piRand})
        end
    end

    function enemy:checkForCutscenes()
        myPrint("checking for cutscenes", "cutscene")
        if self.cutscenes then
            for i,c in ipairs(self.cutscenes) do
                if self.state == -2 then return end -- cutscene has already started, stop checking
                if c.completed and not c.repeatable then -- do nothing
                elseif c.triggerType and c.triggerType == "healthPercentage" then
                    -- check if enemy health is below some threshold
                    local curPer = self.health / self.maxHealth
                    if curPer <= c.triggerVal then
                        -- start the cutscene
                        myPrint("starting cutscene at index " .. i, "cutscene")
                        self:cutsceneStart(i)
                        return -- cutscene has been found
                    end
                end
            end
        end
    end

    function enemy:doAttack() -- .attack is taken by the attack object, so this is doAttack
        -- attack animation change happens in windup
        self.hasAttacked = true
        local vol = 1
        local pitch = 1
        local pitchRand = 0
        if self.attack.soundVolume then vol = self.attack.soundVolume end
        if self.attack.soundPitch then pitch = self.attack.soundPitch end
        if self.attack.soundPitchRand then pitchRand = self.attack.soundPitchRand end
        if self.attack.sound then sem:playSound(self.attack.sound, {volume=vol, pitch=pitch, pitchRand=pitchRand}) end
        local att = self.attack.attackType
        if att == "tackle" or att == "slash" then
            self.state = 31 -- tackle state
            self.physics:applyLinearImpulse((self.attackDir:normalized()*self.attack.boost):unpack())

            if att == "slash" then
                local ex, ey = self.physics:getPosition()
                effects2:spawn("slice", ex, ey, {enemyUniqueId=self.uniqueId, dir=self.attackDir:normalized()})
                local dim = {shape = "semicircle", x = ex, y = ey, rad = self.attack.hitRad}
                local hitTime = 0.2 if self.attack.hitboxTime then hitTime = self.attack.hitboxTime end
                spawnHitbox(dim, {parentType="enemyAttack", dir=self.attackDir, enemyUniqueId=self.uniqueId, deadOnHit=false, parentVal=self, spareEnemies=true, timer=hitTime})
            end
            
            if self.attack.jumpHeight and self.attack.jumpTime then
                local fluxTime = self.attack.jumpTime/2
                flux.to(self, fluxTime, {jumpY = self.attack.jumpHeight*-1}):ease("quadout"):oncomplete(function()
                    flux.to(self, fluxTime, {jumpY = 0}):ease("quadout")
                end)
            end
        end
        if att == "shoot" or att == "effect" then
            self.state = 32 -- shoot/circle state

            local ex, ey = self.physics:getPosition()
            local px = ex
            local py = ey + self.projOffY
            local spd = self.attack.projSpeed -- can (and normally should) be nil. Overwrites default projectile speed
            local shdir = getSelfToPlayerVector(px, py):normalized()
            if self.attack.flavor == "hyperBeam" then
                shdir = vector(self.scaleX, 0)
                spd = 1
            end
            if self.attack.shdir then
                shdir = self.attack.shdir
                self.attackDir = shdir
            end

            if self.attack.boost then self.physics:applyLinearImpulse((shdir:normalized()*self.attack.boost):unpack()) end
            if self.attack.projSpawnDist and self.attack.projSpawnDist > 0 then shdir = shdir * self.attack.projSpawnDist
            elseif self.projSpawnDist and self.projSpawnDist > 0 then shdir = shdir * self.projSpawnDist end

            local offVec = vector(0, 0)
            if self.attack.hitOff then
                print(self.attack.hitOff)
                offVec = self.attackDir:normalized() * self.attack.hitOff
            end

            if self.attack.flavor:startswith('lob_') then
                -- get the string after the underscore
                local lobId = self.attack.flavor:sub(5)
                spawnLob(lobId, px + shdir.x + offVec.x, py + shdir.y + offVec.y, shdir, {uniqueId = self.uniqueId .. '-' .. math.random(), dir = shdir:normalized(), speed = spd, lineSpawn = self.attack.lineSpawn, shotgun = self.attack.shotgun, shotgunAngle = self.attack.shotgunAngle, spareEnemies=true})
            elseif att == "shoot" then
                local otherYoff = self.projOffY
                if self.attack.projOffY then otherYoff = self.attack.projOffY end
                projectiles:spawn(self.attack.flavor, px + shdir.x + offVec.x, py + otherYoff + offVec.y + shdir.y, {dir = shdir:normalized(), speed = spd, lineSpawn = self.attack.lineSpawn, shotgun = self.attack.shotgun, shotgunAngle = self.attack.shotgunAngle, trackingVal = self.attack.trackingVal, spiralVal = self.attack.spiralVal, spiralTime = self.attack.spiralTime, spareEnemies=true})
            elseif att == "effect" then
                effects2:spawn(self.attack.flavor, px + shdir.x + offVec.x, py + shdir.y + offVec.y, {uniqueId = self.uniqueId .. '-' .. math.random(), dir = shdir:normalized(), speed = spd, lineSpawn = self.attack.lineSpawn, shotgun = self.attack.shotgun, shotgunAngle = self.attack.shotgunAngle, trackingVal = self.attack.trackingVal, spiralVal = self.attack.spiralVal, spiralTime = self.attack.spiralTime, spareEnemies=true})
            end
        end
        if att == "circle" then
            self.state = 32 -- shoot/barrage/circle state
            local ex, ey = self.physics:getPosition()
            local lineDir = vector(1, 0)
            local spd = self.attack.projSpeed -- can (and normally should) be nil. Overwrites default projectile speed
            local totalProj = 16
            if self.attack.circleProjCount then totalProj = self.attack.circleProjCount end
            local spawnDist = 32
            if self.attack.projSpawnDist and self.attack.projSpawnDist > 0 then spawnDist = self.attack.projSpawnDist
            elseif self.projSpawnDist and self.projSpawnDist > 0 then spawnDist = self.projSpawnDist end

            for i=1,totalProj do
                if self.attack.flavor == "lightning" then
                    local extraYoff = 16
                    effects:spawn("lightning", ex + (lineDir.x * spawnDist), ey + self.projOffY + (lineDir.y * spawnDist) + extraYoff, {enemyAttack = true})
                    --effects2:spawn("playerLightning", ex + (lineDir.x * spawnDist), ey + self.projOffY + (lineDir.y * spawnDist), {spareEnemies=true, sparePlayer=false})
                elseif self.attack.flavor == "shock" then
                    local spawnDir = vector(24,0):rotated(math.pi*2/totalProj*i)
                    effects:spawn("shock", self.physics:getX() + spawnDir.x, self.physics:getY() + spawnDir.y, {dir=spawnDir, spareEnemies=true, sparePlayer=false})
                elseif self.attack.flavor:startswith('lob_') then
                    -- get the string after the underscore
                    local lobId = self.attack.flavor:sub(5)
                    spawnLob(lobId, ex + (lineDir.x * spawnDist), ey + self.projOffY + (lineDir.y * spawnDist), lineDir, {speed = spd, lineSpawn = self.attack.lineSpawn, shotgun = self.attack.shotgun, shotgunAngle = self.attack.shotgunAngle, spareEnemies=true})
                else
                    local otherYoff = self.projOffY
                    if self.attack.projOffY then otherYoff = self.attack.projOffY end
                    projectiles:spawn(self.attack.flavor, ex + (lineDir.x * spawnDist), ey + otherYoff + (lineDir.y * spawnDist), {dir = lineDir, speed = spd, lineSpawn = self.attack.lineSpawn, shotgun = self.attack.shotgun, shotgunAngle = self.attack.shotgunAngle, trackingVal = self.attack.trackingVal, spiralVal = self.attack.spiralVal, spiralTime = self.attack.spiralTime, spareEnemies=true})
                end
                lineDir = lineDir:rotated(math.pi*2/totalProj)
            end
        end
        if att == "summon" then
            self.state = 32 -- shoot/barrage/circle/summon state
            local ex, ey = self.physics:getPosition()
            spawnEnemy(ex, ey, self.attack.flavor, {waitTime=0.25})
        end
        if att == "landmine" then
            self.state = 33 -- landmine attack state
            if self.attack.flavor == "shock" and self.health > 0 then
                effects:spawn("shock", self.physics:getX(), self.physics:getY(), {dir=getSelfToPlayerVector(self.physics:getX(), self.physics:getY())})
                spawnBlast(self.physics:getX(), self.physics:getY(), 80, nil, 0.2)
            end

            local passTable1 = {scaleX = 1.8}
            local passTable2 = {scaleX = 1}

            self.rot = 0
            flux.to(self, 0.25, {rot = math.pi/2}):ease("quadout")
            flux.to(self, 0.1, passTable1):ease("quadout"):oncomplete(function()
                self:changeAnim("idle")
                flux.to(self, 0.15, passTable2):ease("sineinout")
            end)
        end
        if att == "flyAround" then
            enemy:startFlyAround()
        end

        if self.attack.finishTime then
            self.animTimer = self.attack.finishTime -- returns back to pursuing state after this time
        else
            self.animTimer = 999 -- handled by onAnimComplete
        end

        myPrint("just finished attackType " .. att .. ", animTimer " .. self.animTimer, "animTimer")
        self.attackBuffer = self.attack.bufferTime -- time before attack can be triggered again
        if not self.attack.bufferTime then self.attackBuffer = 1 end
        if self.attack.bufferRandom then self.attackBuffer = self.attackBuffer + (self.attack.bufferRandom * math.random()) end
        self.lastMoveDir = self.attackDir

        if self.attack.barrageMax then
            self.barrageCounter = self.barrageCounter + 1
            self.animTimer = self.attack.barragePause
        end

        if self.attack.shake then
            shake:standard(self.attack.shake)
        end
    end

    function enemy:giveUp()
        self.state = 15
        self.animTimer = 1
        self:changeAnim("idle")
    end

    function enemy:chooseNewDest(flvr)
        if not self.physics then return end
        if flvr == "wander" then -- choose a point that has LOS to any point that has LOS with home
            local nearby = getSightTileIndexList(self.physics:getX(), self.physics:getY(), self.wanderDist)
            
            -- if the current tile is in homeTileIndexList, then ANY nearby tile is valid
            -- otherwise, only choose a tile that is in both homeTileIndexList and nearby
            local ex, ey = self.physics:getPosition()
            local currentInd = tileStates:getClosestInd(ex, ey)
            local inHomeSight = distanceBetween(ex, ey, self.homeX, self.homeY) < self.wanderDist
            local minTileDist = 16

            local validTiles = {}
            if inHomeSight then
                -- choose only tiles that are 16px or more away
                -- TODO: also need to verify that there isn't water in the way
                for _,t in ipairs(nearby) do
                    if distanceBetween(ex, ey, tileStates[t].x, tileStates[t].y) >= minTileDist and not tileStates[t].inWater then table.insert(validTiles, t) end
                end
            else
                -- only use tiles that are in both lists
                -- TODO: I don't think this part is working correctly
                for _,t in ipairs(nearby) do
                    for _,h in ipairs(self.homeTileIndexList) do
                        if t == h then table.insert(validTiles, t) end
                    end
                end
            end

            if #validTiles > 0 then
                local newInd = validTiles[math.random(#validTiles)]
                local newTile = tileStates[newInd]
                self.destX = newTile.x
                self.destY = newTile.y
            else
                self.destX = self.homeX
                self.destY = self.homeY
            end
        end

        if flvr == "patrol" then
            self.destX = self["x" .. self.destPatrolPoint]
            self.destY = self["y" .. self.destPatrolPoint]
        end
    end

    --function enemy:hit(damage, dir, stun, dizziness, proj, newMag, hitboxId)
    function enemy:hit(damage, args)

        if args and args.hitboxId then
            -- check if self hit buffer has this id in it
            local i = #self.hitlist
            while i > 0 do
                if self.hitlist[i] == args.hitboxId then
                    return nil
                end
                i = i - 1
            end
            table.insert(self.hitlist, args.hitboxId)
        end

        if self.onHit then self:onHit() end

        if damage < 1 then damage = 0 end
        damage = math.floor(damage)
        self.health = self.health - damage
        self.stunTimer = 0.1
        self.lastHitDir = nil

        player.mana = player.mana + damage

        local superArmor = false
        if self.state >= 30 then
            if self.attack and self.attack.superArmor ~= nil then
                superArmor = self.attack.superArmor
                stunTimer = 0
            end
        end
        
        if damage > 0 and allGems.emerald then
            if math.random() < 0.11 then
                damage = damage * 2
                -- damage effect
                local total = 14
                for i=1,total do
                    local dmgDir = vector(1, 0):rotated(math.pi*2*math.random())
                    effects:spawn("damage", self.physics:getX(), self.physics:getY(), {dir = dmgDir, color = "green"})
                end
                sem:playSound(sounds.jewelry.critical, {volume=1})
            end
        end

        if self.invincible and self.health <= 0 then self.health = self.maxHealth end

        local mag = 150
        if args and args.stunTime then self.stunTimer = args.stunTime end -- these should ALWAYS be passed in
        if args and args.mag then mag = args.mag end

        if self.health <= 0 and not self.boss then
            self.stunTimer = 0.28
            if mag < 200 then mag = 200 else self.stunTimer = 0.3 mag = 290 end
            if self.instaDeath then self.stunTimer = -1 end
        end

        shake:standard(1)

        if self.disintigrated then return end

        if args and args.dir and not superArmor then
            self.lastHitDir = args.dir
            self.physics:setLinearDamping(self.hitDamping)
            if self.health <= 0 then self.physics:setLinearDamping(2) end
            self.physics:setLinearVelocity((args.dir:normalized()*mag):unpack())
        end

        player.slippery = false -- fallback in case this doesn't happen somewhere else

        if self.class == "jelly" then damage = 0 end

        self.flashTimer = 0.175
        if damage == 0 then self.flashTimer = 0 end
        globalStun = 0.05

        -- damage effect
        if damage > 0 then
            local total = 18
            local useDir = false
            if args and args.dir and args.dir:len() > 0 then useDir = true total = 14 end
            for i=1,total do
                local dmgDir = vector(1, 0):rotated(math.pi*2*math.random())
                if useDir then dmgDir = args.dir end
                effects:spawn("damage", self.physics:getX(), self.physics:getY(), {dir = dmgDir})
            end
            if damage > 1 then
                for i=1,total do
                    local dmgDir = vector(1, 0):rotated(math.pi*2*math.random())
                    if useDir then dmgDir = args.dir end
                    effects:spawn("damage2", self.physics:getX(), self.physics:getY(), {dir = dmgDir})
                end
            end
        end
        
        if not self.instaDeath then
            dj.play(sounds.enemies.hurt, "static", "effect", 0.85, 0.9+math.random()/4)
        end
        if damage > 1 then dj.play(sounds.enemies.impactHeavy, "static", "effect", 0.45, 0.85+math.random()/9) end

        if self.state >= 0 and self.state < 10 then
            self.state = 11 -- aggro the enemy when hit off-guard
        end

        if self.state >= 11 and self.state < 20 then -- aggro'd, pursuing the player
            self.animTimer = self.animTimer + self.flashTimer -- helps prevent state transitions from happening while they're getting combo'd on
            myPrint("animTimer combo protection " .. self.animTimer, "animTimer")
        end

        if self.state == 30 then -- winding up, interupt it to aggro wait
            local poiseVal = true -- by default, all attacks CANT be interrupted
            if self.attack and self.attack.poise ~= nil then poiseVal = self.attack.poise end
            if self.attack and self.attack.superArmor ~= nil then poiseVal = self.attack.superArmor end
            if not poiseVal then
                self.state = 19
                self.animTimer = 0.5
                myPrint("animTimer set for hit " .. self.animTimer, "animTimer")
                self:changeAnim("idle")
            end
        end

        if self.state == 34 then -- flyAround
            if self.flyTracker >= self.flyMax then
                self.state = 35
                self:stateTrigger({msg="flyMax reached, hit to stop"})
            else
                self.lastMoveDir.x = self.lastMoveDir.x * -1
                self.scaleX = self.scaleX * -1
            end
        end

        local totalInterruptStates = {31, 32, 33}
        if not self.boss and tableContainsValue(totalInterruptStates, self.state) then
            self.animTimer = 0
            self:stateTrigger({msg="state interrupted by getting hit"})
        end

        if self.class == "dummy" then
            self.lastMoveDir.x = self.lastMoveDir.x * -1
        end

        if args and args.strikeTime then
            self.strikeTimer = args.strikeTime
        end
    end

    function enemy:burn()
        if self.physics then
            if self.burningTimer <= 0 then
                spawnLightSource(self.physics:getX(), self.physics:getY(), 20 * self.lightFactor, self.uniqueId, 2)
            end
            if self.burningTimer <= 0 then self.burningTimer = 1 end
            self.burningCounter = 5
            self.burnAnim:gotoFrame(1)
        end
    end

    function enemy:spawnProjectiles()
        local ex, ey = self.physics:getPosition()
        if self.attack.flavor:lower():find("cloudshockspiral") then
            local num = 4
            if self.phase and self.phase >= 2 then num = 6 end
            local vec = vector(16, 16)
            for i = 1, num do
                projectiles:spawn(self.attack.flavor, ex + vec.x, ey + vec.y, {dir = vec, speed = 180, trackingVal = self.attack.trackingVal, spiralVal = self.attack.spiralVal, spiralTime = self.attack.spiralTime, spareEnemies=true})
                vec:rotateInplace(math.pi*2/num)
            end
        end
    end
    
    function enemy:canHurtPlayer()
        return self.stunTimer <= 0 and self.health > 0 and self.danger > 0
    end

    function enemy:changeAnim(newAnim)
        if self.anim == nil then return end
        if self.animType == "simple" then return end

        self.animName = newAnim -- required for other stuff
        local trueNewAnim = newAnim
        if not self.animations[newAnim] then -- catches for certain scenarios where relevant
            if newAnim == "windup" and self.animations[self.attack.animName] then trueNewAnim = self.attack.animName end
        end

        if self.animations[trueNewAnim] and self.anim ~= self.animations[trueNewAnim] then
            self.animations[trueNewAnim]:gotoFrame(1)
            self.anim = self.animations[trueNewAnim]
        end
    end

    function enemy:customDraw()
        local ex, ey = self.physics:getPosition()
        if self.cutscene then ex = self.cutsceneX ey = self.cutsceneY + self.cutsceneOffY end
        if self.class == "sentry" then
            self.anim:draw(self.sprite, ex, ey + self.offY + self.jumpY + self.floatY, self.rot, self.scaleX, self.scaleY, self.width/2, self.height/2)
            return true
        end
        if self.class == "eyeRed" then
            self.anim:draw(self.sprite, ex, ey + self.offY + self.jumpY + self.floatY, self.rot, self.scaleX, self.scaleY, self.width/2, self.height/2)
            return true -- Don't forget this!
        end
        if self.class == "hornetSoldier" then
            self.anim:draw(self.sprite, ex, ey + self.offY + self.jumpY + self.floatY, self.rot, self.scaleX, self.scaleY, self.width/2, self.height/2)
            if self.anim == self.animations.attack2 then return end
            local irisSpr = sprites.enemies.eyeIrisSmall
            local irisDistFactor = 1.3
            local lookVec = self.lastMoveDir:normalized()*irisDistFactor
            if self.state >= 10 then lookVec = getSelfToPlayerVector(ex, ey):normalized()*irisDistFactor end
            if self.state >= 30 then lookVec = self.attackDir:normalized()*irisDistFactor end
            local extraEyeOff = 0
            if self.anim.position > 2 then extraEyeOff = 1 end
            if self.state == 31 then extraEyeOff = -1 end -- tackle
            local eyeX = ex + lookVec.x + (self.scaleX * 6)
            local eyeY = ey + self.offY + self.jumpY + self.floatY + lookVec.y - 3 - extraEyeOff
            love.graphics.draw(irisSpr, eyeX, eyeY, nil, 1, 1, irisSpr:getWidth()/2, irisSpr:getHeight()/2)
            --love.graphics.circle("fill", ex + (self.scaleX * 6), eyeY - lookVec.y, 2)
            return true -- Don't forget this!
        end
        return false
    end

    function enemy:setScaleX()
        if self.state == 29 then return end -- dying state, has scale changes
        if self.constantScaleX then self.scaleX = 1 return end
        if self.lastMoveDir.x > 0 then self.scaleX = 1 else self.scaleX = -1 end
    end

    function enemy:draw()
        setWhite()
        local ex, ey = self.physics:getPosition()
        if self.cutscene then ex = self.cutsceneX ey = self.cutsceneY + self.cutsceneOffY end
        if self.state == -3 and (self.animName == "disappear" or self.animName == "appear") then
            ex = self.homeX
            ey = self.homeY
        end

        if self.flashTimer > 0 then love.graphics.setShader(shaders.whiteout) end

        if self.wings and self.wingAnim then
            local wingOffX = 0
            local wingOffY = 0
            local wingW = self.wings.frameW
            local wingH = self.wings.frameH
            if self.wings.offX then wingOffX = self.wings.offX * self.scaleX end
            if self.wings.offY then wingOffY = self.wings.offY end
            self.wingAnim:draw(self.wings.spr, ex + wingOffX, ey + self.offY + self.jumpY + self.floatY + wingOffY, self.rot, self.scaleX, self.scaleY, wingW/2, wingH/2)
        end

        enemy:setScaleX()
        if self:customDraw() then
            enemy:setScaleX()
            -- custom draw handles the drawing
        else
            love.graphics.setColor(1,1,1,1)
            if self.canRedden then
                love.graphics.setColor(1 + (self.redness * 0.6), 1 - (self.redness * 0.3), 1 - (self.redness * 0.3), 1)
            end
            if self.anim then
                self.anim:draw(self.sprite, ex, ey + self.offY + self.jumpY + self.floatY, self.rot, self.scaleX, self.scaleY, self.width/2, self.height/2)
            else
                love.graphics.draw(self.sprite, ex, ey + self.offY + self.jumpY + self.floatY, self.rot, self.scaleX, self.scaleY, 8, 9)
            end

            if self.eyeMap and self.anim then
                local irisSpr = self.eyeMap.irisSpr
                local framePos = self.anim.position
                local sheetRow = 1

                for i,a in ipairs(self.animOrder) do
                    local animName = a
                    -- find any commas and split them into separate animations
                    if string.find(a, ",") then
                        local animTable = split(a, ",")
                        for j=1,#animTable do
                            if j == self.animName then sheetRow = i end
                        end
                    else
                        if a == self.animName then sheetRow = i end
                    end
                end
                local offsetVec = self.eyeMap.offset[sheetRow][self.anim.position]
                if offsetVec then
                    -- upper left corner of the sprite image
                    local imageCenterX = ex
                    local imageCenterY = ey + self.offY + self.jumpY + self.floatY

                    local eyeHomeX = imageCenterX + (self.eyeMap.homeX + offsetVec[1]) * self.scaleX
                    local eyeHomeY = imageCenterY + self.eyeMap.homeY + offsetVec[2]

                    local lookingDir = self.lastMoveDir
                    if self.state >= 10 and self.state <= 30 then lookingDir = getSelfToPlayerVector(eyeHomeX, eyeHomeY) end
                    if self.eyeMap.lookDist then lookingDir = lookingDir * self.eyeMap.lookDist end

                    local finalEyeX = eyeHomeX + lookingDir.x
                    local finalEyeY = eyeHomeY + lookingDir.y
                    love.graphics.draw(irisSpr, finalEyeX, finalEyeY, nil, 1, 1, irisSpr:getWidth()/2, irisSpr:getHeight()/2)
                end
            end
        end

        love.graphics.setShader()

        if self.burningCounter > 0 then
            setWhite()
            self.burnAnim:draw(self.burnSheet, ex, ey, nil, 0.8, 0.8, 16, 16)
        end

        if self.electrified and not self.boss then
            self.electricAnim:draw(self.electricSheet, ex, ey, self.electricRot, 1, 1, 8, 8)
        end
    end

    if enemy.topLayer then
        function enemy:drawTopLayer() -- pierces the darkness
            local ex, ey = self.physics:getPosition()
            if self.cutscene then ex = self.cutsceneX ey = self.cutsceneY + self.cutsceneOffY end

            if self.class == "eyeRed" then
                if self.flashTimer > 0 then love.graphics.setShader(shaders.whiteout) end
                local irisSpr = sprites.enemies.eyeIris
                local lookVec = self.lastMoveDir:normalized()*2
                if self.state >= 10 then lookVec = getSelfToPlayerVector(ex, ey):normalized()*2 end

                love.graphics.setColor(1, 1, 1, 0.5)
                love.graphics.draw(sprites.enemies.eyeBall, ex, ey + self.offY + self.jumpY + self.floatY, nil, self.scaleX, 1, self.width/2, self.height/2) -- EXACTLY the same as the body
                setWhite()

                love.graphics.draw(irisSpr, ex + lookVec.x, ey + self.offY + self.jumpY + self.floatY + lookVec.y - 2, nil, 1, 1, irisSpr:getWidth()/2, irisSpr:getHeight()/2)
                love.graphics.setShader()
            end

            if self.class == "eyeris" then
                if self.state == 5 then return end
                local ex, ey = self.physics:getPosition()
                local eyeSpr = sprites.enemies.eyerisEye
                setWhite()
                if self.canRedden then
                    love.graphics.setColor(1 + (self.redness * 0.5), 1 - (self.redness * 0.25), 1 - (self.redness * 0.25), 1)
                end
                self.anim:draw(eyeSpr, ex, ey + self.offY + self.jumpY + self.floatY, self.rot, self.scaleX, self.scaleY, self.width/2, self.height/2)
                if self.burningCounter > 0 then
                    self.burnAnim:draw(self.burnSheet, ex, ey-self.floatY, nil, 1.25, 1.25, 16, 16)
                end
            end
        end
    end

    function enemy:processEvents(eventList)
        
        if eventList and #eventList > 0 then
            -- iterate through all strings in the list
            for i,e in ipairs(eventList) do

                local eid = nil
                local esup = nil
                if type(e) == "table" then
                    eid = e[1] esup = e[2]
                else
                    eid = e -- is a string (hopefully lol, why don't I validate it!)
                end

                myPrint("processing event " .. eid, "event")

                --if eid == "phaseChange" then self.phase = (self.phase + 1) self:setPhaseStats() end
                if eid == "phaseChange" then
                    if esup then
                        self.phase = esup
                        self:setPhaseStats()
                    else
                        self.phase = (self.phase + 1) self:setPhaseStats()
                    end
                end
                if eid == "alarmSentries" then
                    dj.play(sounds.misc.alarm, "static", "effect", 1)
                    -- spawn all the sentries, relative to homeX homeY
                    local sx = self.homeX
                    local sy = self.homeY + 40
                    spawnEnemy(sx - 344, sy - 152, "sentry", {x2=9999, y2=(sy-152)})
                    spawnEnemy(sx - 344, sy - 72, "sentry", {x2=9999, y2=(sy-72)})
                    spawnEnemy(sx - 344, sy + 8, "sentry", {x2=9999, y2=(sy+8)})
                    spawnEnemy(sx - 344, sy + 88, "sentry", {x2=9999, y2=(sy+88)})
                    spawnEnemy(sx - 344, sy + 168, "sentry", {x2=9999, y2=(sy+168)})
                    spawnEnemy(sx + 344, sy - 112, "sentry", {x2=-100, y2=(sy-112)})
                    spawnEnemy(sx + 344, sy - 32, "sentry", {x2=-100, y2=(sy-32)})
                    spawnEnemy(sx + 344, sy + 48, "sentry", {x2=-100, y2=(sy+48)})
                    spawnEnemy(sx + 344, sy + 128, "sentry", {x2=-100, y2=(sy+128)})
                end

                if eid == "attack" then
                    self.attack = esup
                    self:doAttack() -- fingers crossed!
                end

                if eid == "soundEffect" then
                    local vol = 1
                    local pitch = 1
                    if esup.vol then vol = esup.vol end
                    if esup.pitch then pitch = esup.pitch end
                    dj.play(esup.sound, "static", "effect", vol, pitch)
                end

            end
        end

    end

    function enemy:disintigrate()
        self.dead = true
        self.disintigrated = true
        --enemies:destroyDead() too dangerous??
    end

    function enemy:burnHeal()
        self.burningCounter = 0
        self.burningTimer = 0
        if not self.lit then self.killLight = true end
    end

    function enemy:cutsceneStart(sceneInd) -- index of enemy.cutscenes to pull from
        local scene = nil
        if sceneInd == -1 and self.intro then 
            scene = self.intro
        else
            scene = self.cutscenes[sceneInd]
        end
        
        if not scene then return end

        self.cutscene = scene -- REMEMBER: any writebacks need to happen using scene index and self.cutscenes
        self.cutsceneIndex = sceneInd

        self.cutsceneX = self.physics:getX() -- save current position
        self.cutsceneY = self.physics:getY()

        self.cutsceneOffY = 0 -- floating up state

        self.cutsceneState = 1
        self.state = -2 -- cutscene state
        self.physics:setLinearVelocity(0, 0)
        self.physics:setPosition(-500, -500)

        local evnts = self.cutscene.startEvents
        if evnts then self:processEvents(evnts) end

        if self.cutscene.id == "riseThenFall" then -- rising first
            local time = 2 if self.cutscene.riseTime then time = self.cutscene.riseTime end
            local newOffY = -256
            local pause = 2 if self.cutscene.pauseTime then pause = self.cutscene.pauseTime end
            flux.to(self, time, {cutsceneOffY = newOffY}):ease("sinein"):oncomplete(function()
                self.cutsceneX = self.homeX
                self.cutsceneY = self.homeY -- move the cutscene to the home position once it's offscreen
                self.cutsceneState = 2
                self.cutsceneUseTimer = true
                self.animTimer = pause
            end)
            flux.to(self, time, {shadowScaleFactor = 0}):ease("sinein") -- also scale shadow factor
        end

        if self.cutscene.id == "descend" then
            local easeType = "sineout"
            if self.cutscene.descendEasingType then easeType = self.cutscene.descendEasingType end
            local time = 2 if self.cutscene.fallTime then time = self.cutscene.fallTime end
            local newOffY = 0
            self.cutsceneOffY = self.cutscene.height
            self.shadowScaleFactor = 0
            flux.to(self, time, {cutsceneOffY = newOffY}):ease(easeType):oncomplete(function()
                self:cutsceneComplete()
            end)
            flux.to(self, time, {shadowScaleFactor = 1}):ease(easeType) -- also scale shadow factor
        end

        if self.cutscene.id == "appear" then
            self:changeAnim("appear")
            self.state = -1
        end
    end

    function enemy:hide()
        self.state = -3 -- intangible and invisble
        self.physics:setPosition(-500, -500)
    end

    function enemy:unhide()
        self.state = 0
        self.physics:setPosition(self.homeX, self.homeY)
    end

    if enemy.intro then
        if not enemy.intro.triggerDist then
            enemy:cutsceneStart(-1)
        else
            enemy:hide() enemy.state = -4 -- NOT aggro'd
            enemy.waitingIntro = true
        end
    end
    
    function enemy:cutsceneTimerEvent(args)
        if not self.cutscene then return end
        if self.cutscene.id == "riseThenFall" then -- now we're falling
            local easeType = "sineout"
            if self.cutscene.descendEasingType then easeType = self.cutscene.descendEasingType end
            local time = 2 if self.cutscene.riseTime then time = self.cutscene.riseTime end
            local newOffY = 0
            flux.to(self, time, {cutsceneOffY = newOffY}):ease(easeType):oncomplete(function()
                self:cutsceneComplete()
            end)
            flux.to(self, time, {shadowScaleFactor = 1}):ease(easeType) -- also scale shadow factor
        end
    end

    function enemy:cutsceneComplete()
        if not self.physics then return end
        if not self.cutscene then return end
        local evnts = self.cutscene.finishEvents
        local postWaitTime = 0.5 if self.cutscene.postWait then postWaitTime = self.cutscene.postWait end
        
        self.physics:setPosition(self.cutsceneX, self.cutsceneY)
        self.state = 19 -- aggro wait
        self.animTimer = postWaitTime
        myPrint("animTimer set for cutscene complete " .. self.animTimer, "animTimer")
        self:changeAnim("idle")

        if self.cutscene.phaseChange ~= nil then
            self.phase = self.cutscene.phaseChange
            self.attackIndex = 1
        end
        if evnts then self:processEvents(evnts) end
        -- mark the cutscene as completed, so it doesn't immediately run again
        if self.cutscenes and self.cutsceneIndex and self.cutscenes[self.cutsceneIndex] then
            if self.cutscenes[self.cutsceneIndex].completed then
                self.cutscenes[self.cutsceneIndex].completed = self.cutscenes[self.cutsceneIndex].completed + 1
            else
                self.cutscenes[self.cutsceneIndex].completed = 1
            end
        end
        self.cutscene = nil -- indicates no cutscene in progress, but we still have the cutscenes list
    end

    if args and (args.challengeId or args.waitTime) then
        local waitTime = 0.5
        enemy:changeAnim("idle")
        if args and args.waitTime then waitTime = args.waitTime end
        -- if cutscene is in progress, state 19 will wait until the player is not in cutscene state (13)
        if not args.destX then
            enemy.state = 19 -- aggro wait
            if player:getX() < x then enemy.lastMoveDir.x = -1 end
        end
        enemy.animTimer = waitTime -- time before going back to pursuing
        myPrint("animTimer set to waitTime " .. waitTime)
    end

    if args and (args.sleep or enemy.waitObj) then
        enemy:changeAnim("sleep")
        enemy.state = 5
    end

    if enemy.startWalking then enemy:changeAnim("walk") end

    table.insert(enemies, enemy)

end

function enemies:update(dt)

    -- Calls update functions on all enemies
    for i,e in ipairs(self) do
        e:update(dt)
    end
  
    -- Iterate through all enemies in reverse to remove the dead ones
    for i=#enemies,1,-1 do
        if enemies[i].dead then
            if enemies[i].physics ~= nil then
                enemies[i].physics:destroy()
            end
            table.remove(enemies, i)
        end
    end
  
end

function enemies:getByUniqueId(uid)
    local i = #enemies
    while i > 0 do
        if enemies[i].uniqueId == uid then return enemies[i] end
        i = i - 1
    end
end

function enemies:destroyDead()
    local i = #enemies
    while i > 0 do
        if enemies[i].dead then
            if enemies[i].physics then
                enemies[i].physics:destroy()
            end
            table.remove(enemies, i)
        end
        i = i - 1
    end
end

function enemies:destroyAll()
    local i = #enemies
    while i > 0 do
        if enemies[i].physics then
            enemies[i].physics:destroy()
        end
        table.remove(enemies, i)
        i = i - 1
    end
end

function enemies:resetAggro()
    local i = #enemies
    while i > 0 do
        enemies[i].state = 0
        i = i - 1
    end
end

function enemies:triggerBoss()
    for i,e in ipairs(enemies) do
        if e.boss then
            e:stateTrigger({msg="trigger boss"})
        end
    end
end

function spawnWaiting()
    if gameMap.waiting then
        gameMap.waiting = false
        if gameMap.layers["Enemies"] then
            for i, obj in ipairs(gameMap.layers["Enemies"].objects) do
                if obj.properties.waiting then
                    spawnEnemy(obj.x, obj.y, obj.name, obj.properties)
                end
            end
        end
    end
end
