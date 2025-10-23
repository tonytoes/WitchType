local function batInit(enemy, x, y, args)
    enemy.physics = world:newBSGRectangleCollider(x, y, 11, 9, 1)
    enemy.physics:setCollisionClass('Enemy2')
    enemy.physics:setFixedRotation(true)
    enemy.physics:setMass(1)
    enemy.physics:setLinearDamping(2)
    enemy.physics.parent = enemy

    enemy.form = 1
    enemy.sprite = sprites.enemies.skullBat

    if args and args.form ~= nil then
        enemy.form = args.form
    end

    enemy.health = 1
    enemy.speed = 0
    enemy.maxSpeed = 70
    enemy.magnitude = 450
    enemy.dir = vector(0, 1)
    enemy.viewDistance = 100
    enemy.tackle = true
    enemy.danger = 2

    enemy.grid = anim8.newGrid(16, 16, enemy.sprite:getWidth(), enemy.sprite:getHeight())
    enemy.anim = anim8.newAnimation(enemy.grid('1-3', 1), 0.14)

    enemy.hovers = true
    enemy.floatTime = 0.5
    enemy.floatY = 0
    enemy.floatMax = 1.5

    enemy.scaleX = 1
    if math.random() < 0.5 then enemy.scaleX = -1 end

    enemy:floatUp(enemy.floatMax, true)

    function enemy:update(dt)
        enemy:moveLogic(dt)
        self:setScaleX()
    end

    function enemy:inheritDraw()
        local ex, ey = self.physics:getPosition()
        if self.dizzyTimer == 0 or self.hasBeenStunned then
            self.anim:draw(self.sprite, ex, ey-self.floatY, nil, self.scaleX, 1, 8, 8)
        else
            love.graphics.draw(sprites.enemies.batDead, ex, ey+1, nil, self.scaleX, 1, 8, 8)
        end
    end

    return enemy

end

return batInit