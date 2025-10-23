fireballs = {}

function spawnFireball(x, y, args)
    local direction = toMouseVector(x, y)

    local fireball = {}
    fireball.x = x
    fireball.y = y
    fireball.timer = 4
    fireball.dead = false
    fireball.rad = 3
    fireball.speed = 200
    fireball.spell = nil
    fireball.scaleX = 1
    fireball.scaleY = 1
    fireball.power = 8

    if args and args.spell == "shard" then
        direction = args.vec:normalized()
        fireball.spell = args.spell
        fireball.spriteSheet = sprites.effects.iceShard
        fireball.width = 16
        fireball.height = 16
        fireball.grid = anim8.newGrid(16, 16, fireball.spriteSheet:getWidth(), fireball.spriteSheet:getHeight())
        fireball.anim = anim8.newAnimation(fireball.grid('1-4', 1), {0.04, 0.04, 0.04, 9}, function() fireball.dead = true end)
    end

    fireball.dir = direction
    fireball.dirVec = direction
    fireball.rot = math.atan2(direction.y, direction.x)

    function fireball:update(dt)
        self.timer = self.timer - dt
        if self.timer < 0 then
            self.dead = true
        end

        if self.anim then self.anim:update(dt) end

        self.x = self.x + (self.dirVec.x * self.speed * dt)
        self.y = self.y + (self.dirVec.y * self.speed * dt)

        -- Query for walls
        local walls = world:queryCircleArea(self.x, self.y, self.rad, {'Wall'})
        if #walls > 0 then self.dead = true end

        -- Query for enemies
        local hitEnemies = world:queryCircleArea(self.x, self.y, self.rad, {'Enemy', 'Enemy2'})
        for _,e in ipairs(hitEnemies) do
            e.parent:hit(self.power, self.dirVec, 0.1)
            if self.spell == "shard" then e.parent:frost(10) end
        end
        if #hitEnemies > 0 then self.dead = true end

    end

    function fireball:draw()
        setWhite()
        if self.anim then
            self.anim:draw(self.spriteSheet, self.x, self.y, self.rot, self.scaleX, self.scaleY, self.width/2, self.height/2)
        end
    end

    if fireball.spell then
        table.insert(fireballs, fireball)
    end
end

function fireballs:update(dt)
    for _,b in ipairs(fireballs) do
        b:update(dt)
    end

    local i = #fireballs
    while i > 0 do
        if fireballs[i].dead then
            effects:spawn("spark", fireballs[i].x, fireballs[i].y)
            table.remove(fireballs, i)
        end
        i = i - 1
    end
end

function fireballs:draw(layer)
    for _,f in ipairs(fireballs) do
        
    end
end
