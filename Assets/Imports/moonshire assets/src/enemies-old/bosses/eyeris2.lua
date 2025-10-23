local function eyerisInit(enemy, x, y, args)
    enemy.physics = world:newBSGRectangleCollider(x-15, y-30, 30, 30, 6)
    enemy.physics:setCollisionClass('Ignore')
    enemy.physics:setFixedRotation(true)
    enemy.physics:setMass(1)
    enemy.physics:setLinearDamping(enemy.baseDamping)
    enemy.physics.parent = enemy

    enemy.boss = true
    enemy.bossState = -1 -- sleeping
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
    enemy.shadowScale = 1
    enemy.hovers = true
    enemy.projPoise = true
    enemy.tackleCount = 0
    enemy.hookable = false
    enemy.lightFactor = 3
    enemy.fireMult = 1
    --enemy.heavy = true -- maybe remove??

    enemy.grid = anim8.newGrid(48, 48, enemy.sprite:getWidth(), enemy.sprite:getHeight())
    enemy.animations = {}
    enemy.animations.idle = anim8.newAnimation(enemy.grid('1-4', 1), 0.15)
    enemy.animations.shoot = anim8.newAnimation(enemy.grid('1-13', 2), 0.1, function() enemy:changeAnim("idle") end)
    enemy.animations.summon = anim8.newAnimation(enemy.grid('1-12', 3), 0.075, function() enemy:changeAnim("idle") end)
    enemy.animations.sleeping = anim8.newAnimation(enemy.grid('7-8', 1), 0.8)
    enemy.animations.waking = anim8.newAnimation(enemy.grid('7-9', 1), {1.4, 0.16, 0.2}, function()
        enemy:changeAnim("freaking")
        cam.smoother = Camera.smooth.damped(8)

        local moveX = 1168
        local moveY = 0
        enemy.physics:setPosition(enemy.physics:getX()+moveX, enemy.physics:getY()+moveY)
        player:setPosition(player:getX()+moveX, player:getY()+moveY)
        for _,w in ipairs(weapons) do
            w.x = w.x + moveX
            w.y = w.y + moveY
        end
        player.focusX = player.focusX + moveX
        player.focusY = player.focusY + moveY
        cam.x = cam.x + moveX
        cam.y = cam.y + moveY

        dj.play(sounds.enemies.roarCrushed, "static", "effect")
    end)
    enemy.animations.freaking = anim8.newAnimation(enemy.grid('2-7', 3, '2-7', 3), 0.1, function() enemy:changeAnim("openUp") end)
    enemy.animations.openUp = anim8.newAnimation(enemy.grid(7,3, 11,3, 12,3), {0.6, 0.18, 0.14}, function() enemy:changeAnim("idle") enemy.bossState = -2 enemy.bossTimer = 1 end)

    enemy.anim = enemy.animations.sleeping

    enemy.floatTime = 0.7
    enemy.floatY = 0
    enemy.floatMax = 1.5

    --enemy:floatUp(enemy.floatMax, true)

    function enemy:update(dt)
        if self.bossState <= 0 then
            self.anim:update(dt)
        end

        if self.bossState == -1 then -- new intro, sleeping
            if distanceBetween(self.physics:getX(), self.physics:getY() + 48, player:getX(), player:getY()) < 24 then
                player.focusX = self.physics:getX()
                player.focusY = self.physics:getY() + 24
                cam.smoother = Camera.smooth.damped(3) -- make it take longer
                cam:fluxZoom("focusFocus", 1)
                player:cutsceneWalk(self.physics:getX(), self.physics:getY() + 40)
                enemy:changeAnim("waking")
                self.bossState = -1.1
                dj.fade(1)
            end
        end

        if self.bossState == -2 then -- small pause before fight starts
            self.bossTimer = self.bossTimer - dt
            if self.bossTimer < 0 then
                -- Officially start the fight, unpause the player
                self.bossTimer = 0.5
                self.bossState = -2.1
                self.state = 100
                dj.play(bgm.frightening, "stream", "music", nil, nil, function() dj.playLooping(bgm.boss, "stream", "music") end)
                cam:fluxUnzoom(0.5)
                self.physics:setCollisionClass('Enemy2')
                player.state = 0
            end
        end

        if self.bossState == -2.1 then -- give player a small head-start
            self.bossTimer = self.bossTimer - dt
            if self.bossTimer < 0 then
                self.bossTimer = 5
                self.bossState = 1
            end
        end



        if self.bossState == 1 then
            enemy:moveLogic(dt)

            self.bossTimer = self.bossTimer - dt
            if self.state == 500 then
                if self.bossTimer < 0 then
                    self.bossTimer = 100
                    spawnProjectile("shock", self.physics:getX(), self.physics:getY(), {dir = vector(self.scaleX, 0), light = true})
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
                    effects:spawn("poisonSmoke", self.physics:getX(), self.physics:getY()+8)
                    dj.play(sounds.effects.poisonBlast, "static", "effect")
                    spawnHitbox(4, 0.25, {x=self.physics:getX(), y=self.physics:getY()+8, rad=76, grow=true})
                    self.state = 100
                    self.cooldownTimer = 0.5
                end
            end
        end
        
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
            self.bossTimer = 0.9
        elseif self.tackleCount == 7 then
            self:poisonCloud()
        else
            self.state = 110 -- tackle
        end
    end

    function enemy:poisonCloud()
        self.state = 510 -- summon
        local dodgeDir = vector(1, 0)
        if self.physics:getX() < player:getX() then dodgeDir = vector(-1, 0) end
        self.physics:setLinearVelocity((dodgeDir*20):unpack())
        enemy:changeAnim("summon")
        self.bossTimer = 0.75
        self.tackleCount = 0
    end

    function enemy:comboBreak()
        self:poisonCloud()
    end

    function enemy:inheritDraw()
        local ex, ey = self.physics:getPosition()
        if self.dizzyTimer == 0 or self.hasBeenStunned then
            self.anim:draw(self.sprite, ex, ey-self.floatY, nil, self.scaleX * -1, 1, 24, 24)
        else
            love.graphics.draw(sprites.bosses.eyerisStun, ex, ey-self.floatY, nil, self.scaleX * -1, 1, 24, 24)
        end
    end

    function enemy:drawTopLayer() -- pierces the darkness
        if self.bossState == -1 then return end
        local ex, ey = self.physics:getPosition()
        local eyeSpr = sprites.bosses.eyerisEye
        setWhite()
        self.anim:draw(eyeSpr, ex, ey-self.floatY, nil, self.scaleX * -1, 1, 24, 24)
        if self.burningCounter > 0 then
            self.burnAnim:draw(self.burnSheet, ex, ey-self.floatY, nil, 1.25, 1.25, 16, 16)
        end
    end

    function enemy:customDeath()
        local ex, ey = self.physics:getPosition()
        effects:spawn("bossDie", ex, ey, {boss = self.type})
        self:disintigrate()
    end

    function enemy:die()
        --dj.fade(2)
    end

    return enemy

end

return eyerisInit