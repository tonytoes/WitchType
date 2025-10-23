props = {}

function props:getStats(p)
    
    if p.id == "pot" then
        p.rubbleClass = "potShards"
        p.shadowScale = 1
        p.shadowY = 2.5
        p.breakSound = sounds.destroy.pot
    end

    if p.id:startswith("shelf") then
        p.rubbleClass = "shelf"
        p.mass = 10
        p.shadowSpr = sprites.blank
        p.breakSound = sounds.destroy.shelf
    end

    if p.id:startswith("bed") then
        p.rubbleClass = "wood"
        p.shadowSpr = sprites.blank
        p.mass = 15
        p.breakSound = sounds.destroy.box
    end

    if p.id:startswith("chair") or p.id == "stool" then
        p.rubbleClass = "woodSmall"
        p.shadowSpr = sprites.blank
        p.mass = 2 if p.id == "stool" then p.mass = 1 p.shadowSpr = "roundXS" end
        p.breakSound = sounds.destroy.wood
    end

    if p.id:startswith("barrel") then
        p.rubbleClass = "woodDark"
        p.shadowSpr = "squareM"
        p.shadowScale = 1.1
        p.shadowY = 1.5
        p.mass = 5
        p.breakSound = sounds.destroy.box
    end

    if p.id == "box" or p.id == "box2" then
        --p.breakClass = "box"
        p.rubbleClass = "wood"
        p.shadowSpr = "chestSmall"
        p.shadowScale = 0.85
        p.shadowY = 2.5
        p.mass = 5
        p.breakSound = sounds.destroy.box

        if p.id == "box" then
            p.rubbleClass = "woodDark"
        end
    end

    if p.id == "logs" then
        p.rubbleClass = "logs"
        p.shadowSpr = "squareM"
        p.shadowScale = 1
        p.shadowY = 0
        p.mass = 4
        p.breakSound = sounds.destroy.wood
    end

    return p
end

function props:spawn(id, x, y, args, tiledId)

    if args and args.name then
        -- Do not spawn the prop if the name is in data.states.breakables
        if data.states.breakables and data.states.breakables[args.name] then return end
    end

    local dim = {}

    local spr = sprites.props[id]
    if spr then
        dim.width = spr:getWidth()
        dim.height = spr:getHeight() * 0.65
    else
        return nil
    end

    if not dim.width or not dim.height then return end

    dim.x = x - dim.width/2
    dim.y = y - dim.height/2

    local prop = world:newRectangleCollider(dim.x, dim.y, dim.width, dim.height, {collision_class = "Prop"})
    prop:setFixedRotation(true)
    prop:setLinearDamping(10)

    --wall:setType('static')
    prop.id = id
    prop.dead = false
    prop.offY = 0
    prop.breakable = true
    prop.x = x
    prop.y = y
    prop.sprite = spr
    prop.width = dim.width
    prop.height = dim.height
    prop.offY = dim.height/-2
    prop.shadowSpr = "roundS"
    prop.shadowX = 0
    prop.shadowY = 0
    prop.shadowScale = 1
    prop.visible = true
    prop.canSpark = true
    prop.mass = 1
    prop.breakSound = sounds.destroy.pot
    prop.breakSoundRand = 0.1
    prop.breakSoundVolume = 1
    prop.resource = nil
    prop.respawnTime = 600 -- seconds

    if tiledId then
        prop.uniqueName = loadedMap .. "_prop_" .. id .. tiledId
    else
        prop.uniqueName = loadedMap .. "_prop_" .. id
    end

    prop = props:getStats(prop)

    -- copy over all args properties
    if args then
        for k,v in pairs(args) do
            prop[k] = v
        end
    end

    prop:setMass(prop.mass)

    function prop:hit()
        self.dead = true

        if self.rubbleClass then
            rubbleEvent(self.rubbleClass, self.x, self.y)
        end

        if self.breakSound then
            sem:playSound(self.breakSound, {pitchRand = self.breakSoundRand, volume = self.breakSoundVolume})
        end

        if self.canSpark then effects2:spawn("spark", self.x, self.y) end
        if self.name then data.states.breakables[self.name] = true end

        if self.resource then
            if data.states.timers[self.uniqueName] then
                -- this resource was collected and is still respawning
            else
                resources:spawn(self.resource, self.x, self.y-2, {dir=vector(1,0)})
                addDataTimer(self.uniqueName, self.respawnTime * misc:getResourceMult())
            end
        end
    end

    function prop:update(dt)
        if not self.dead then
            prop.x, prop.y = prop:getPosition()

            if inWater(prop.x, prop.y, 1) then
                self:disintigrate()
                sink(prop.x, prop.y)
            end
        end
    end

    function prop:draw()
        if not self.dead then
            local px, py = self:getPosition()
            love.graphics.setColor(1, 1, 1, 1)
            love.graphics.draw(self.sprite, px, py + self.offY, nil, nil, nil, self.width/2, self.height/2)
        end
    end

    function prop:disintigrate()
        self.dead = true
        self.canSpark = false
        self.breakClass = nil
        self:hit()
    end

    table.insert(props, prop)

end

function props:update(dt)
    local i = #props
    while i > 0 do
        if props[i].dead then
            if props[i].onBreak then props[i]:onBreak() end
            props[i]:destroy()
            table.remove(props, i)
        elseif props[i].update then
            props[i]:update(dt)
        end
        i = i - 1
    end
end
