grapple = {}
grapple.x = 0
grapple.y = 0
grapple.sprite = sprites.items.grappleHead
grapple.rot = 0
grapple.dir = vector(0, 0)
grapple.speed = 300
grapple.baseSpeed = 300
grapple.timer = 0
grapple.accel = 500
grapple.rad = 4
grapple.soundTimer = 0
grapple.totalTime = 0.8

-- 0 = inactive
-- 1 = flying away
-- 2 = returning to player
-- 3 = hooked
grapple.state = 0

function grapple:update(dt)
    if self.state == 0 then return end
    
    if self.state == 1 then
        --self.speed = self.speed - self.accel*dt
        self.dir = self.dir:normalized() * self.speed
        if self.speed < 0 then
            grapple:retreat()
        end

        -- Query for walls
        local walls = world:queryCircleArea(self.x, self.y, self.rad, {'Wall'})
        local upwards = self.dir.y < 0
        for _,w in ipairs(walls) do
            if upwards then
                if w.y < player:getY() + player.height/2 then
                    grapple:hook()
                    return
                end
            else
                grapple:hook()
                return
            end
        end
        --if #walls > 0 then
            --grapple:hook()
            --return
        --end

        for _,l in ipairs(loots) do
            if distanceBetween(l.x, l.y, grapple.x, grapple.y) < 10 then
                grapple:retreat()
                l.hooked = true
            end
        end

        grapple:lookForEnemies()
    elseif self.state == 2 then
        self.dir = vector(player:getX() - self.x, player:getY() - self.y):normalized() * self.speed
        --self.speed = self.speed + self.accel*dt
        grapple:lookForEnemies()
        if distanceBetween(player:getX(), player:getY(), self.x, self.y) < 10 then
            grapple:reset()
        end
    elseif self.state == 3 then
        self.speed = 0
    end

    --[[for _,l in ipairs(loots) do
        if distanceBetween(l.x, l.y, self.x, self.y) < 10 then
            l.grappleed = true
        end
    end]]

    self.rot = getRotationFromVector( getSelfToPlayerVector(self.x, self.y):rotated(math.pi) )

    if self.state == 1 or self.state == 2 then
        self.x = self.x + self.dir.x * dt
        self.y = self.y + self.dir.y * dt
    end

    self.soundTimer = self.soundTimer - dt
    if self.soundTimer < 0 then
        self.soundTimer = 0.24
        --dj.play(sounds.items.grapple, "static", "effect")
    end
end

function grapple:lookForEnemies()
    local hitEnemies = world:queryCircleArea(self.x, self.y, self.rad, {'Enemy', 'Enemy2'})
    for _,e in ipairs(hitEnemies) do
        if e.parent.hookable then
            if (e.parent.dizzyTimer <= 0) then
                e.parent.dizzyCounter = e.parent.dizzyCounter+1
            end
            e.parent.dizzyTimer = 0.75 / ((e.parent.dizzyCounter+1)*2)
            e.parent.hasBeenStunned = false
            e.parent.hooked = true
        end
    end
    if #hitEnemies > 0 then grapple:retreat() end
end

function grapple:draw()
    -- don't draw anything if the grapple is not active
    if self.state == 0 then return end
    setWhite()
    love.graphics.draw(self.sprite, self.x, self.y, self.rot, nil, nil, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
end

grapple.rope = {}
function grapple.rope:draw()
    if grapple.state == 0 then return end
    local vec = getPlayerToSelfVector(grapple.x, grapple.y)*4
    love.graphics.setColor(0.1,0.1,0.1,1)
    love.graphics.setLineWidth(0.9)
    love.graphics.line(grapple.x, grapple.y, player:getX() + vec.x, player:getY() + vec.y + 1)
    setWhite()
end

function grapple:shoot(dir)
    if self.state > 0 then return end
    self.speed = self.baseSpeed
    self.x = player:getX()
    self.y = player:getY()+5
    self.state = 1
    self.timer = 0.65
    self.dir = player.attackDir * self.speed
    dj.play(sounds.items.grapple, "static", "effect")
    self.soundTimer = 0.24

    grapple.tween = flux.to(grapple, grapple.totalTime/2, {speed = 0}):ease("quartin"):oncomplete(function()
        grapple:retreat()
    end)
end

function grapple:retreat()
    if grapple.tween then grapple.tween:stop() end
    grapple.tween = nil
    self.state = 2
    local newSpeed = grapple.baseSpeed
    grapple.tween = flux.to(grapple, grapple.totalTime/2, {speed = newSpeed}):ease("quartout")
end

function grapple:hook()
    self.state = 3
    if self.tween then self.tween:stop() end
    self.tween = nil
    dj.play(sounds.items.set, "static", "effect")
    player.state = 4.2
    player:setLinearVelocity(0, 0)
    player:setCollisionClass('Ignore')
end

function grapple:reset()
    self.state = 0
    self.speed = self.baseSpeed
end
