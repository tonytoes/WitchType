local function electraInit(enemy, x, y, args)
    x = x - 24
    enemy.physics = world:newBSGRectangleCollider(x, y, 48, 24, 10)
    enemy.physics:setCollisionClass('Enemy2')
    enemy.physics:setFixedRotation(true)
    enemy.physics:setMass(4)
    enemy.physics:setLinearDamping(enemy.baseDamping)
    enemy.physics.parent = enemy

    enemy.boss = true
    enemy.bossState = 0
    enemy.bossTimer = 3 -- starting pause
    enemy.lightningTimer = 0
    enemy.lightningCount = 0
    enemy.attCounter = 0
    enemy.orbCounter = 0
    enemy.usedLightning = false
    enemy.usedOrb = false
    enemy.phaseTwo = false
    enemy.sprite = sprites.bosses.electra
    enemy.sprOffY = -12

    enemy.width = 64
    enemy.height = 64

    enemy.health = 50
    enemy.speed = 0
    enemy.maxSpeed = 40
    enemy.magnitude = 300
    enemy.dir = vector(0, 1)

    enemy.tackle = true
    enemy.tackleDist = 76
    enemy.danger = 4
    enemy.barY = 12
    enemy.shadowSpr = sprites.effects.shadows.giant
    enemy.shadowY = 12
    enemy.shadowOffX = 0
    enemy.shadowScale = 1
    enemy.hovers = true
    enemy.projPoise = true
    enemy.tackleCount = 0
    enemy.hookable = false
    enemy.poised = true
    enemy.heavy = true
    enemy.electrified = true

    function enemy:spawnLightning()
        local ex, ey = enemy.physics:getPosition()
        ey = ey + 4
        local num = 12
        local vec = vector(52 + enemy.lightningCount * 26, 0)
        for i = 1, num do
            effects:spawn("lightning", ex + vec.x, ey + vec.y*0.85, {enemyAttack = true})
            vec:rotateInplace(math.pi*2/num)
        end
        enemy.lightningCount = enemy.lightningCount + 1
        if enemy.usedLightning then
            enemy.lightningTimer = 0.2
        end

        local range = math.random()/4
        dj.play(sounds.spells.lightning, "static", "effect", 1, 1+range)
        shake:start(0.1, 1.5, 0.025)
        enemy:changeAnim("vert2")
    end

    function enemy:spawnOrb()
        local ex, ey = enemy.physics:getPosition()
        ey = ey + 6
        local num = 4
        if enemy.phaseTwo then
            num = 6
        end
        local vec = vector(16, 16)
        
        if enemy.orbCounter % 2 == 1 then
            -- ENABLE THIS FOR HARD MODE VERSION
            -- REQUIRES PLAYER TO DODGE THROUGH THE PROJECTILES
            --vec:rotateInplace(math.pi/num)
        end

        for i = 1, num do
            spawnProjectile("cloudShockSpiral", ex + vec.x, ey + vec.y, {dir = vec, speed = 180})
            vec:rotateInplace(math.pi*2/num)
        end

        enemy.orbCounter = enemy.orbCounter + 1

        dj.play(sounds.enemies.laser, "static", "effect")
        enemy:changeAnim("diag2")
    end

    function enemy:finishLightning()
        enemy.bossTimer = 0.25
        enemy.bossState = 2
        enemy:changeAnim("uncharged")
        enemy.electrified = false
        enemy.attCounter = enemy.attCounter + 1
        enemy.usedLightning = true
        enemy.lightningTimer = 0
        enemy.lightningCount = 0
    end

    function enemy:finishOrb()
        local maxCount = 4
        if enemy.phaseTwo then
            maxCount = 6
        end
        if enemy.orbCounter < maxCount then
            enemy:changeAnim("diag2")
            enemy:spawnOrb()
            return
        end

        enemy.orbCounter = 0
        enemy.bossTimer = 0.25
        enemy.bossState = 2
        enemy:changeAnim("charged")
        enemy.electrified = true
        enemy.usedOrb = true
        enemy.attCounter = enemy.attCounter + 1
    end

    enemy.grid = anim8.newGrid(64, 64, enemy.sprite:getWidth(), enemy.sprite:getHeight())
    enemy.animations = {}
    enemy.animations.uncharged = anim8.newAnimation(enemy.grid('1-9', 2), 0.1)
    enemy.animations.charged = anim8.newAnimation(enemy.grid('1-9', 3), 0.1)
    enemy.animations.diag = anim8.newAnimation(enemy.grid('1-11', 4), 0.1, enemy.spawnOrb)
    enemy.animations.diag2 = anim8.newAnimation(enemy.grid('6-10', 4), 0.08, enemy.finishOrb)
    enemy.animations.vert = anim8.newAnimation(enemy.grid('1-11', 5), 0.1, enemy.spawnLightning)
    enemy.animations.vert2 = anim8.newAnimation(enemy.grid('6-10', 5), 0.1, enemy.finishLightning)

    enemy.anim = enemy.animations.charged

    enemy.floatTime = 0.7
    enemy.floatY = 0
    enemy.floatMax = 1.5

    enemy:floatUp(enemy.floatMax, true)

    function enemy:update(dt)

        self.anim:update(dt)

        if gamestate ~= 1 then return end

        self.dir = getSelfToPlayerVector(self.physics:getX(), self.physics:getY()) * self.magnitude
        if self.dir.x < 0 then
            self.scaleX = -1
        else
            self.scaleX = 1
        end

        if self.lightningTimer > 0 then
            self.lightningTimer = self.lightningTimer - dt
        end
        if self.lightningTimer < 0 then
            self.lightningTimer = 0
            if self.lightningCount > 0 then
                -- we are in the lightning phase, spawn more lightning maybe?
                local maxCount = 2
                -- if second phase,
                if self.phaseTwo then
                    maxCount = 4
                end
                if self.lightningCount < maxCount then
                    self:spawnLightning()
                else

                end
            end
        end

        self.bossTimer = self.bossTimer - dt

        if self.bossState == 0 then  -- intro
            if self.bossTimer < 0 then
                -- Officially start the fight, unpause the player
                self.bossTimer = 1 -- time to the first attack
                self.bossState = 1
            end
        end

        if self.bossState == 1 then -- slow chase
            self:floatTowardsPlayer(dt)
            if self.bossTimer < 0 then
                self:attack() -- this function changes the bossTimer
            end
        end

        if self.bossState == 2 then -- attacking, all logic handled in attack and the animation functions
            if self.bossTimer < 0 then
                self.bossState = 1
                self.bossTimer = 2 + math.random()
            end
        end

        if self.bossState == 3 then -- pause before flying away for the sentries
            if self.bossTimer < 0 then
                self.bossState = 3.1
                effects:spawn("electraLeave", self.physics:getX(), self.physics:getY())
                self.physics:setPosition(-100, -100)
                self.bossTimer = 6
            end
        end

        if self.bossState == 3.1 then -- descending...
            if self.bossTimer < 0 then
                self.bossState = 3.2
                effects:spawn("electraArrive", 2216, 432)
                self.physics:setPosition(-100, -100)
                self.bossTimer = 1.5 -- this NEEDS to match the effect, otherwise it'll look weird
            end
        end

        if self.bossState == 3.2 then -- back in action!
            if self.bossTimer < 0 then
                self.bossState = 1
                self.physics:setPosition(2216, 432)
                self.bossTimer = 1
            end
        end

    end

    function enemy:attack()
        if self.health < self.maxHealth/2 and self.phaseTwo == false then
            self.phaseTwo = true
            self.bossTimer = 1
            self.bossState = 3
            dj.play(sounds.misc.alarm, "static", "effect", 1)
            spawnWaiting()
            return
        end

        if self.attCounter % 2 == 0 then
            self:lightning()
        else
            self:circleOrb()
        end
    end
    
    function enemy:lightning()
        self.bossTimer = 10
        self.bossState = 2
        enemy:changeAnim("vert")
    end

    function enemy:circleOrb()
        self.bossTimer = 10
        self.bossState = 2
        enemy:changeAnim("diag")
        self.electrified = true
    end

    function enemy:floatTowardsPlayer(dt)
        if distanceBetween(0, 0, self.physics:getLinearVelocity()) < self.maxSpeed then
            self.physics:applyForce(self.dir:unpack())
        end
    end

    function enemy:eyeTackleLogic(dt)
        self.tackleCount = self.tackleCount + 1
        if self.tackleCount == 3 or self.tackleCount == 5 then
            self.state = 500 -- shoot
            local dodgeDir = vector(1, 0)
            if self.physics:getX() < player:getX() then dodgeDir = vector(-1, 0) end
            self.physics:setLinearVelocity((dodgeDir*100):unpack())
            enemy:changeAnim("shoot")
            self.bossTimer = 1.1
        elseif self.tackleCount == 7 then
            self.state = 510 -- summon
            local dodgeDir = vector(1, 0)
            if self.physics:getX() < player:getX() then dodgeDir = vector(-1, 0) end
            self.physics:setLinearVelocity((dodgeDir*100):unpack())
            enemy:changeAnim("summon")
            self.bossTimer = 1
            self.tackleCount = 0
        else
            self.state = 110 -- tackle
        end
    end

    function enemy:inheritDraw()
        local ex, ey = self.physics:getPosition()
        self.anim:draw(self.sprite, ex, ey-self.floatY + self.sprOffY, nil, self.scaleX, 1, self.width/2, self.height/2)
    end

    function enemy:customDeath()
        local ex, ey = self.physics:getPosition()
        particleEvent("death", ex, ey)
        particleEvent("death", ex - 16, ey)
        particleEvent("death", ex + 16, ey)
        particleEvent("death", ex, ey - 16)
        particleEvent("death", ex, ey + 16)
        dj.play(sounds.enemies.die, "static", "effect")
        dj.fade(2)
    end

    function enemy:die()
        dj.fade(2)
        effects:spawn("bossDie", self.physics:getX(), self.physics:getY()-8, {boss = self.type})
        self:disintigrate()
    end

    return enemy

end

return electraInit