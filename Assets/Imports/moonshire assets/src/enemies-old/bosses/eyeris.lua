local function eyerisInit(enemy, x, y, args)
    enemy.physics = world:newBSGRectangleCollider(x-15, y-30, 30, 30, 6)
    enemy.physics:setCollisionClass('Enemy2')
    enemy.physics:setFixedRotation(true)
    enemy.physics:setMass(1)
    enemy.physics:setLinearDamping(enemy.baseDamping)
    enemy.physics.parent = enemy

    enemy.boss = true
    enemy.bossState = 0
    enemy.bossTimer = 3
    enemy.sprite = sprites.bosses.eyeris

    enemy.health = 40
    enemy.speed = 0
    enemy.maxSpeed = 40
    enemy.magnitude = 300
    enemy.dir = vector(0, 1)

    enemy.tackle = true
    enemy.tackleDist = 76
    enemy.danger = 4
    enemy.barY = 12
    enemy.shadowSpr = sprites.effects.shadows.boss
    enemy.shadowY = 22
    enemy.shadowOffX = 2
    enemy.shadowScale = 0
    enemy.hovers = true
    enemy.projPoise = true
    enemy.tackleCount = 0
    enemy.hookable = false
    --enemy.heavy = true -- maybe remove??

    enemy.entranceY = 200
    flux.to(enemy, 3, {entranceY = 0}):ease("quadout"):oncomplete(function() enemy.bossState = 1 enemy.state = 100 player.state = 0 end)

    if enemy.form == 2 then
        enemy.health = 3
        enemy.maxSpeed = 80
        enemy.magnitude = 450
        --enemy.iris = sprites.enemies.iris2
    elseif enemy.form == 3 then
        enemy.health = 4
        enemy.maxSpeed = 100
        enemy.magnitude = 500
        --enemy.iris = sprites.enemies.iris3
    end

    enemy.grid = anim8.newGrid(48, 48, enemy.sprite:getWidth(), enemy.sprite:getHeight())
    enemy.animations = {}
    enemy.animations.idle = anim8.newAnimation(enemy.grid('1-4', 1), 0.15)
    enemy.animations.shoot = anim8.newAnimation(enemy.grid('1-13', 2), 0.1, function() enemy:changeAnim("idle") end)
    enemy.animations.summon = anim8.newAnimation(enemy.grid('1-12', 3), 0.1, function() enemy:changeAnim("idle") end)

    enemy.anim = enemy.animations.idle

    enemy.floatTime = 0.7
    enemy.floatY = 0
    enemy.floatMax = 1.5

    player:cutscene(nil)

    dj.stop("music")
    
    dj.play(bgm.bossIntro, "stream", "music", nil, nil, function() dj.playLooping(bgm.boss, "stream", "music") end)

    --enemy:floatUp(enemy.floatMax, true)

    function enemy:update(dt)
        if self.entranceY > 0 then
            self.shadowScale = (200 - self.entranceY) / 200
        else
            self.shadowScale = 1
        end

        if self.bossState == 0 then  -- intro
            player.state = 13
            self.anim:update(dt)
            self.bossTimer = self.bossTimer - dt
            if self.bossTimer < 0 then
                -- Officially start the fight, unpause the player
                self.bossTimer = 5
                self.bossState = 1
                self.state = 100
            end
        end

        if self.bossState == 1 then
            enemy:moveLogic(dt)

            self.bossTimer = self.bossTimer - dt
            if self.state == 500 then
                if self.bossTimer < 0 then
                    self.bossTimer = 100
                    spawnProjectile("shock", self.physics:getX(), self.physics:getY(), {dir = vector(self.scaleX, 0)})
                    self.state = 100
                    self.cooldownTimer = 0.5
                end
                
                if math.abs( self.physics:getY() - player:getY() ) > 16 then
                    local offDir = vector(0, 1)
                    if player:getY() < self.physics:getY() then offDir = vector(0, -1) end
                    offDir = offDir * 200
                    self.physics:applyForce(offDir:unpack())
                end
            end
            if self.state == 510 then
                if self.bossTimer < 0 then
                    self.bossTimer = 100
                    spawnEnemy(self.physics:getX(), self.physics:getY()+8, "eye", {aggro = true})
                    self.state = 100
                    self.cooldownTimer = 0.5
                end
            end
        end

        d1 = self.bossState
        
        self:setScaleX()
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
        if self.dizzyTimer == 0 or self.hasBeenStunned then
            local irisOffset = getFromToVector(ex, ey, player:getX(), player:getY()) * 1.2
            if self.state >= 1 and self.state < 2 then
                irisOffset = self.wanderDir * 1.2
            end
            local irisX, irisY = irisOffset:unpack()

            self.anim:draw(self.sprite, ex, ey-self.floatY - self.entranceY, nil, self.scaleX * -1, 1, 24, 24)
        else
            love.graphics.draw(sprites.bosses.eyerisStun, ex, ey-self.floatY - self.entranceY, nil, self.scaleX * -1, 1, 24, 24)
        end
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
    end

    return enemy

end

return eyerisInit