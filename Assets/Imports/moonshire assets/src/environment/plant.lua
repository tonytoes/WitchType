plants = {}

function plants:getStats(plt)
    if plt.id == "sprout" or plt.id == "tallGrass" then
        plt.layerCount = 2
    end

    if plt.id == "grass" then
        plt.shadowW = 1.25
        plt.shadowH = 0.9
        plt.spr = sprites.environment.plants.oldGrass
    end

    return plt
end

function spawnPlant(id, x, y, args, tiledId) -- class is tiledClass
    if args and args.challengeCheck then
        if not data.states.challenges[args.challengeCheck] then return nil end
    end

    if id:startswith('save') then spawnSaveSpot(id, x, y) return nil end
    if id:startswith('tree_') then
        local treeId = id:sub(6) -- get string after _
        spawnTree(x, y, treeId, args) return nil
    end
    if id:startswith('soil_') then
        local soilId = id:sub(6) -- get string after _
        soils:spawn(soilId, x, y, args) return nil
    end
    if id:startswith('spike_') then
        local spikeId = id:sub(7) -- get string after _
        spikes:spawn(x, y, spikeId, args) return nil
    end
    if id:startswith('sink_') then
        local sinkId = id:sub(6) -- get string after _
        sinks:new(sinkId, x, y, tiledId) return nil
    end

    if id == "shrub" then id = "grass" end

    local plant = {}
    plant.id = id
    plant.x = x
    plant.y = y
    plant.dead = false
    plant.spr = sprites.environment.plants.tallGrass
    plant.cuttable = true
    plant.flipX = 1 -- need flipX since scaleX is being tweened
    plant.scaleX = 1
    plant.scaleY = 1

    plant.shadowSpr = "roundXXS"
    plant.showShadow = true
    plant.shadowY = 0
    plant.shadowW = 0.8
    plant.shadowH = 1

    plant.uid = "plant_" .. id .. tostring(math.random())

    plant.xOff = 0
    plant.yOff = 0
    plant.smOff = 0 -- sprite manager offset

    plant = plants:getStats(plant)

    -- copy over all args properties
    if args then
        for k,v in pairs(args) do
            plant[k] = v -- even though k is the index, I believe the index should be strings, so this should apply all properties
        end
    end

    local newSpr = sprites.environment.plants[id]
    if newSpr then plant.spr = newSpr end

    if args and args.grow then
        local growTime = 1.5
        if plant.growTime then growTime = plant.growTime end
        plant.scaleX = 0
        plant.scaleY = 0
        sem:playSound(sounds.effects.flowerGrow)
        flux.to(plant, growTime, {scaleX = 1, scaleY = 1}):ease("elasticout")
    end

    if plant.huge then
        plant.scaleX = 3
        plant.scaleY = 3
    end

    if id == "climbVine" then
        plant.shadowW = 0
        plant.shadowH = 0
        plant.yOff = 30
        plant.smOff = -64
    end

    if plant.layerCount then
        local fullPauseTime = math.random() * 0.5 -- more like, the initial pause time for all layers
        plant.layers = {}
        for i=1, plant.layerCount do
            local layer = {}
            layer.spr = sprites.environment.plants[id .. i]
            layer.parentPlantUid = plant.uid
            layer.x = plant.x
            layer.y = plant.y
            layer.xOff = plant.xOff
            layer.yOff = plant.yOff
            layer.scaleX = plant.scaleX
            layer.scaleY = plant.scaleY
            layer.flipX = plant.flipX
            layer.rot = 0
            layer.rotSpeed = math.random()
            layer.dead = false

            layer.windTween = nil
            layer.windVal = 0 -- 0 to 1
            layer.windTime = 0.65
            layer.maxWindRot = math.pi/8

            layer.maxPushRot = math.pi/4
            layer.pushVal = 0 -- 0 to 1
            layer.pushDist = 12

            layer.initPauseTimer = fullPauseTime + (i-1)*0.2

            local easeType = "sineinout"
            function layer:windOut()
                self.windTween = flux.to(layer, layer.windTime, {windVal = 1}):ease(easeType):oncomplete(function() layer:windIn() end)
            end
            function layer:windIn()
                self.windTween = flux.to(layer, layer.windTime, {windVal = 0}):ease(easeType):oncomplete(function() layer:windOut() end)
            end

            function layer:update(dt)
                local rotSpeed = 4
                local destVal = 0
                local diff = math.abs(self.pushVal)
                local dist = distanceBetween(self.x, self.y, player.x, player.y-3)
                if dist < self.pushDist then
                    local mult = 1 if self.x < player.x then mult = -1 end
                    destVal = (1 - dist/self.pushDist) * mult
                    diff = math.abs(destVal - self.pushVal)
                end

                if diff < rotSpeed*dt then
                    self.pushVal = destVal
                else
                    local destMult = 1 if destVal < self.pushVal then destMult = -1 end
                    self.pushVal = self.pushVal + (rotSpeed * destMult * dt)
                end

                if self.initPauseTimer > 0 then self.initPauseTimer = self.initPauseTimer - dt end
                if self.initPauseTimer < 0 then self:windOut() self.initPauseTimer = 0 end
                self.rot = (self.windVal * self.maxWindRot + (self.pushVal * self.maxPushRot))
            end

            function layer:draw()
                love.graphics.draw(self.spr, self.x, self.y, self.rot, self.scaleX * self.flipX, self.scaleY, self.spr:getWidth()/2, self.spr:getHeight() - self.yOff)
            end

            table.insert(plant.layers, layer)
        end
    end

    function plant:update(dt)
        if self.anim then self.anim:update(dt) end
        if self.layers then
            for _,l in ipairs(self.layers) do
                l:update(dt)
            end
        end
    end

    function plant:draw()
        setWhite()
        if self.layers then
            for _,l in ipairs(self.layers) do
                l:draw()
            end
        elseif self.anim and self.spr then
            self.anim:draw(self.spr, self.x + self.xOff, self.y, nil, self.scaleX * self.flipX, self.scaleY, self.width/2, self.height - self.yOff)
        elseif self.spr then
            love.graphics.draw(self.spr, self.x, self.y, nil, self.scaleX * self.flipX, self.scaleY, self.spr:getWidth()/2, self.spr:getHeight() - self.yOff)
        end
    end

    table.insert(plants, plant)
