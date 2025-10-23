function generateLevel()

    map:reset()

    while level.roomCounter < level.rooms do
        updatePathIter()
        generateRoom()
    end

    map:setExits()

    love.filesystem.write("procgen-test.lua", table.show(rooms, "rooms"))

end

function updatePathIter()
    local continue = true
    local newIter = level.pathIter + 1
    local loopCount = 0
    
    while continue do
        -- Update the pathIter to get current Path
        local nextPath = paths[newIter]
        if nextPath == nil then
            newIter = 1
        elseif nextPath.active then
            level.pathIter = newIter
            continue = false
        else
            newIter = 1
        end
        loopCount = loopCount + 1

        if loopCount > level.rooms * 2 then
            -- infinite loop error! no active paths found
            return nil
        end
    end
end

function generateRoom()

    level.roomCounter = level.roomCounter + 1
    local path = paths[level.pathIter]

    if path.currentRoom == -1 then -- generate starting room
        local mapId = "small/13-entrance"
        local exits = {-1, 0, -2, 0} -- retrieved from previous map ID
        rooms:create(1, mapId, exits, map.shapes.small, 0, 0, {}, -1)
    else
        local thisRoom = rooms[path.currentRoom]
        -- iterate through all available maps
        -- make list of maps that have an exit matching thisRoom's exit structure
        -- make sure the new exits match if this is a branch,
        -- as well as if the new exits will cause a collision in the dungeon map
        -- keep in mind the favDir as well

        local oppDir = getOppDir(path.dir)
        --local isBranch = level.branchTable[level.roomCounter]
        local isBranch = false
        local smallOptions = {}

        -- Had some reference issues where mapData was getting updated
        -- Making a copy helps to prevent this
        local copyMapData = copy(mapData)

        if level.roomCounter >= level.rooms then
            print("alcoves only")
            -- only choose alcoves
            for i,m in ipairs(copyMapData[1]) do -- 'small' rooms
                --print("4: " .. m[1])
                --if m[4] then print("oppDir: " .. oppDir .. ", m[2][oppDir]: " .. m[2][oppDir] .. ", 4: " .. m[4]) end
                if m[2][oppDir] == -1 and m[4] == "alcove" then
                    table.insert(smallOptions, i)
                end
            end
        else
            for i,m in ipairs(copyMapData[1]) do -- 'small' rooms
                if m[2][oppDir] == -1 and m[3] == isBranch and m[4] ~= "alcove" then
                    table.insert(smallOptions, i)
                end
            end
        end
        -- need to account for favDir in here somewhere
        -- need to account for collisions here as well

        if #smallOptions == 0 then
            print("No options found.")
            for i=1,4 do
                print(thisRoom.exits[i])
            end
            print("oppDir: " .. oppDir)
            print("roomCount: " .. level.roomCounter)
        end

        local newX, newY = rooms:getNewPos(thisRoom.x, thisRoom.y, path.dir)

        local result = math.random(1, #smallOptions)
        local newMapInt = smallOptions[result]
        local newMap = copyMapData[1][newMapInt] -- NOTE: copyMapData[1] represents SMALL maps
        local mapId = newMap[1]

        local approved = false
        local catchCount = 0

        while approved == false do
            local propX = 0
            local propY = 0

            local exits = newMap[2]
            local exitsFit = true
            for i=1,4 do
                if i ~= oppDir and exits[i] == -1 then
                    -- Need to validate that all exits lead to free space on the map
                    if rooms:isOpen( rooms:getNewPos(newX, newY, i) ) then
                        -- exit is valid
                    else
                        exitsFit = false
                    end
                end
            end

            if exitsFit then
                approved = true
            end

            if approved and catchCount < 100 then
                catchCount = catchCount + 1
                local isUnique = true
                for i,r in ipairs(rooms) do
                    if r.mapId == mapId then
                        isUnique = false
                    end
                end
                if isUnique == false then approved = false end
            end

            if approved == false then
                catchCount = catchCount + 1

                -- NOTE: this is copied code. Need to refactor
                result = math.random(1, #smallOptions)
                newMapInt = smallOptions[result]
                newMap = copyMapData[1][newMapInt] -- NOTE: copyMapData[1] represents SMALL maps
                mapId = newMap[1]
            end

            if catchCount > 200 then
                print("Cannot find a room that fits")
            end
        end

        -- exits for the NEW room
        local exits = newMap[2]
        if exits[oppDir] == -1 then
            exits[oppDir] = path.currentRoom
        else
            -- ERROR, this should not happen
        end

        -- update the CURRENT room's exit list
        if thisRoom.exits[path.dir] == -1 then
            rooms[path.currentRoom].exits[path.dir] = level.roomCounter
        else
            -- ERROR, this should not happen
        end

        rooms:create(level.roomCounter, mapId, exits, map.shapes.small, newX, newY, {}, -1)
    end

    paths[level.pathIter].currentRoom = level.roomCounter
    updateCurrentPathDir() -- might need to adjust for branches
end

function updateCurrentPathDir()
    local rm = rooms[paths[level.pathIter].currentRoom]
    local stillActive = false
    for i=1,4 do
        if rm.exits[i] == -1 then
            paths[level.pathIter].dir = i
            stillActive = true
        end
        -- I think the branching logic should go in here as well
    end
    paths[level.pathIter].active = stillActive
end
