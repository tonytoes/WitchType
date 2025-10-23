rubbles = {}

function rubbles:getStats(r)
    if r.id == "wood" then
        r.shadowY = 1.5
        r.shadowSpr = "rectS"
        r.sprOptions = { "wood", "woodAlt", "woodShade", "woodSmall", "woodSmall", "woodSmallShade" }
    end

    if r.id == "woodDark" then
        r.shadowY = 1.5
        r.shadowSpr = "rectS"
        r.sprOptions = { "woodDark", "woodDark", "woodSmallDark", "woodSmallDark" }
    end

    if r.id == "log" then
        r.shadowSpr = "rectWideS"
        r.weightMod = 0.85
    end

    if r.id == "shardL" then
        r.shadowSpr = "roundXS"
        r.sprOptions = { "shardL", "shardL2" }
        r.weightMod = 0.7 -- heavier
        r.rubbleEvent = "potShardsSmall" -- destroy self and call rubble event
    end

    if r.id == "shardS" then
        r.shadowSpr = "rectXXS"
        r.sprOptions = { "shardS", "shardS2" }
        r.weightMod = 0.7 -- heavier
        r.maxBounce = 2
        r.shadowY = 1
    end

    return r
end

function rubbles:spawn(id, x, y, args)
    local rubble = {}
    rubble.id = id
    rubble.x = x
    rubble.y = y
    rubble.args = args

    rubble.sprite = sprites.rubble[id]
    rubble.dead = false
    rubble.visible = true
    rubble.state = 0 -- 0 is rising, 1 is falling
    rubble.airY = 0
    rubble.rot = 0
    rubble.rotDir = 1
    rubble.rotRate = 5 + math.random() * 20
    rubble.shadowSpr = "roundS"
    rubble.shadowScale = 1
    rubble.scaleX = 1 if math.random() > 0.5 then rubble.scaleX = -1 end
    rubble.width = 3
    rubble.height = 3
    rubble.jumpHeight = 18
    rubble.heightStartFactor = 0.15
    rubble.curBounce = 0
    rubble.maxBounce = 2
    rubble.shadowY = 2
    rubble.weightMod = 1 -- 1 is normal, lower is heavier (faster), higher is lighter (floatier)
    if math.random() > 0.5 then rubble.maxBounce = 3 end

    rubbles:getStats(rubble)

    if rubble.sprOptions then
        -- set the sprite to a random one from the list
        local sprName = rubble.sprOptions[math.random(1, #rubble.sprOptions)]
        rubble.sprite = sprites.rubble[sprName]
    end

    -- copy over all args properties
    if args then
        for k,v in pairs(args) do
            rubble[k] = v
        end
    end

    if rubble.sprite then
        rubble.width = rubble.sprite:getWidth()
        rubble.height = rubble.sprite:getHeight()/2
    else
        return nil -- DONT SPAWN IF THERE's NOT A SPRITE
    end

    if rubble.dir then
        rubble.physics = world:newRectangleCollider(-100, -100, rubble.width, rubble.height)
        rubble.physics:setCollisionClass("AirItem")
        rubble.physics:setMass(1)
        rubble.physics:setFixedRotation(true)
    end

    if rubble.physics then
        rubble.physics:setX(x - rubble.width/2)
        rubble.physics:setY(y - rubble.height/2)

        if rubble.dir then -- should always be true here
            rubble.physics:setLinearDamping(0)
            rubble.physics:setLinearVelocity(rubble.dir.x, rubble.dir.y)
            -- NOTE: speed is baked into dir
        end
    end

    function rubble:onLand()
        if self.dead then return nil end

        if inWater(self.x, self.y, 2) then
            self.dead = true
            effects:spawn("tinyFall", self.x, self.y)
            return nil
        end

        if self.rubbleEvent then
            self.dead = true
            rubbleEvent(self.rubbleEvent, self.x, self.y)
        elseif self.curBounce < self.maxBounce then
            if self.dir then self.dir = self.dir * 0.65 end
            if rubble.physics then rubble.physics:setLinearVelocity(self.dir.x, self.dir.y) end
            rubble.rotRate = 5 + math.random() * 10
            self:bounce()
        else
            self.state = 1
            rubble.rotRate = 0
            rubble.rot = 0
            if rubble.physics then rubble.physics:setLinearDamping(8) end
        end
    end

    function rubble:bounce()
        local dist = 0
        local destHeight = rubble.jumpHeight
        local mult = 1
        local weightMult = 1
        if self.weightMod then weightMult = self.weightMod end
        if self.maxBounce == 2 then
            if self.curBounce == 1 then mult = 0.4 end
        elseif self.maxBounce == 3 then
            if self.curBounce == 1 then mult = 0.5 end
            if self.curBounce == 2 then mult = 0.15 end
        end
        destHeight = destHeight * mult
        if mult < 0.5 then mult = mult * 2 end
        local riseTime = (0.15 + (destHeight/24*0.2)) * weightMult
        local fallTime = (0.15 + (destHeight/24*0.2)) * weightMult
        local rubX = self.x
        local rubY = self.y + 0.25 -- so it appears in front?
        local startHeightFactor = rubble.heightStartFactor

        if self.curBounce == 0 then
            self.airY = destHeight*startHeightFactor
        end

        rubble.tween = flux.to(rubble, riseTime, {airY = destHeight, shadowScale = 0.65}):ease("quadout"):oncomplete(function()
            rubble.tween = flux.to(rubble, fallTime, {airY = 0, shadowScale = 1}):ease("quadin"):oncomplete(function()
                rubble:onLand()
            end)
        end)

        self.curBounce = self.curBounce + 1
    end
    rubble:bounce()

    function rubble:update(dt)
        local rx, ry = rubble.x, rubble.y
        if rubble.physics then
            rx, ry = rubble.physics:getX(), rubble.physics:getY()
            rubble.x, rubble.y = rx, ry

            local vx, vy = rubble.physics:getLinearVelocity()
            if distanceBetween(0, 0, vx, vy) < 0.1 then
                self.physics:destroy()
                self.physics = nil
            end
        end

        if self.rotRate then self.rot = self.rot + dt*self.rotRate*self.rotDir end
        if self.anim then self.anim:update(dt) end
    end

    function rubble:draw()
        local rx, ry = self.x, self.y
        if self.physics then
            rx, ry = self.physics:getX(), self.physics:getY()
        end

        love.graphics.setColor(1,1,1,1)
        if self.anim then
            self.anim:draw(self.sprite, rx, ry - self.airY, self.rot, self.scaleX, 1, self.width/2, self.height/2)
        else
            love.graphics.draw(self.sprite, rx, ry - self.airY, self.rot, self.scaleX, 1, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
        end
    end

    table.insert(rubbles, rubble)
end

function rubbles:update(dt)
    for _,b in ipairs(rubbles) do
        b:update(dt)
    end

    local i = #rubbles
    while i > 0 do
        if rubbles[i].dead then
            if rubbles[i].physics then rubbles[i].physics:destroy() end
            table.remove(rubbles, i)
        end
        i = i - 1
    end
end
