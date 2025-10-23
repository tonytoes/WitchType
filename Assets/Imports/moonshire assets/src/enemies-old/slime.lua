local function slimeInit(enemy, x, y, args)
    enemy.physics = world:newBSGRectangleCollider(x, y, 10, 8, 2)
    enemy.physics:setCollisionClass('Enemy')
    enemy.physics:setFixedRotation(true)
    enemy.physics:setMass(1)
    enemy.physics:setLinearDamping(2)
    enemy.physics.parent = enemy

    enemy.form = 1
    enemy.sprite = sprites.enemies.slimeRed

    if args and args.form ~= nil then
        enemy.form = args.form
    end

    enemy.danger = 3
    enemy.health = 3
    enemy.magnitude = 40
    enemy.dir = vector(0, 1)
    enemy.viewDistance = 100
    enemy.grid = anim8.newGrid(16, 16, enemy.sprite:getWidth(), enemy.sprite:getHeight())
    enemy.shadowSpr = sprites.enemies.shadowMed
    enemy.shadowY = 4.5
    enemy.shadowScale = 0.8

    enemy.animations = {}
    enemy.animations.idle = anim8.newAnimation(enemy.grid('1-2', 1), 0.3)
    enemy.animations.walk = anim8.newAnimation(enemy.grid('3-6', 1), 0.16)
    enemy.animations.run = anim8.newAnimation(enemy.grid('3-6', 1), 0.12)

    if enemy.form == 2 then
        enemy.animations.staff = anim8.newAnimation(enemy.grid(3, 1), 1)
    end

    enemy.anim = enemy.animations.idle

    enemy.scaleX = 1
    if math.random() < 0.5 then enemy.scaleX = -1 end

    -- Used to control the walk animation
    -- 0: standing still
    -- 1: walking
    -- 2: running
    enemy.moving = 0

    function enemy:update(dt)
        enemy:moveLogic(dt, true) -- Stiff movement
        local px, py = player:getPosition()
        local ex, ey = self.physics:getPosition()
        
        self:setScaleX()

        if self.state == 1 or self.state == 99 then
            self.moving = 0
            if self.anim ~= self.animations.idle then
                self.anim = self.animations.idle
                self.anim:gotoFrame(1)
            end
        elseif self.state == 1.1 then
            self.moving = 1
            if self.anim ~= self.animations.walk then
                self.anim = self.animations.walk
                self.anim:gotoFrame(1)
            end
        elseif self.state >= 100 then
            if self.anim ~= self.animations.run then
                self.anim = self.animations.run
                self.anim:gotoFrame(1)
            end
        end

    end

    function enemy:inheritDraw()
        local ex, ey = self.physics:getPosition()
        if self.dizzyTimer == 0 or self.hasBeenStunned then
            self.anim:draw(self.sprite, ex, ey, nil, self.scaleX, 1, 8, 9)
        else
            love.graphics.draw(sprites.enemies.slimeRedStun, ex, ey-1, nil, self.scaleX, 1, 8, 8)
        end
    end

    return enemy

end

return slimeInit