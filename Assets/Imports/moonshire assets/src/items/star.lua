stars = {}

function stars:init()
    stars.totalMax = 3
    stars.totalReady = 3
    stars.readyTimer = 0
    stars.timerInterval = 1 -- 1 second reload
end

function spawnStar(id, x, y)
    --if stars.totalReady < 1 then return end
    stars.readyTimer = 0 -- controversial
    --stars.totalReady = stars.totalReady - 1
    local direction = player.attackDir

    local star = {}
    star.id = id
    star.x = x
    star.y = y
    star.timer = 4
    star.dead = false
    star.dir = direction
    star.dirVec = direction
    star.rot = 0
    star.shadowRot = star.rot
    star.rad = 5
    star.speed = 250
    star.sprite = sprites.items.star
    star.effectTimer = 0.06
    star.shadowHeight = 5
    star.tween = nil
    star.speed = star.speed

    star.sprite = sprites.rocks[id]
    star.power = rockTypes[id][2]
    star.weight = rockTypes[id][3]

    function star:update(dt)
        self.timer = self.timer - dt
        if self.timer < 0 then
            self.dead = true
        end

        self.effectTimer = self.effectTimer - dt
        if self.effectTimer < 0 then
            local thresh = 5
            local rangeX = math.random(-100, 100)/100 * thresh
            local rangeY = math.random(-100, 100)/100 * thresh
            --effects:spawn("sparkle", self.x + rangeX, self.y - 2 + rangeY)
            self.effectTimer = 0.075
        end

        --self.rot = self.rot + 14*dt

        self.x = self.x + (self.dirVec.x * self.speed * dt)
        self.y = self.y + (self.dirVec.y * self.speed * dt)

        -- Query for walls
        local walls = world:queryCircleArea(self.x, self.y, self.rad*0.8, {'Wall'})
        if #walls > 0 then effects:spawn("spark", self.x, self.y) self.dead = true end

        -- Query for enemies
        local hitEnemies = world:queryCircleArea(self.x, self.y, self.rad, {'Enemy', 'Enemy2'})
        for _,e in ipairs(hitEnemies) do
            local xtra = 0
            if math.random() < 0.5 then xtra = 1 end
            local dmg = self.power + xtra
            local stunTime = 0.08
            if e.parent.projPoise then stunTime = 0 end
            e.parent:hit(dmg, self.dirVec, stunTime, nil, true)
        end
        if #hitEnemies > 0 then self.dead = true end

    end

    function star:draw()
        setWhite()
        love.graphics.draw(star.sprite, self.x, self.y, self.rot, 0.85, nil, star.sprite:getWidth()/2, star.sprite:getHeight()/2)
    end

    dj.play(sounds.items.arrow, "static", "effect")

    table.insert(stars, star)
end

function stars:update(dt)
    for _,b in ipairs(stars) do
        b:update(dt)
    end

    local i = #stars
    while i > 0 do
        if stars[i].dead then
            table.remove(stars, i)
        end
        i = i - 1
    end

    if stars.totalReady < stars.totalMax then
        stars.readyTimer = stars.readyTimer + dt
        if stars.readyTimer > stars.timerInterval then
            stars.totalReady = stars.totalReady + 1
            stars.readyTimer = 0
        end
    end
end
