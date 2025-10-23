local function dummyInit(enemy, x, y, args)
    enemy.physics = world:newBSGRectangleCollider(x-5, y-5, 10, 10, 3)
    enemy.physics:setCollisionClass('Enemy')
    enemy.physics:setFixedRotation(true)
    enemy.physics:setMass(1)
    enemy.physics:setLinearDamping(2)
    enemy.physics:setType('static')
    enemy.physics.parent = enemy

    enemy.sprite = sprites.enemies.dummy

    enemy.health = 100
    enemy.danger = -1
    enemy.barY = 20
    enemy.alertY = 8
    enemy.shadowY = 1
    enemy.shadowSpr = sprites.effects.shadows.medium
    enemy.heavy = true
    enemy.invincible = true
    enemy.wander = false

    enemy.grid = anim8.newGrid(16, 16, enemy.sprite:getWidth(), enemy.sprite:getHeight())

    enemy.animations = {}
    enemy.animations.idle = anim8.newAnimation(enemy.grid(1, 1), 0.4)

    enemy.anim = enemy.animations.idle

    enemy.scaleX = 1
    if math.random() < 0.5 then enemy.scaleX = -1 end

    function enemy:update(dt)
        self.anim:update(dt)
        self.health = 100 -- just manually set to max
    end

    function enemy:inheritDraw()
        local ex, ey = self.physics:getPosition()
        self.anim:draw(self.sprite, ex, ey - 2, nil, self.scaleX, 1, 8, 12)
    end

    function enemy:die()
    end

    function enemy:onHit()
        self.scaleX = self.scaleX * -1
    end

    return enemy

end

return dummyInit