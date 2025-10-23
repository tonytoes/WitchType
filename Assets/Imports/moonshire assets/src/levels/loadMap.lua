function loadMap(mapName, destX, destY, args)
    destroyAll()
    setInventory()
    setAllEnemies()
    changePlayerColor()
    misc:verifyAssist()
    pause:quickStop()
    parallax:clear()
    misc:init()
    player.slashTimer = 0.25 -- just to prevent accidental slashes
    -- hud.alpha = 1 removing for now
    background.state = 0
    --cam.smoother = Camera.smooth.damped(26) -- fast smoothing

    loadedMap = mapName
    gameMap = sti("maps/" .. mapName .. ".lua")

    gameMap.pixelWidth = gameMap.width * gameMap.tilewidth
    gameMap.pixelHeight = gameMap.height * gameMap.tileheight

    if gameMap.properties.dark then
        gameMap.dark = gameMap.properties.dark
    else
        gameMap.dark = 0
    end

    if gameMap.properties.darkType then
        gameMap.darkType = gameMap.properties.darkType
    else
        gameMap.darkType = "full"
    end

    if gameMap.properties.pierceVisible ~= nil then
        gameMap.pierceVisible = gameMap.properties.pierceVisible
    else
        gameMap.pierceVisible = true
    end

    gameMap.fakeLayer = false
    if gameMap.properties.fakeLayer ~= nil then
        misc:setFakeLayer(gameMap.properties.fakeLayer)
    end

    if gameMap.properties.grid then
        if not gameMap.grid or gameMap.grid ~= gameMap.properties.grid then
            gameMap.grid = gameMap.properties.grid
            gameMap.gridCell = nil
        end

        -- the mapName is a path to a map file. the cell name is the last string in the last part of the slashes. get that value
        local cellName = string.match(mapName, "[^/]+$")
        if cellName then
            gameMap.gridCell = cellName
            print("cellName: " .. cellName)
        end
    else
        gameMap.grid = nil
        gameMap.gridCell = nil
    end

    if loadedMap == "caves/c_forest" and allEnemies["eyeris"] then
        --misc:setAmethystCave()
    end

    if gameMap.dark then
        lightSources.savedDark = gameMap.dark -- used for full flash
        spawnLightSource(player:getX(), player:getY(), 20, "player") -- values adjusted elsewhere
    end

    jewelry:resetStats()

    player.colorImmune = true
    if gameMap.properties.playerColorImmune ~= nil then
        player.colorImmune = gameMap.properties.playerColorImmune
    end

    if gameMap.properties.background then
        background:set(gameMap.properties.background)
    end

    if gameMap.properties.spoofRateX then
        background.spoofRateX = gameMap.properties.spoofRateX
    end

    gameMap.shader = nil
    if gameMap.properties.shader then
        gameMap.shader = gameMap.properties.shader
    end

    gameMap.shaderVal = nil
    if gameMap.properties.shaderVal then
        gameMap.shaderVal = gameMap.properties.shaderVal
    end

    gameMap.isSky = nil
    if gameMap.properties.isSky then
        gameMap.isSky = gameMap.properties.isSky
    end

    gameMap.defaultX = 440
    gameMap.defaultY = 280
    if gameMap.properties.defaultX then gameMap.defaultX = gameMap.properties.defaultX end
    if gameMap.properties.defaultY then gameMap.defaultY = gameMap.properties.defaultY end

    if gameMap.properties.weather then
        gameMap.weather = gameMap.properties.weather
    else
        gameMap.weather = "none"
    end

    weather:set(gameMap.weather)

    if gameMap.properties.ambience then
        weather:setAmbience(gameMap.properties.ambience)
    else
        weather:setAmbience()
    end

    if gameMap.properties.music then
        gameMap.music = gameMap.properties.music
        if gameMap.properties.music == "none" then
            dj.fade()
        else
            startMusic(bgm[gameMap.properties.music], true)
        end
    else
        gameMap.music = nil
    end

    if background.id == "cloudDungeon" then
        -- need to check if the lights are out
        if allItems['lightning'] and not data.states.misc["newCoreActive"] then
            background:set("cloudBoss1")
            dj.fade()
        end
    end

    if not client.active then -- NOT the client

        if gameMap.layers["Walls"] then
            for i, obj in ipairs(gameMap.layers["Walls"].objects) do
                if not (obj.properties and obj.properties.delay) then
                    if obj.shape == "polygon" then
                        spawnWall(obj.polygon, obj.x, obj.y, -1, nil, obj.name, obj.type)
                    else -- rectangle
                        spawnWall(obj.shape, obj.x, obj.y, obj.width, obj.height, obj.name, obj.type, obj.properties, obj.id)
                    end
                end
            end
        end
    
        if gameMap.layers["Enemies"] then
            for i, obj in ipairs(gameMap.layers["Enemies"].objects) do
                spawnEnemy(obj.x, obj.y, obj.name, obj.properties)
            end
        end
    
        if gameMap.layers["Loot"] then
            for i, obj in ipairs(gameMap.layers["Loot"].objects) do
                spawnLoot(obj.x, obj.y, obj.type, false, obj.properties.price)
            end
        end
    
        if gameMap.layers["Chests"] then
            for i, obj in ipairs(gameMap.layers["Chests"].objects) do
                spawnChest(obj.x, obj.y, obj.name, obj.properties)
            end
        end
    
        if gameMap.layers["NPC"] then
            for i, obj in ipairs(gameMap.layers["NPC"].objects) do
                --spawnNPC(obj.name, obj.x, obj.y)
                npcs:spawn(obj.name, obj.x, obj.y, obj.properties)
            end
            talk:checkAllNpcRelays()
        end
    
        if gameMap.layers["Transitions"] then
            for i, obj in ipairs(gameMap.layers["Transitions"].objects) do
                spawnTransition(obj.x, obj.y, obj.width, obj.height, obj.name, obj.properties.destX, obj.properties.destY, obj.type)
            end
        end
    
        if gameMap.layers["Trees"] then
            for i, obj in ipairs(gameMap.layers["Trees"].objects) do
                spawnTree(obj.x, obj.y, obj.name, obj.type, obj.properties)
            end
        end
    
        if gameMap.layers["Props"] then
            for i, obj in ipairs(gameMap.layers["Props"].objects) do
                props:spawn(obj.name, obj.x, obj.y, obj.properties, obj.id)
            end
        end
    
        if gameMap.layers["Water"] then
            for i, obj in ipairs(gameMap.layers["Water"].objects) do
                local willSpawn = true
                if gameMap.fakeLayer then
                    if obj.properties.offFake then willSpawn = false end
                else
                    if obj.properties.fake then willSpawn = false end
                end

                if willSpawn then
                    spawnWater(obj.x, obj.y, obj.width, obj.height, obj.type, obj.properties)
                end
            end
        end
    
        if gameMap.layers["Structures"] then
            for i, obj in ipairs(gameMap.layers["Structures"].objects) do
                spawnStructure(obj.name, obj.x, obj.y)
            end
        end

        if gameMap.layers["Elevators"] then
            for i, obj in ipairs(gameMap.layers["Elevators"].objects) do
                elevators:spawn(obj.name, obj.x, obj.y, obj.properties)
            end
        end
    
        if gameMap.layers["Plants"] then
            for i, obj in ipairs(gameMap.layers["Plants"].objects) do
                if obj.type and obj.type == "field" then
                    plants:spawnField(obj.name, obj.x, obj.y, obj.width, obj.height, obj.properties)
                else
                    spawnPlant(obj.name, obj.x, obj.y, obj.properties, obj.id)
                end
            end
        end
    
        if gameMap.layers["Weapons"] then
            for i, obj in ipairs(gameMap.layers["Weapons"].objects) do
                weapons:spawn(obj.name, obj.x, obj.y, obj.properties)
            end
        end
        -- ALWAYS spawn the sword.
        weapons:spawn("sword", -1000, -1000, {default=true})
    
        if gameMap.layers["Hazards"] then
            for i, obj in ipairs(gameMap.layers["Hazards"].objects) do
                if obj.name == "proxSpikes" or obj.name == "spikes" then
                    spikes:spawn(obj.x, obj.y, obj.name)
                end
            end
        end
    
        if gameMap.layers["Platforms"] then
            for i, obj in ipairs(gameMap.layers["Platforms"].objects) do
                spawnPlatform(obj.name, obj.x, obj.y, obj.properties.x2, obj.properties.y2, obj.properties)
            end
        end
    
        if gameMap.layers["Portals"] then
            for i, obj in ipairs(gameMap.layers["Portals"].objects) do
                portals:spawn(obj.x, obj.y, obj.name)
            end
        end
    
        if gameMap.layers["Effects"] then
            for i, obj in ipairs(gameMap.layers["Effects"].objects) do
                effects:spawn(obj.name, obj.x, obj.y, obj.properties)
            end
        end
    
        if gameMap.layers["Challenges"] then
            for i, obj in ipairs(gameMap.layers["Challenges"].objects) do
                spawnChallenge(obj.name, obj.x, obj.y, obj.properties)
            end
        end
    
        if gameMap.layers["ShopItems"] then
            for i, obj in ipairs(gameMap.layers["ShopItems"].objects) do
                shopItems:spawn(obj.name, obj.x, obj.y, obj.properties)
            end
        end
    
        if gameMap.layers["Tutorials"] then
            for i, obj in ipairs(gameMap.layers["Tutorials"].objects) do
                spawnTutorial(obj.name, obj.x, obj.y, obj.properties)
            end
        end
    
        if gameMap.layers["Pins"] then
            for i, obj in ipairs(gameMap.layers["Pins"].objects) do
                pins:new(obj.name, obj.type, obj.x, obj.y, obj.properties)
            end
        end

        if gameMap.layers["Lights"] then
            for i, obj in ipairs(gameMap.layers["Lights"].objects) do
                local tmpRad = 32
                if obj.properties.rad then tmpRad = obj.properties.rad end
                newSpawnLightSource(obj.x, obj.y, tmpRad, obj.properties, obj.name)
            end
        end

        if destX ~= nil and destY ~= nil then
            player:setPosition(destX, destY)
            local cx, cy = cam:getBorderPosition(destX, destY)
            cam:lookAt(cx, cy)
        end

        -- check to verify that there is a save point nearby where the player spawns
        -- otherwise, this means the map has changed, and the player should spawn at
        -- gameMap.defaultX and gameMap.defaultY
        if args and args.loading then
            local savePointFound = false
            for _,s in ipairs(saveSpots) do
                if distanceBetween(player:getX(), player:getY(), s.x, s.y) <= 64 then
                    player:setPosition(s.x, s.y + 20)
                    savePointFound = true
                end
            end
            if savePointFound == false then
                player:setPosition(gameMap.defaultX, gameMap.defaultY)
            end
            if data and data.player.heldItem then
                weapons:spawn(data.player.heldItem, player:getX(), player:getY(), {equipped=true})
            end
        end

        if player.specialStart > 0 then
            if player.specialStart == 1 then -- player falls from the sky
                player.state = 14 -- invisible
                effects:spawn("playerFallEntrance", player:getX(), player:getY())
            end
            if player.specialStart == 2 then -- elevator arriving (specialstart 3 shouldn't be used anymore)
                --player.state = 14 -- invisible
                --effects:spawn("skyElevatorArrive", player:getX(), player:getY())
                for _,e in ipairs(elevators) do
                    if e.id == elevators.partner then
                        e:arrive()
                    end
                end
            end
            if player.specialStart == 3 then -- elevator descending into place
                player.state = 14 -- invisible
                effects:spawn("skyElevatorArrive", player:getX(), player:getY(), {mult=-1})
            end
            if player.specialStart == 4 then -- quick talk, immediately talk to the nearest NPC
                player.state = 0 -- need to start at 13? so that talking works
                local closestNpc = nil
                local closestDist = 9999
                for _,n in ipairs(npcs) do
                    local nDist = distanceBetween(player:getX(), player:getY(), n.x, n.y)
                    if nDist < closestDist then closestNpc = n closestDist = nDist end
                end
                if closestNpc then
                    player.postBuffer = 0.5
                    closestNpc:talk(0.1) --0.1 sec delay
                end
            end
        end
        player.specialStart = 0

        if data.states.maps then
            if not data.states.maps[mapName] then data.states.maps[mapName] = true end
        end

        -- calling this last because there's no need to track tileStates for out of bounds
        tileStates:startMap()

    end
end