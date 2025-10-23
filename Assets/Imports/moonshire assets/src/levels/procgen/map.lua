map = {}
map.shapes = {}
map.shapes.small = 1
map.shapes.square = 2
map.shapes.wide = 3
map.shapes.tall = 4
map.shapes.rect = 5
map.shapes.big = 6

map.rooms = {}

map.maxX = 0
map.maxY = 0

function map:reset()
    removeTable(map.rooms)
    map.maxX = 0
    map.maxY = 0
end

function map:addRoom(rm)
    local rmX = 0
    local rmY = 0
    local prevDir = Dir.up
    local prevRoom = nil
    local prevMapRoom = nil
    
    -- iterate through rm.exits
    -- find the room that is >0
    --   (there will be 1 if it's not the first room)
    -- this represents the previous room
    for i=1,4 do
        if rm.exits[i] > 0 then
            prevRoom = rooms[rm.exits[i]]
            prevMapRoom = map.rooms[rm.exits[i]]
            prevDir = getOppDir(i)
        end
    end

    if prevRoom then
        local vec = getVecFromDir(prevDir)*2
        rmX = prevMapRoom.x + vec.x
        rmY = prevMapRoom.y + vec.y
        print("rmX: " .. rmX)
        print("rmY: " .. rmY)
    end

    local mapRoom = {}
    mapRoom.x = rmX
    mapRoom.y = rmY
    mapRoom.shape = map.shapes.small
    mapRoom.exits = {0, 0, 0, 0} -- gets filled in later

    if math.abs(map.maxX) < math.abs(rmX) then
        map.maxX = rmX
    end

    if math.abs(map.maxY) < math.abs(rmY) then
        map.maxY = rmY
    end

    table.insert(map.rooms, mapRoom)
end

function map:setExits()
    -- Had some reference issues where mapData was getting updated
    -- Making a copy helps to prevent this
    local copyAllRooms = copy(rooms)

    for i,r in ipairs(copyAllRooms) do
        map.rooms[i].exits = r.exits
    end
end

function map:draw(mX, mY, alph)
    -- draw background
    --love.graphics.setColor(0.1, 0.1, 0.1, 0.6)
    --love.graphics.rectangle("fill", -10, -10, windowWidth + 20, windowHeight + 20)
    --setWhite()
    --love.graphics.draw(sprites.ui.map, windowWidth/2, windowHeight/2, nil, scale*2, nil, sprites.ui.map:getWidth()/2, sprites.ui.map:getHeight()/2)

    local ox = mX
    local oy = mY
    local size = 7
    local hall = sprites.ui.hall
    local maxOffX = map.maxX * size * scale * -0.5
    local maxOffY = map.maxY * size * scale * -0.5
    for i,r in ipairs(map.rooms) do
        --love.graphics.setColor(0.95,0.2,0.3,1)
        --love.graphics.rectangle("fill", ox + r.x * size, oy + r.y * size, size, size)
        love.graphics.setColor(1,1,1,alph)
        love.graphics.draw(sprites.ui.room, ox + maxOffX + r.x * size * scale, oy + maxOffY + r.y * size * scale, nil, scale, nil, sprites.ui.room:getWidth()/2, sprites.ui.room:getHeight()/2)
        if i == level.currentRoom then
            local icon = sprites.ui.playerIcon
            love.graphics.draw(icon, ox + maxOffX + r.x * size * scale, oy + maxOffY + r.y * size * scale, nil, scale/2, nil, icon:getWidth()/2, icon:getHeight()/2)
        end
        for j=1,4 do
            if r.exits[j] > 0 then
                local vec = getVecFromDir(j)
                local rot = 0
                if vec.y ~= 0 then rot = math.pi/2 end
                love.graphics.draw(hall, ox + maxOffX + (r.x * size * scale) + (vec.x * size/1 * scale), oy + maxOffY + (r.y * size * scale) + (vec.y * size/1 * scale), rot, scale*1.5, nil, hall:getWidth()/2, hall:getHeight()/2)
            end
        end
    end
end
