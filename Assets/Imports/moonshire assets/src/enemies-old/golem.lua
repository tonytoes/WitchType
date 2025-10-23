local function golemInit(enemy, x, y, args)
    enemy.physics = world:newBSGRectangleCollider(x, y, 24, 14, 3)
    enemy.physics:setCollisionClass('Enemy')
    enemy.physics:setFixedRotation(true)
    enemy.physics:setMass(10)
    enemy.physics:setLinearDamping(10)
    enemy.physics.parent = enemy
    enemy.poised = true
    enemy.heavy = true
    enemy.shadowSpr = sprites.effects.shadows.enemyL
    enemy.shadowY = 6
    enemy.barY = 32
    enemy.lookVal = 30

    enemy.form = 1
    enemy.sprite = sprites.enemies.golem

    if args and args.form ~= nil then
        enemy.form = args.form
    end

    enemy.health = 12
    enemy.speed = 0
    enemy.maxSpeed = 20
    enemy.magnitude = 100
    enemy.dir = getSelfToPlayerVector(x, y)
    enemy.viewDistance = 160
    enemy.danger = 3
    enemy.scaleX = 1
    enemy.wander = false
    enemy.attimer = 0
    enemy.state = 0

    enemy.grid = anim8.newGrid(48, 48, enemy.sprite:getWidth(), enemy.sprite:getHeight())
    enemy.animations = {}
    enemy.animations.idle = anim8.newAnimation(enemy.grid('1-3', 1), {0.4, 0.3, 0.15})
    enemy.animations.stompPrep = anim8.newAnimation(enemy.grid('1-2', 2), {0.1, 0.6}, function() enemy:stomp() end)
    enemy.animations.stompFinish = anim8.newAnimation(enemy.grid(3, 2), {0.5}, function() enemy:resetLoop() end)
    enemy.animations.shootPrep = anim8.newAnimation(enemy.grid(1, 3), {0.75}, function() enemy:shoot() end)
    enemy.animations.shootFinish = anim8.newAnimation(enemy.grid(2, 3), {0.3}, function() enemy:resetLoop() end)
    enemy.anim = enemy.animations.idle

    function enemy:update(dt)
        if self.anim then self.anim:update(dt) end
        self.dir = getSelfToPlayerVector(x, y)
        --enemy:moveLogic(dt)
        if self.state == 0 and enemy:lookForPlayer() then
            self.state = 100
            self.attimer = 0.5
        elseif self.state == 100 then
            if self.attimer > 0 then
                self.attimer = self.attimer - dt
            end
            if self.attimer < 0 then
                local attChoice = 0
                local willShootRad = 40
                if distanceBetween(self.physics:getX(), self.physics:getY(), player:getX(), player:getY()) > willShootRad then
                    attChoice = 1 -- shoot
                elseif math.random() < 0.33 then
                    attChoice = 1 -- shoot
                end

                if attChoice == 0 then -- stomp
                    self.anim = self.animations.stompPrep
                    self.anim:gotoFrame(1)
                    self.attimer = 0
                elseif attChoice == 1 then -- shoot
                    self.anim = self.animations.shootPrep
                    self.anim:gotoFrame(1)
                    self.attimer = 0
                end
            end
        end
        self:setScaleX()
    end

    function enemy:resetLoop()
        enemy.anim = enemy.animations.idle
        enemy.anim:gotoFrame(1)
        self.attimer = 0.5 + math.random()
    end

    function enemy:stomp()
        enemy.anim = enemy.animations.stompFinish
        enemy.anim:gotoFrame(1)
        spawnHitbox(6, 0.5, {x=self.physics:getX(), y=self.physics:getY(), rad=34})
        particleEvent("golemStomp", self.physics:getX()+2, self.physics:getY() - 4)
        shake:start(0.1, 1.2, 0.025)
        local range = math.random()/4
        dj.play(sounds.enemies.rockSurge, "static", "effect", 0.8, 1+range)
        dj.play(sounds.player.recoil, "static", "effect", 0.8, 1+range)
    end

    function enemy:shoot()
        -- SHOOT PROJECTILES
        enemy.anim = enemy.animations.shootFinish
        enemy.anim:gotoFrame(1)
        shake:start(0.1, 1.2, 0.025)
        local px, py = self.physics:getX(), self.physics:getY()
        local dirVec = getSelfToPlayerVector(px, py)
        local dashMag = 1350
        spawnProjectile("rock", px, py, {dir = dirVec})
        spawnProjectile("rock", px, py, {dir = dirVec:rotated(math.pi/8)})
        spawnProjectile("rock", px, py, {dir = dirVec:rotated(math.pi/-8)})
        self.physics:applyLinearImpulse((dirVec*dashMag):unpack())
        local range = math.random()/4
        dj.play(sounds.enemies.rockHit, "static", "effect", 0.8, 1+range)
    end

    function enemy:inheritDraw()
        local ex, ey = self.physics:getPosition()
        self.anim:draw(self.sprite, ex, ey, nil, self.scaleX, 1, 24, 41)
    end

    return enemy

end

return golemInit