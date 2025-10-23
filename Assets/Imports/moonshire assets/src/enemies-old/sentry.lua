local function sentryInit(enemy, x, y, args)
    local physWidth = 8
    local physHeight = 8
    local physCorner = 1
    if args.preBoss then
        enemy.preBoss = true
        physWidth = 48
        physHeight = 24
        physCorner = 10
    end
    if args.balloon then
        enemy.balloon = true
        physWidth = 20
        physHeight = 20
        physCorner = 6
    end
    enemy.physics = world:newBSGRectangleCollider(x, y, physWidth, physHeight, physCorner)
    enemy.physics:setCollisionClass('Enemy2')
    enemy.physics:setFixedRotation(true)
    enemy.physics:setMass(1)
    enemy.physics:setLinearDamping(2)
    enemy.physics.parent = enemy

    enemy.form = 1
    enemy.sprite = sprites.enemies.diamond

    if args and args.form ~= nil then
        enemy.form = args.form
    end

    enemy.health = 1
    enemy.speed = 0
    enemy.maxSpeed = 50
    enemy.magnitude = 350
    enemy.dir = vector(0, 1)
    enemy.viewDistance = 100
    enemy.tackle = true
    enemy.danger = 0
    enemy.sprOffX = 0
    enemy.sprOffY = 0
    enemy.cooldown = 0
    enemy.rot = 0
    enemy.searchRad = 64
    enemy.electrified = true

    enemy.width = 16
    enemy.height = 16

    enemy.grid = anim8.newGrid(16, 16, enemy.sprite:getWidth(), enemy.sprite:getHeight())
    enemy.animations = {}
    enemy.animations.idle = anim8.newAnimation(enemy.grid(2, 1), 5)
    enemy.animations.white = anim8.newAnimation(enemy.grid(1, 1), 5)
    enemy.animations.attack = anim8.newAnimation(enemy.grid('1-2', 1), 0.08)

    if args.preBoss then
        enemy.preBoss = true
        enemy.width = 64
        enemy.height = 64
        enemy.grid = anim8.newGrid(64, 64, enemy.sprite:getWidth(), enemy.sprite:getHeight())
        enemy.animations = {}
        enemy.animations.idle = anim8.newAnimation(enemy.grid('1-9', 1), 0.14)
        enemy.animations.white = anim8.newAnimation(enemy.grid('1-9', 1), 0.14)
        enemy.animations.attack = anim8.newAnimation(enemy.grid('1-9', 1), 0.14)
        enemy.speed = 0
        enemy.maxSpeed = 0
        enemy.electrified = false
        enemy.shadowY = 12
        enemy.shadowSpr = sprites.effects.shadows.giant
        enemy.sprOffY = -12
        enemy.heavy = true
        enemy.health = 69
        enemy.hasHealthBar = false
    end

    if args.balloon then
        enemy.balloon = true
        enemy.width = 32
        enemy.height = 32
        enemy.sprite = sprites.enemies.balloon
        enemy.grid = anim8.newGrid(32, 32, enemy.sprite:getWidth(), enemy.sprite:getHeight())
        enemy.animations = {}
        enemy.animations.idle = anim8.newAnimation(enemy.grid('1-2', 1), 0.08)
        enemy.animations.white = anim8.newAnimation(enemy.grid('1-2', 1), 0.08)
        enemy.animations.attack = anim8.newAnimation(enemy.grid('1-2', 1), 0.08)
        enemy.speed = 10
        enemy.maxSpeed = 50
        enemy.electrified = false
        enemy.shadowY = 14
        enemy.shadowSpr = sprites.effects.shadows.medium
        enemy.sprOffY = 0
        enemy.heavy = true
        enemy.health = 1
        enemy.searchRad = -10
    end

    enemy.anim = enemy.animations.idle

    enemy.hovers = true
    enemy.floatTime = 0.5
    enemy.floatY = 0
    enemy.floatMax = 1.5

    enemy.scaleX = 1

    enemy:floatUp(enemy.floatMax, true)


    -- unique sentry behavior
    enemy.x1 = x
    enemy.y1 = y
    enemy.x2 = x+1
    enemy.y2 = y+1
    if args and args.x2 then enemy.x2 = args.x2 enemy.y2 = args.y2 end
    enemy.destX = enemy.x2
    enemy.destY = enemy.y2
    enemy.state = 21 -- immediately will get changed to 20

    function enemy:changeCourse()
        local newDestX = self.x2
        local newDestY = self.y2
        if self.state == 20 then
            self.state = 21
            newDestX = self.x1
            newDestY = self.y1
        else
            self.state = 20
        end
        self.dir = getFromToVector(self.physics:getX(), self.physics:getY(), newDestX, newDestY)
        self.destX = newDestX
        self.destY = newDestY
    end

    enemy:changeCourse()

    function enemy:shoot()
        self.state = self.state + 2
        self.anim = self.animations.white
        effects:spawn("shock", self.physics:getX(), self.physics:getY(), {dir=getSelfToPlayerVector(self.physics:getX(), self.physics:getY())})
        spawnBlast(self.physics:getX(), self.physics:getY(), 80, nil, 0.2)
        self.cooldown = 1.5

        local passTable1 = {scaleX = 1.8}
        local passTable2 = {scaleX = 1}

        self.rot = 0
        flux.to(self, 0.25, {rot = math.pi/2}):ease("quadout")
        flux.to(self, 0.1, passTable1):ease("quadout"):oncomplete(function()
            self.anim = self.animations.idle
            flux.to(self, 0.15, passTable2):ease("sineinout"):oncomplete(function()
                self.state = self.state - 2
            end)
        end)
    end


    function enemy:update(dt)
        self.anim:update(dt)

        --if self.state == 20 or self.state == 21 then self.rot = self.rot + dt*10 end
        if self.preBoss then return end

        if self.cooldown > 0 then
            self.cooldown = self.cooldown - dt
        end
        if self.cooldown < 0 then
            self.cooldown = 0
        end

        if self.balloon and self.health <= 0 then
            spawnBlast(self.physics:getX(), self.physics:getY(), 64, nil, 0.2)
            self:disintigrate()
        end

        if self.state == 20 or self.state == 21 then
            local keepGoing = true
            local px, py = self.physics:getPosition()

            if (self.dir.x < 0 and px < self.destX) or (self.dir.x > 0 and px > self.destX) or
            (self.dir.y < 0 and py < self.destY) or (self.dir.y > 0 and py > self.destY) then
                keepGoing = false
            end

            if keepGoing then
                if self.speed < self.maxSpeed then
                    self.speed = self.speed + (self.magnitude*dt)
                end
            else
                self.speed = self.speed - (self.magnitude*dt)
                if self.speed < 0 and self.animTimer == 0 then
                    self.speed = 0
                    enemy:changeCourse()
                end
            end

            self.physics:setX(self.physics:getX() + self.dir.x * self.speed * dt)
            self.physics:setY(self.physics:getY() + self.dir.y * self.speed * dt)

            if self.animTimer == 0 and self.cooldown == 0 then
                local caught = false
                if distanceBetween(self.physics:getX(), self.physics:getY(), player:getX(), player:getY()) < self.searchRad then
                    caught = true
                end

                if caught then
                    self.animTimer = 0.35
                    self.anim = self.animations.attack
                end
            end
        end
    end

    function enemy:inheritDraw()
        local ex, ey = self.physics:getPosition()
        setWhite()
        -- scale set to just X
        self.anim:draw(self.sprite, ex+self.sprOffX, ey-self.floatY+self.sprOffY, self.rot, self.scaleX, self.scaleX, self.width/2, self.height/2)
        --love.graphics.circle("line", ex, ey, self.searchRad)
    end

    function enemy:die()

    end

    return enemy

end

return sentryInit