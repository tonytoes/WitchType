function transitionUpdate(dt)
    if gameMap.grid then
        local changeDir = nil
        if player:getX() < 0 then
            changeDir = "left"
        elseif player:getX() > gameMap.pixelWidth then
            changeDir = "right"
        elseif player:getY() < 0 then
            changeDir = "up"
        elseif player:getY() > gameMap.pixelHeight then
            changeDir = "down"
        end

        if changeDir then
            gridTransition(changeDir)
        end
    end
end

function gridTransition(dir)
    if not dir then return nil end
    if not gameMap.grid then return nil end
    if not gameMap.gridCell then return nil end

    local destX = player:getX()
    local destY = player:getY()
    local buffer = 4

    -- get the letter, which is the first char of the gridCell
    local ltr = string.sub(gameMap.gridCell, 1, 1)
    -- get the number, which is the remainder of the string
    local num = string.sub(gameMap.gridCell, 2)
    -- convert the number to a number
    num = tonumber(num)

    if dir == "left" then
        destX = gameMap.pixelWidth - buffer
        num = num - 1
    elseif dir == "right" then
        destX = buffer
        num = num + 1
    elseif dir == "up" then
        destY = gameMap.pixelHeight - buffer
        -- decrease ltr
        ltr = string.char(string.byte(ltr) - 1)
    elseif dir == "down" then
        destY = buffer
        -- increase ltr
        ltr = string.char(string.byte(ltr) + 1)
    end

    if ltr < "a" then ltr = "a" end
    if num < 1 then num = 1 end
    loadMap(gameMap.grid .. "/" .. ltr .. num, destX, destY)
end

transitions = {}

function spawnTransition(x, y, width, height, id, destX, destY, transitionType)

    local transition = world:newRectangleCollider(x, y, width, height, {collision_class = "Transition"})
    transition:setType('static')

    transition.id = id
    transition.destX = destX
    transition.destY = destY
    transition.type = "standard"
    transition.portal = false

    if transitionType then transition.type = transitionType end

    transition.newEntrance = nil
    if id == "1" or id == "2" or id == "3" or id == "4" then
        transition.newEntrance = getOppDir(tonumber(id))
    end
    if id == "toBoss1" then
        transition.newEntrance = 3
        transition.portal = true
    end

    table.insert(transitions, transition)

end

function triggerTransition(id, destX, destY, entranceId)
    local newMap = "test"

    if id == "toTestShop" then
        newMap = "testShop"
    elseif id == "toTest" then
        newMap = "test"
    elseif id == "toTest2" then
        newMap = "test2"
    elseif id == "toTest3" then
        newMap = "test3"
    elseif id == "toTestCave" then
        newMap = "testCave"
    elseif id == "toTestCave2" then
        newMap = "testCave2"
    elseif id == "toTest4" then
        newMap = "test4"
    elseif id == "toTestInterior" then
        newMap = "testInterior"
    elseif id == "toPlayerHouse" then
        newMap = "playerHouse"
    elseif id == "toTest7" then
        newMap = "test7"
    elseif id == "toDungeon2" then
        newMap = "testDungeon2"
    elseif id == "toDungeon2-2" then
        newMap = "testDungeon2-2"
    elseif id == "toBoss1" then
        newMap = "dungeon/boss1"
    else
        newMap = id
    end

    if id and id:startswith('c_') then
        newMap = "caves/" .. id
    end

    if id and id:startswith('i_') then
        newMap = "interiors/" .. id
    end

    if id and id:startswith('d_') then
        -- split by _
        local split = split(id, "_")
        if split[1] and split[2] and split[3] then
            newMap = "dungeons/" .. split[2] .. "/" .. split[3]
        end
    end

    if id and id:startswith('toLevel') then
        newMap = "menu"
        targetDungeon = tonumber(string.sub(id, -1))
        curtain:call("startLevel1", nil, nil, "circle")
    end

    local isLevel = false
    if id and id:startswith('startLevel') then
        level:start(8675308) -- use targetDungeon
        newMap = "dungeon/" .. rooms[1].mapId
        isLevel = true
    end

    if id and (id == "1" or id == "2" or id == "3" or id == "4") then
        local newRoomId = rooms[level.currentRoom].exits[tonumber(id)]
        newMap = "dungeon/" .. rooms[newRoomId].mapId
        level.currentRoom = newRoomId
    end

    gamestate = 1
    local newPlayerX = nil
    local newPlayerY = nil

    if destX and destX ~= -1 then
        player:setX(destX)
    end
    if destX and destY ~= -1 then
        player:setY(destY)
    end

    loadMap(newMap)

    if isLevel then
        local entr = nil
        for i=1,4 do
            if rooms[1].exits[i] == -2 then
                player:setPosition(getEntrance(i))
            end
        end
    end

    if entranceId and entranceId ~= "quickTalk" then
        player:setPosition(getEntrance(entranceId))
    end

    if newMap == "menu" then
        gamestate = 2
        background:reset()
        love.graphics.setBackgroundColor(0.05, 0.05, 0.05)
    end

    grapple:reset()
    player.state = 12
    player:setCollisionClass("Player")
end
