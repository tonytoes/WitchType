resources = {}
resources.all = {}

resources.all.gold = {
    variantCount = 3,
    shadowSpr = "roundXS"
}
resources.all.bone = {
    --variantCount = 2
}
resources.all.seed = {
    variantCount = 2,
    shadowSpr = "roundXS"
}
resources.all.battery = {
    shadowSpr = "roundXS"
}
resources.all.ore = {}
resources.all.fish = {}
resources.all.diamond = {
    shadowSpr = "roundXS"
}

function resources:spawn(id, x, y, args)
    if not args then args = {} end
    local xtraRes = misc:getAssist("resourceBonus")
    if xtraRes > 0 and not args.isBonus then
        args.isBonus = true
        for i=1,xtraRes do
            local randX = math.random(-16, 16)
            local randY = math.random(-16, 16)
            args.dir = vector(randX, randY)
            resources:spawn(id, x, y, args)
        end
    end
    
    local resource = {}
    resource.id = id
    resource.x = x
    resource.y = y
    resource.shadowSpr = "roundS"
    resource.shadowY = 5
    resource.shadowSc = 1
    resource.floatY = 2
    resource.floatMax = 2
    resource.bounceY = 0
    resource.magnetRad = 32
    if allGems.amethyst then resource.magnetRad = 144 end
    resource.dead = false
    resource.scale = 1
    resource.speed = 0
    resource.floatTime = 1.2
    resource.spr = sprites.items.resources[id .. '1']

    resource.xScale = 1
    if math.random() > 0.5 then resource.xScale = -1 end

    -- 0: not started, 1: bouncing, 10: resting (floating), 20: floating to player
    resource.state = 0 -- hasn't started yet

    -- copy over all args properties
    if args then
        for k,v in pairs(args) do
            resource[k] = v -- even though k is the index, I believe the index should be strings, so this should apply all properties
        end
    end

    if resources.all[id] then
        resource.variantCount = resources.all[id].variantCount
        if resources.all[id].shadowSpr then resource.shadowSpr = resources.all[id].shadowSpr end
    end

    if resource.variantCount then
        local variant = math.random(1, resource.variantCount)
        resource.spr = sprites.items.resources[id .. variant]
    end

    if args and args.dir then
        resource.dir = args.dir -- NOTE: this dir is NOT normalized

        resource.state = 1
        local rand = math.random()/4
        local totalTime = 0.5 + rand
        local height = -28 - (rand * 30)
        if args.bounceHeight then height = args.bounceHeight end
        if height > -20 then totalTime = totalTime*0.75 end

        flux.to(resource, totalTime/2, {bounceY = height, shadowSc = 0.6}):ease("quadout"):oncomplete(function()
            if resource.magnet then
                resource.state = 20
                flux.to(resource, totalTime, {bounceY = 0, shadowSc = 1}):ease("sineinout")
            else
                flux.to(resource, totalTime/2, {bounceY = 0, shadowSc = 1}):ease("quadin"):oncomplete(function()
                    resource.state = 10
                end)
            end
        end)

        local destX = x + resource.dir.x
        local destY = y + resource.dir.y
        flux.to(resource, totalTime, {x = destX}):ease("linear")
        flux.to(resource, totalTime, {y = destY}):ease("linear")
    end

    -- call this function if the resource floats, to start the cycle
    function resource:floatUp(dest, start)
        local time = self.floatTime
        if start then time = time + math.random()/4 self.floating = true end
        self.tween = flux.to(self, time, {floatY = dest, shadowSc = 0.8}):ease("sineinout"):oncomplete(function() resource:floatDown(resource.floatMax) end)
    end

    function resource:floatDown(dest)
        self.tween = flux.to(self, self.floatTime, {floatY = dest, shadowSc = 1}):ease("sineinout"):oncomplete(function() resource:floatUp(resource.floatMax*-1) end)
    end

    function resource:collect()
        self.dead = true
        player.resource.spr = self.spr
        player:getResource(self.id)
        dataItemGet('resource_' .. self.id)
        sem:playSound(sounds.resources.get, {volume=0.5, pitch=1, pitchRand=0.15})
    end

    if resource.instaCollect then resource:collect() end

    function resource:update(dt)
        if self.state >= 10 and not self.floating then
            self:floatUp(self.floatMax*-1, true)
        end

        if self.state == 10 then
            if distanceBetween(self.x, self.y, player:getX(), player:getY()) < self.magnetRad then
                self.state = 20
            end
        end

        if self.state == 20 then
            self.speed = self.speed + dt*400
            if self.speed > 1200 then self.speed = 1200 end
            self.dir = getFromToVector(self.x, self.y, player:getX(), player:getY()) * self.speed

            if self.dir then
                self.x = self.x + self.dir.x * dt -- speed is baked into dir
                self.y = self.y + self.dir.y * dt
            end

            if distanceBetween(self.x, self.y, player:getX(), player:getY()) < 4 then
                self:collect()
            end
        end
    end

    function resource:draw()
        if self.spr then
            setWhite()
            love.graphics.draw(self.spr, self.x, self.y + self.bounceY + self.floatY, nil, self.scale * self.xScale, self.scale, self.spr:getWidth()/2, self.spr:getHeight()/2)
        end
    end

    table.insert(resources, resource)
end

function resources:update(dt)
    for _,s in ipairs(resources) do
        s:update(dt)
    end

    local i = #resources
    while i > 0 do
        if resources[i].dead then table.remove(resources, i) end
        i = i - 1
    end
end

function resources:getCount(id)
    local amt = 0
    for _,s in ipairs(data.items.resources) do
        if s.id == id and s.count then amt = s.count end
    end
    return amt
end