end

function plants:update(dt)
    for _,s in ipairs(plants) do
        if s.update then s:update(dt) end
    end

    plants:removeDead()
end

function plants:getByUid(uid)
    for _,s in ipairs(plants) do
        if s.uid == uid then return s end
    end
    return nil
end

function plants:spawnField(id, x, y, w, h, args)
    local plantId = id
    local gap = 8
    local rand = 2

    local trackW = 0
    local trackH = 0
    local trackRow = 0
    while trackH <= h do
        while trackW <= w do
            local randX = math.random() * rand if math.random() > 0.5 then randX = -randX end
            local randY = math.random() * rand if math.random() > 0.5 then randY = -randY end
            spawnPlant(plantId, x + trackW + randX, y + trackH + randY)
            trackW = trackW + gap
        end
        trackRow = trackRow + 1
        trackH = trackRow * gap*0.75
        trackW = 0 if trackRow % 2 ~= 0 then trackW = gap/2 end
    end
end

function plants:deleteLayers(plnt)
    if plnt.layers then
        for _,l in ipairs(plnt.layers) do
            if l.windTween then l.windTween:stop() end
        end
    end
    plnt.layers = nil
end

function plants:removeDead()
    local i = #plants
    while i > 0 do
        if plants[i].dead then
            plants:deleteLayers(plants[i])
            table.remove(plants, i)
        end
        i = i - 1
    end
end

function plants:removeAll()
    for i,s in ipairs(plants) do plants[i].dead = true end
    plants:removeDead()
end
