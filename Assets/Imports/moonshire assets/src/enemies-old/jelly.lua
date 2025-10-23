local function jellyInit(enemy, x, y, args)
    enemy.big = false
    if args and args.permId then
        if args.permId:startswith('big') then
            enemy.big = true
        end
    end

    if enemy.big then
        enemy.physics = world:newBSGRectangleCollider(x, y, 9, 9, 3)
    else
        enemy.physics = world:newBSGRectangleCollider(x, y, 7, 7, 3)
    end
    enemy.physics:setCollisionClass('Enemy2')
    enemy.physics:setFixedRotation(true)
    enemy.physics:setMass(1)
    enemy.physics:setLinearDamping(2)
    enemy.physics.parent = enemy

    enemy.form = 1
    enemy.sprite = sprites.enemies.jelly

    if args and args.form ~= nil then
        enemy.form = args.form
    end

    enemy.health = 1
    enemy.magnitude = 6
    enemy.dir = vector(0, 1)
    enemy.viewDistance = 100
    enemy.danger = 4
    enemy.barY = 20
    enemy.alertY = 8
    enemy.shadowY = 7
    enemy.shadowSpr = sprites.effects.shadows.small
    enemy.standardAnim = true
    enemy.hovers = true
    enemy.wander = false -- manually do this
    enemy.electrified = true

    if enemy.form == 1 then
        enemy.chase = true
        enemy.projTimer = 0
        enemy.danger = 3

        function enemy:aggro(dt)

        end
    end

    enemy.grid = anim8.newGrid(17, 17, enemy.sprite:getWidth(), enemy.sprite:getHeight())

    enemy.animations = {}
    enemy.animations.idle = anim8.newAnimation(enemy.grid('1-2', 1), 0.4)
    enemy.animations.walk = anim8.newAnimation(enemy.grid('1-2', 1), 0.4)
    enemy.animations.run = anim8.newAnimation(enemy.grid('1-2', 1), 0.4)
    enemy.animations.attack = anim8.newAnimation(enemy.grid('1-2', 1), 0.4)

    if enemy.big then
        enemy.animations.idle = anim8.newAnimation(enemy.grid('1-2', 3), 0.4)
        enemy.animations.walk = anim8.newAnimation(enemy.grid('1-2', 3), 0.4)
        enemy.animations.run = anim8.newAnimation(enemy.grid('1-2', 3), 0.4)
        enemy.animations.attack = anim8.newAnimation(enemy.grid('1-2', 3), 0.4)
        enemy.heavy = true
    end

    enemy.anim = enemy.animations.idle

    enemy.scaleX = 1
    if math.random() < 0.5 then enemy.scaleX = -1 end

    -- Used to control the walk animation
    -- 0: standing still
    -- 1: walking
    -- 2: running
    enemy.moving = 0
    enemy.wanderSpeed = 4
    enemy.wanderRadius = 16
    enemy.chasing = false
    enemy.lookVal = 12
    enemy.useScaleForSearch = false

    enemy.floatTime = 0.8
    enemy.floatY = 0
    enemy.floatMax = 1.2
    enemy:floatUp(enemy.floatMax, true)

    enemy:giveLightSource(22)

    function enemy:update(dt)
        self.anim:update(dt)

        if self.big then
            -- big ones stay still
        else
            if self:lookForPlayer() then
                self.chasing = true
                self.wanderTimer = -1
            else
                if self.chasing then
                    self.chasing = false
                    self.startX = self.physics:getX()
                    self.startY = self.physics:getY()
                end
            end
            
            if self.state < 1 or self.state >= 2 or (self.dizzyTimer > 0 and self.hasBeenStunned == false) then return end
            if self.wanderTimer > 0 then self.wanderTimer = self.wanderTimer - dt end
            if self.wanderBufferTimer > 0 then self.wanderBufferTimer = self.wanderBufferTimer - dt end
            if self.wanderTimer < 0 then
                self.state = 1.1
                self.wanderTimer = 0

                local ex = self.physics:getX()
                local ey = self.physics:getY()

                if ex < self.startX and ey < self.startY then
                    self.wanderDir = vector(0, 1)
                elseif ex > self.startX and ey < self.startY then
                    self.wanderDir = vector(-1, 0)
                elseif ex < self.startX and ey > self.startY then
                    self.wanderDir = vector(1, 0)
                else
                    self.wanderDir = vector(0, -1)
                end

                self.wanderBufferTimer = 0.2
                self.wanderDir:rotateInplace(math.pi/-2 * math.random())
                if self.chasing then self.wanderDir = getSelfToPlayerVector(self.physics:getX(), self.physics:getY()) end
                self.dir = self.wanderDir
            end

            if self.state == 1.1 and self.physics then
                self.physics:setX(self.physics:getX() + self.wanderDir.x * self.wanderSpeed * dt)
                self.physics:setY(self.physics:getY() + self.wanderDir.y * self.wanderSpeed * dt)

                if distanceBetween(self.physics:getX(), self.physics:getY(), self.startX, self.startY) > self.wanderRadius and self.wanderBufferTimer <= 0 then
                    self.state = 1
                    self.wanderTimer = 1 + math.random(0.1, 0.8)
                end
            end
        end
    end

    function enemy:inheritDraw()
        local ex, ey = self.physics:getPosition()
        if self.dizzyTimer == 0 or self.hasBeenStunned then
            self.anim:draw(self.sprite, ex, ey+self.floatY, nil, self.scaleX, 1, 8.5, 8.5)
        else
            love.graphics.draw(sprites.enemies.skeletonDead, ex, ey, nil, self.scaleX, 1, 8.5, 9)
        end
    end

    function enemy:die()
        enemy.anim = enemy.animations.idle
        spawnWeapon("battery", self.physics:getX(), self.physics:getY()+9)
        enemy:disintigrate()
        --spawnRock("jelly", x, y, {bounce = 10})
        --spawnArrow("jelly", player:getX() + player.arrowOffX, player:getY()+player.arrowOffY)
    end

    return enemy

end

return jellyInit