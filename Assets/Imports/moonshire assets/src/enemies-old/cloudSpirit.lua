local function cloudSpiritInit(enemy, x, y, args)
    enemy.physics = world:newBSGRectangleCollider(x, y, 9, 13, 2)
    enemy.physics:setCollisionClass('Enemy2')
    enemy.physics:setFixedRotation(true)
    enemy.physics:setMass(1)
    enemy.physics:setLinearDamping(2)
    enemy.physics.parent = enemy

    enemy.form = 1
    enemy.sprite = sprites.enemies.cloudSpirit

    if args and args.form ~= nil then
        enemy.form = args.form
    end

    enemy.health = 9
    enemy.magnitude = 20
    enemy.dir = vector(0, 1)
    enemy.danger = 4
    enemy.barY = 20
    enemy.alertY = 16
    enemy.smOffset = 4
    enemy.shadowY = 11
    enemy.shadowSpr = sprites.effects.shadows.enemySm
    enemy.standardAnim = true
    enemy.hovers = true
    enemy.lookVal = 24

    if enemy.form == 1 then
        enemy.chase = true
        enemy.projTimer = 0
        enemy.danger = 3

        function enemy:aggro(dt)
            self.projTimer = self.projTimer - dt
            if self.projTimer < 0 then
                if self.state == 100 then
                    self.state = 105 -- charging up
                    self.projTimer = 0.3
                elseif self.state == 105 then
                    self.state = 106
                    self.projTimer = 0.3
                    --spawnProjectile('mage', self.physics:getX(), self.physics:getY())
                    --self.anim:gotoFrame(2)
                    local ex, ey = self.physics:getPosition()
                    dj.play(sounds.enemies.laser, "static", "effect")
                    spawnProjectile("cloudShock", ex, ey-4, {dir = getSelfToPlayerVector(ex, ey)})
                    --spawnLob("bone", ex, ey, getSelfToPlayerVector(ex, ey))
                elseif self.state == 106 then
                    self.state = 100
                    self.projTimer = 1.5 + math.random()*3
                end
            end
        end
    end

    enemy.grid = anim8.newGrid(26, 32, enemy.sprite:getWidth(), enemy.sprite:getHeight())

    enemy.animations = {}
    enemy.animations.idle = anim8.newAnimation(enemy.grid('1-4', 1), 0.22)
    enemy.animations.walk = anim8.newAnimation(enemy.grid('1-4', 2), 0.22)
    enemy.animations.run = anim8.newAnimation(enemy.grid('1-4', 2), 0.22)
    enemy.animations.attack = anim8.newAnimation(enemy.grid('1-4', 3), {0.3, 0.1, 0.1, 0.1})

    enemy.anim = enemy.animations.idle

    enemy.scaleX = 1
    if math.random() < 0.5 then enemy.scaleX = -1 end

    -- Used to control the walk animation
    -- 0: standing still
    -- 1: walking
    -- 2: running
    enemy.moving = 0

    enemy.floatTime = 1
    enemy.floatY = 0
    enemy.floatMax = 1
    enemy:floatUp(enemy.floatMax, true)

    function enemy:update(dt)
        --self.shadowOffX = -0.75 * self.scaleX
        enemy:moveLogic(dt, true) -- Stiff movement
        local px, py = player:getPosition()
        local ex, ey = self.physics:getPosition()
        
        self:setScaleX()

        if self.state == 1 or self.state == 99 then
            self.moving = 0
            self:changeAnim("idle")
        elseif self.state == 1.1 then
            self.moving = 1
        else
            if self.form == 2 then
                self.moving = 1
            else
                self.moving = 2
            end
        end

    end

    function enemy:inheritDraw()
        local ex, ey = self.physics:getPosition()
        if self.dizzyTimer == 0 or self.hasBeenStunned then
            self.anim:draw(self.sprite, ex, ey+self.floatY, nil, self.scaleX, 1, 13, 20)
        else
            love.graphics.draw(sprites.enemies.skeletonDead, ex, ey, nil, self.scaleX, 1, 8.5, 9)
        end
    end

    function enemy:die()

    end

    return enemy

end

return cloudSpiritInit