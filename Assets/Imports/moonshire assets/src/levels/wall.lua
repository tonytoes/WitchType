walls = {}
wallJrs = {} -- someday, will grow up to be a real wall

function spawnWall(wallShape, x, y, width, height, name, type, args, tiledId)

    -- Do not spawn the wall if the name is in data.states.breakables
    if name and name ~= "" then
        if data.states.breakables and data.states.breakables[name] then return end
    end

    if args and args.bailWithBossCheck then
        if allEnemies[args.bailWithBossCheck] then
            return nil 
        end
    end

    if args and args.bailWithoutBossCheck then
        if not allEnemies[args.bailWithoutBossCheck] then
            return nil 
        end
    end

    if args and args.insta then
        args.name = name
        args.dir = args.insta
        spawnWallJr("insta", x, y, width, height, args)
        return nil
    end

    local wall = nil
    if width == -1 then -- polygon wall
        -- Convert Tiled list of points
        local polyPoints = {}
        local i = #wallShape
        while i > 0 do
            table.insert(polyPoints, wallShape[i].x)
            table.insert(polyPoints, wallShape[i].y)
            i = i - 1
        end

        -- For some reason, these polygons are still not working. I can do it manually though.
        if name == "lightningGate" then
            wall = world:newPolygonCollider({1044, 444, 1096, 368, 1148, 444}, {collision_class = "Wall"})
        else
            wall = world:newPolygonCollider(polyPoints, {collision_class = "Wall"})
        end
    else
        if width <= 0 or height <= 0 then return end
        wall = world:newRectangleCollider(x, y, width, height, {collision_class = "Wall"})
    end

    wall:setType('static')
    wall.dead = false
    wall.offY = 0
    wall.name = name
    wall.type = type
    wall.x = x
    wall.y = y
    wall.danger = 0
    wall.isWall = true
    wall.vertical = width < height
    wall.width = width
    wall.height = height
    wall.smOff = 0
    wall.scaleX = 1
    wall.scaleY = 1
    wall.breakEffect = "rockBreak"

    if args and args.parent then
        wall.parent = args.parent
    end

    -- copy over all args properties
    if args then
        for k,v in pairs(args) do
            wall[k] = v -- even though k is the index, I believe the index should be strings, so this should apply all properties
        end
    end

    if wall.resource then
        if not wall.resourceCount then wall.resourceCount = 1 end
        wall.resourceRespawnTime = 600 -- seconds
        wall.uniqueName = loadedMap .. "_break_" .. wall.resource .. tiledId
    end

    -- NOT USED ANYMORE
    if name and name:startswith('break') then
        wall.breakable = true

        -- an example of a name is 'breakRock1', where Rock tells us the sprite
        if name:find("Rock") then
            wall.sprite = sprites.environment.breakableRock
            function wall:onBreak()
                data.states.breakables[self.name] = true
                particleEvent(wall.breakEffect, x+width/2, y+height/2)
                dj.play(sounds.destroy.crumble, "static", "effect")
            end
        elseif name:find("Vine") then
            wall.sprite = sprites.environment.vines
            wall.offY = -4
            wall.danger = 1
            wall.type = "cuttable"
            wall.cuttable = true
            function wall:onBreak()
                data.states.breakables[self.name] = true
                particleEvent("vineBreak", x+width/2, y+height/2)
            end
        elseif name:find("Wall") then
            wall.sprite = sprites.environment.breakableWall
            wall.offY = -8
            function wall:onBreak()
                data.states.breakables[self.name] = true
                particleEvent(wall.breakEffect, x+width/2, y+height/2)
            end
        elseif name:find("Door") then
            wall.sprite = sprites.environment.lockedDoor
            wall.offY = -4
            wall.type = "lockedDoor"

            function wall:onBreak()
                data.states.breakables[self.name] = true
                shake:standard(3)
            end
        end
    end

    if wall.type then
        if wall.type == 'ground' then
            wall:setCollisionClass('Ground')
        end
        if wall.type == 'shrub' then
            wall.sprite = sprites.environment.shrub
            wall.type = "cuttable"
            wall.scale = 0.95
            wall.cuttable = true
            function wall:onBreak()
                particleEvent("grassBreak", x+width/2, y+height/2)
                if math.random() < 0.25 then
                    spawnLoot(self:getX(), self:getY(), "coin1", true)
                end
            end
            wall:setCollisionClass('Ground')
        end
        if wall.type == "blockade" then
            wall.blockade = true
            wall.blockadeActive = false
            if wall.name == "blockadeVine" then
                dj.play(sounds.environment.sprout, "static", "effect", 0.5)
                wall.danger = 1
                if width > height then
                    local vineX = 6
                    local totalVines = 0
                    while vineX < width do
                        local yOff = 8
                        if totalVines%2 == 0 then yOff = 12 end
                        effects:spawn("spikeVineBlockade", wall.x + vineX, wall.y + yOff + math.random()*2)
                        vineX = vineX + 9
                        totalVines = totalVines + 1
                    end
                else
                    local vineY = 6
                    local totalVines = 0
                    while vineY < height do
                        local xOff = 5
                        if totalVines%2 == 0 then xOff = 10 end
                        effects:spawn("spikeVineBlockade", wall.x + xOff + math.random()*2, wall.y + vineY)
                        vineY = vineY + 9
                        totalVines = totalVines + 1
                    end
                end
            end
            if wall.name == "blockadeLightning" then
                wall.danger = 1
                if wall.vertical then
                    effects:spawn("barLightning", wall.x + width/2, wall.y + height/2, {blockade=true, vertical=true})
                else
                    effects:spawn("barLightning", wall.x + width/2, wall.y, {blockade=true})
                end
            end
        end

        if wall.type:startswith("break_") then
            wall.breakable = true
            local wid = split(wall.type, "_")[2]
            local xSwap = true

            if wid == "rockSm" then
                wall.sprite = sprites.environment.breakableRockSm
                wall.offY = -2
                wall.smOff = -6
                wall.breakEffect = "rockBreakSm"
            end
            if wid == "rockBig" then
                wall.sprite = sprites.environment.breakableRock
                wall.offY = -1
                wall.smOff = -12
                wall.breakEffect = "rockBreakBig"
            end

            if wid == "scrapSm" then
                wall.sprite = sprites.environment.scrapSm
                wall.offY = -2
                wall.smOff = -6
                wall.breakEffect = "scrapBreakSm"
            end
            if wid == "scrapBig" then
                wall.sprite = sprites.environment.scrapBig
                wall.offY = -1
                wall.smOff = -12
                wall.breakEffect = "scrapBreakBig"
            end

            if xSwap and math.random() < 0.5 then wall.scaleX = -1 end

            function wall:draw()
                local sc = 1
                if self.scale then sc = self.scale end
                love.graphics.draw(self.sprite, self:getX(), self:getY() + self.offY, nil, sc * self.scaleX, sc, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
            end

            function wall:onBreak()
                if self.name then data.states.breakables[self.name] = true end
                particleEvent(self.breakEffect, self.x+self.width/2, self.y+self.height/2)

                if self.resource then
                    if data.states.timers[self.uniqueName] then
                        -- nothin'
                    else
                        resources:spawn(self.resource, self.x+self.width/2, self.y+self.height/2, {dir=vector(1,0)})
                        addDataTimer(self.uniqueName, self.resourceRespawnTime * misc:getResourceMult())
                    end
                end
            end
        end
    end

    if wall.parent and wall.parent.plug then
        function wall:update(dt)
            self:setPosition(self.parent.x+7.5, self.parent.y+7.5)
        end
    end

    table.insert(walls, wall)

end

function walls:update(dt)
    local i = #walls
    while i > 0 do
        if walls[i].dead then
            if walls[i].onBreak then walls[i]:onBreak() end
            walls[i]:destroy()
            table.remove(walls, i)
        elseif walls[i].update then
            walls[i]:update(dt)
        end
        i = i - 1
    end
end

function walls:draw()
    -- most walls are invisible colliders, but some have sprites
    for _,w in ipairs(walls) do
        if w.sprite and not w.draw then
            shaders:color(w)

            local sc = 1
            if w.scale then sc = w.scale end
            love.graphics.draw(w.sprite, w:getX(), w:getY() + w.offY, nil, sc, sc, w.sprite:getWidth()/2, w.sprite:getHeight()/2)

            love.graphics.setShader()
        end
    end
end

function walls:undelay(t) -- go through the map's walls and find the delay ones
    if gameMap.layers["Walls"] then
        for i, obj in ipairs(gameMap.layers["Walls"].objects) do
            if obj.properties and obj.properties.delay and obj.type == t then
                if obj.shape == "polygon" then
                    spawnWall(obj.polygon, obj.x, obj.y, -1, nil, obj.name, obj.type)
                else -- rectangle
                    spawnWall(obj.shape, obj.x, obj.y, obj.width, obj.height, obj.name, obj.type)
                end
            end
        end
    end
end

function walls:clearBlockades()
    local i = #walls
    while i > 0 do
        if walls[i].type and walls[i].blockade then
            if walls[i].onBreak then walls[i]:onBreak() end
            walls[i]:destroy()
            table.remove(walls, i)
        end
        i = i - 1
    end

    for _,e in ipairs(effects) do
        if e.blockade then
            if e.retreat then e:retreat() end
        end
    end
end

function walls:deleteByName(nm)
    local i = #walls
    while i > 0 do
        if walls[i].name and walls[i].name == nm then
            walls[i]:destroy()
            table.remove(walls, i)
        end
        i = i - 1
    end
end


function spawnWallJr(class, x, y, width, height, args)
    local wallJr = {}
    wallJr.class = class
    wallJr.x = x
    wallJr.y = y
    wallJr.width = width
    wallJr.height = height
    wallJr.args = args

    -- copy over all args properties
    if args then
        for k,v in pairs(args) do
            wallJr[k] = v -- even though k is the index, I believe the index should be strings, so this should apply all properties
        end
    end

    function wallJr:update(dt)
        if self.class == "insta" then
            if distanceBetween(self.x, self.y, player:getX(), player:getY()) < 64 then
                local rect = {}
                rect.x = self.x rect.y = self.y rect.width = self.width rect.height = self.height

                if self.dir == "up" then
                    rect.y = rect.y - 12
                    rect.height = 8
                elseif self.dir == "down" then
                    rect.y = rect.y + 20
                    rect.height = 8
                elseif self.dir == "left" then
                    rect.x = rect.x - 16
                    rect.width = 8
                elseif self.dir == "right" then
                    rect.x = rect.x + 24
                    rect.width = 8
                end

                local hitPlayer = world:queryRectangleArea(rect.x, rect.y, rect.width, rect.height, {'Player'})
                if hitPlayer and #hitPlayer > 0 then
                    self:activate()
                end
            end
        end
    end

    function wallJr:activate()
        print('activating')
        if self.name and self.name == "blockadeVine" then
            spawnWall("rectangle", self.x, self.y, self.width, self.height, "blockadeVine", 'blockade')
        end

        self.dead = true
    end

    table.insert(wallJrs, wallJr)
end

function wallJrs:update(dt)
    local i = #wallJrs
    while i > 0 do
        if wallJrs[i].dead then
            table.remove(wallJrs, i)
        elseif wallJrs[i].update then
            wallJrs[i]:update(dt)
        end
        i = i - 1
    end
end
