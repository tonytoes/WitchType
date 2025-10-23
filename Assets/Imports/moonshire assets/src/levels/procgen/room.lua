rooms = {}

function rooms:reset()
    removeTable(rooms)
end

-- exits
-- -2 represents the entrance
-- -1 represents an exit pending a room in that direction
-- 0 represents no exit in that direction
-- 1 or higher represents a room id for that direction

function rooms:create(id, mapId, exits, shape, x, y, items, enemyId)
    local room = {}

    room.id = id -- unique id of this room
    room.mapId = mapId -- map being used for the layout here
    room.exits = exits -- list of exits (ex. {0, 2, 7, 0}) where 2 and 7 are room id's 
    room.shape = shape -- the shape this room is on the map
    room.items = items -- list of items that are rewarded in this room
    room.enemyId = enemyId -- id of the enemy layout that this room has
    room.x = x -- used to prevent overlapping rooms
    room.y = y

    --updatePathDir(room)
    map:addRoom(room)
    table.insert(rooms, room)
end

function rooms:getNewPos(x, y, dir)
    local vec = getVecFromDir(dir)
    local rmX = x + vec.x
    local rmY = y + vec.y
    return rmX, rmY
end

function rooms:isOpen(x, y)
    for i,r in ipairs(rooms) do
        if r.x == x and r.y == y then
            return false
        end
    end
    return true
end

function getExitCount(exitList)
    local count = 0
    for i=1,4 do
        if exitList[i] == -1 then
            count = count + 1
        end
    end
    return count
end

--[[
-- use when the recently created room only has 1 new exit
function updatePathDir(rm)
    local ex = rm.newExits
    if getExitCount(ex) ~= 1 then return end
    for i=1,4 do
        if ex[i] then
            paths[level.pathIter].dir = i
        end
    end
end]]
