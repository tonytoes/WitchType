function createNewSave(fileNumber)
    if fileNumber == nil then fileNumber = 1 end

    -- This represents the save data
    data = {}

    -- Needed for loading data from files
    dataAssist = {}
    dataConfig = {}
    dataItems = {}
    dataPlayer = {}
    dataStates = {}

    -- Each save file has a folder, containing multiple files for all save data
    -- All tables in data represent a file in the save folder

    -- assist mode options
    data.assist = {}
    data.assist.enabled = false
    data.assist.health = 0
    data.assist.weaponArmor = 0
    data.assist.weaponDamage = 0
    data.assist.resourceBonus = 0
    data.assist.movementSpeed = 0
    data.assist.gameSpeed = 0

    -- save information and configuration settings
    data.config = {}
    data.config.id = saveVersion -- version of the save data
    data.config.version = gameVersion -- version of the game
    data.config.saveCount = 0 -- times the game was saved
    data.config.mode = "standard" -- difficulty mode
    data.config.totalTime = 0 -- total time played
    data.config.fileNumber = fileNumber -- which file are we using
    data.config.lastSaveTime = os.time() -- last time the game was saved
    data.config.dyeApply = { -- which parts get applied when you choose a dye
        head = true,
        body = true,
        belly = true,
        eyes = false,
        feet = false,
    }

    -- any items the player has
    data.items = {}
    data.items.key = {"sword"} -- number index, string lists, with 'allItems' variants available via setInventory()
    data.items.colors = {"white", "red"} -- number index, string list of dyes
    data.items.gems = {} -- number index, string list of all collected gems
    data.items.resources = {} -- number index list, {id = "gold", count = 20, totalCount = 115}
    data.items.spells = {} -- number index, string list of spells
    data.items.weapons = {} -- number index list, {id = "sword", totalDamage = 0, destroyed = 0}

    -- tracks player states and milestone information
    data.player = {}
    data.player.x = 520 -- player's X position
    data.player.y = 320 -- player's Y position
    data.player.maxHealth = 3
    data.player.map = "1_meadow" -- currently loaded map
    data.player.weapon = "" -- id of the weapon held when saved
    data.player.deaths = 0
    data.player.color = {
        head = "red",
        body = "red",
        belly = "red",
        eyes = "white",
        feet = "white",
    }

    data.states = {}
    data.states.achievements = {} -- achievements completed
    data.states.breakables = {} -- breakable objects destroyed
    data.states.challenges = {} -- challenges completed and their states
    data.states.chests = {} -- chests opened
    data.states.enemies = {} -- string index, number value represents number of that enemy defeated
    data.states.misc = {} -- miscellaneous states
    data.states.npcs = {} -- npc interactions
    data.states.permEnemies = {} -- given to enemies in Tiled with the 'permId' property
    data.states.timers = {} -- table of timers, for resources and such
    data.states.maps = {} -- maps visited

    -- table that keeps track of the states of certain things
    -- including npc's
    -- data.states = {} -- replaced by data.states.npcs
end

function getResourceCount(id)
    for i,r in ipairs(data.items.resources) do
        if r.id == id then
            return r.count
        end
    end
    return 0
end

function dataItemGet(id)
    if id:startswith("dye_") then
        local colorName = id:sub(5)
        if not tableContainsValue(data.items.colors, colorName) then
            table.insert(data.items.colors, colorName)
        end
    elseif id:startswith("resource_") then
        local resName = id:sub(10)
        local firstTime = true
        for i,r in ipairs(data.items.resources) do
            if r.id == resName then
                firstTime = false
                data.items.resources[i].count = data.items.resources[i].count + 1
                data.items.resources[i].totalCount = data.items.resources[i].totalCount + 1
            end
        end
        if firstTime then
            local obj = {
                id = resName,
                count = 1,
                totalCount = 1
            }
            table.insert(data.items.resources, obj)
        end
    --[[elseif id == "lightning" or id == "fire" or id == "ice" then
        local spellName = id
        local firstTime = true
        for _,s in ipairs(data.items.spells) do
            if s == spellName then
                firstTime = false
            end
        end
        if firstTime then
            table.insert(data.items.spells, spellName)
        end]]
    elseif id == "ring" or id == "necklace" or id == "bracelet" then

    elseif id:startswith("gem_") then
        local gemName = id:sub(5)
        if not tableContainsValue(data.items.gems, gemName) then
            table.insert(data.items.gems, gemName)
        end
    elseif id:startswith("shop_") then
        local itemName = id:sub(6)
        dataItemGet(itemName) -- recursively call this function because I am a genius
        -- With this setup, you could have shop_dye_pink for example
        return
    elseif id:startswith("upgrade_") then -- upgrades replace the properties in 'myItems', but it doesn't get added to myItems. Still gets added to allItems though.
        local base = "sword"
        local replace = "moonstoneSword"
        local i = #data.items.key
        while i > 0 do
            if data.items.key[i] == base then data.items.key[i] = replace end
            i = i - 1
        end
        id = replace -- remove the upgrade_ tag
    else
        if not tableContainsValue(data.items.key, id) then
            table.insert(data.items.key, id)
        end
    end
    setInventory() -- IMPORTANT for allItems to get updated
end

function saveGame()
    data.config.saveCount = data.config.saveCount + 1
    data.config.lastSaveTime = os.time()
    data.player.x = player:getX()
    data.player.y = player:getY()
    data.player.map = loadedMap

    if player.hasWeapon then
        data.player.weapon = weapons[weapons:getIndex(player.weaponUniqueId)].id
    else
        data.player.weapon = nil
    end

    local basePath = data.config.fileNumber .. "_"
    
    if data.assist then
        dataAssist = copy(data.assist)
        love.filesystem.write(basePath .. "assist.lua", table.show(dataAssist, "dataAssist"))
        dataAssist = nil
    end
    
    if data.config then
        dataConfig = copy(data.config)
        love.filesystem.write(basePath .. "config.lua", table.show(dataConfig, "dataConfig"))
        dataConfig = nil
    end

    if data.items then
        dataItems = copy(data.items)
        love.filesystem.write(basePath .. "items.lua", table.show(dataItems, "dataItems"))
        dataItems = nil
    end
    
    if data.player then
        dataPlayer = copy(data.player)
        love.filesystem.write(basePath .. "player.lua", table.show(dataPlayer, "dataPlayer"))
        dataPlayer = nil
    end
    
    if data.states then
        dataStates = copy(data.states)
        love.filesystem.write(basePath .. "states.lua", table.show(dataStates, "dataStates"))
        dataStates = nil
    end
end

function loadGame(fileNumber, justData)
    local tmpName = fileNumber .. "_config.lua"
    if love.filesystem.getInfo(tmpName) ~= nil then
        dataConfig = love.filesystem.load(tmpName)
        dataConfig()
        
        tmpName = fileNumber .. "_assist.lua"
        if love.filesystem.getInfo(tmpName) ~= nil then
            dataAssist = love.filesystem.load(tmpName)
            dataAssist()
        end

        tmpName = fileNumber .. "_items.lua"
        if love.filesystem.getInfo(tmpName) ~= nil then
            dataItems = love.filesystem.load(tmpName)
            dataItems()
        end

        tmpName = fileNumber .. "_player.lua"
        if love.filesystem.getInfo(tmpName) ~= nil then
            dataPlayer = love.filesystem.load(tmpName)
            dataPlayer()
        end

        tmpName = fileNumber .. "_states.lua"
        if love.filesystem.getInfo(tmpName) ~= nil then
            dataStates = love.filesystem.load(tmpName)
            dataStates()
        end

        if dataAssist then data.assist = copy(dataAssist) end dataAssist = nil
        if dataConfig then data.config = copy(dataConfig) end dataConfig = nil
        if dataItems then data.items = copy(dataItems) end dataItems = nil
        if dataPlayer then data.player = copy(dataPlayer) end dataPlayer = nil
        if dataStates then data.states = copy(dataStates) end dataStates = nil
    elseif love.filesystem.getInfo("file" .. fileNumber .. ".lua") ~= nil then
        local data = love.filesystem.load("file" .. fileNumber .. ".lua")
        data()
    else
        startFresh(fileNumber)
    end

    -- Data check, if the version is different from the current one
    if not data.config then -- aka, before the folder system
        dataCheck()
    else
        newDataCheck()
    end

    if justData then return end

    player:reinit()
    player.state = 0
    player:setMaxHealth()
    player.health = player.maxHealth -- always load the game with full health
    changePlayerColor() -- init the player color

    gamestate = 1
    loadMap(data.player.map, data.player.x, data.player.y, {loading=true}) -- moving loadMap after gamestate changes

    if not data.states.misc["introCutscene"] then
        data.states.misc["introCutscene"] = true
        player.state = 14
        player:startOpening()
    end

    if data.player.weapon then
        weapons:spawn(data.player.weapon, player.x, player.y, {equipped=true})
    end
end

function changePlayerColor(clr)
    if clr then
        -- set clr to all lowercase
        local colorPath = clr:lower()
        if data.config.dyeApply.head then data.player.color.head = colorPath end
        if data.config.dyeApply.body then data.player.color.body = colorPath end
        if data.config.dyeApply.belly then data.player.color.belly = colorPath end
        if data.config.dyeApply.eyes then data.player.color.eyes = colorPath end
        if data.config.dyeApply.feet then data.player.color.feet = colorPath end
    end

    sprites.player.eyes = love.graphics.newImage('sprites/player2/' .. string.lower(data.player.color.eyes) .. '/eyes.png')
    sprites.player.head = love.graphics.newImage('sprites/player2/' .. string.lower(data.player.color.head) .. '/head.png')
    sprites.player.body = love.graphics.newImage('sprites/player2/' .. string.lower(data.player.color.body) .. '/body.png')
    sprites.player.arm = love.graphics.newImage('sprites/player2/' .. string.lower(data.player.color.body) .. '/arm.png')
    sprites.player.armHold = love.graphics.newImage('sprites/player2/' .. string.lower(data.player.color.body) .. '/armHold.png')
    sprites.player.belly = love.graphics.newImage('sprites/player2/' .. string.lower(data.player.color.belly) .. '/belly.png')
    sprites.player.feet = love.graphics.newImage('sprites/player2/' .. string.lower(data.player.color.feet) .. '/feet.png')
end

function dataCheck() -- NOTE: this function only happens if save version is < 15
    if not data.id then data.id = 10 end -- this will get updated later
    if data.version ~= gameVersion then
        -- at least with THIS new version, hard warp all players to town
        data.map = "3_town"
        data.playerX = 688
        data.playerY = 432

        if data.mode and data.mode == "normal" then data.mode = "standard" end

        --[[dataItemGet("map")
        dataItemGet("lantern")
        dataItemGet("gauntlets")
        dataItemGet("lightning")
        dataItemGet("ringVit")
        dataItemGet("dye_orange")
        dataItemGet("dye_blue")
        dataItemGet("dye_purple")
        dataItemGet("dye_yellow")]]
        if not data.achievements then data.achievements = {} end
        if not data.states.timers then data.states.timers = {} end
        if not data.myGems then data.myGems = {} end
        if not data.myJewelry then data.myJewelry = {} end
        --dataItemGet("ring")
        if not data.myResources then data.myResources = {} end
        if not data.permEnemies then data.permEnemies = {} end
        if schemes and schemes['controller'] and not schemes['controller'].controls.menuShiftLeft then
            schemes['controller'].controls.menuShiftLeft = {'button:leftshoulder'}
            schemes['controller'].controls.menuShiftRight = {'button:rightshoulder'}
            resetBatonInput()
            saveSettings()
        end

        if data.states then
            for k,v in pairs(data.states) do
                if type(v) == "table" then
                    data.states[k] = v[1]
                end
            end
        end

        if data.allEnemies then
            local newMyEnemies = {}
            for i,e in pairs(data.allEnemies) do
                if type(i) == "string" then
                    newMyEnemies[#newMyEnemies+1] = {
                        class = i,
                        slain = 1
                    }
                else
                    table.insert(newMyEnemies, e)
                end
            end
            if data.bosses then
                for i,e in pairs(data.bosses) do
                    if type(i) == "string" then
                        newMyEnemies[#newMyEnemies+1] = {
                            class = i,
                            slain = 1
                        }
                    else
                        table.insert(newMyEnemies, e)
                    end
                end
            end
            data.myEnemies = newMyEnemies
            data.allEnemies = nil
        end

        if not data.myEnemies then data.myEnemies = {} end

        local newMyWeapons = {}
        if data.myWeapons then
            for _,w in ipairs(data.myWeapons) do
                if type(w) == "string" then
                    newMyWeapons[#newMyWeapons+1] = {
                        id = w,
                        totalDamage = 0,
                        destroyed = 0,
                    }
                else
                    table.insert(newMyWeapons, w)
                end
            end
        end
        data.myWeapons = nil
        data.myWeapons = newMyWeapons

        if data.maxHealth > 3 then data.maxHealth = 3 end

        -- IMPORTANT - make sure the gameVersion gets updated
        data.version = gameVersion -- update the version to current
    end

    if data.id ~= saveVersion then

        if data.id < 11 then -- remove any lightning dungeon stuff
            data.challenges.cloudFight = false
            data.chests.cloudFight = false
            if data.myItems then
                local i = #data.myItems -- using OLD data format for this
                while i > 0 do
                    if data.myItems[i] == "lightning" or data.myItems[i] == "gauntlets" then
                        table.remove(data.myItems, i)
                    end
                    i = i - 1
                end
            end
        end

        if data.id < 12 then
            if data.states and data.states["blacksmith"] then
                data.states["blacksmith"] = nil
            end
        end

        if data.id < 15 then
            -- convert this data to the new format, using folders
            changeToDataFolders(data)
        end

        data.config.id = saveVersion -- update the save version to current

    end
end

function newDataCheck()

end

function changeToDataFolders(dta)
    if not dta then return nil end
    local oldData = copy(dta)
    createNewSave(oldData.fileNumber)

    data.config.id = oldData.id -- version of the save data
    data.config.version = oldData.version -- version of the game
    data.config.saveCount = oldData.saveCount -- times the game was saved
    data.config.mode = oldData.mode -- main menu mode
    data.config.totalTime = oldData.totalTime -- total time played
    data.config.fileNumber = oldData.fileNumber -- which file are we using

    for _,i in ipairs(oldData.myItems) do dataItemGet(i) end
    data.items.colors = oldData.myColors -- number index, string list of dyes

    -- convert all string values in data.items.colors to lowercase
    for i,v in ipairs(data.items.colors) do
        data.items.colors[i] = v:lower()
    end

    dataItemGet("dye_white")
    for _,i in ipairs(oldData.myGems) do dataItemGet("resource_diamond") end -- provide a diamond for each old gem
    data.items.resources = oldData.myResources -- number index list, {id = "gold", count = 20, totalCount = 115}
    data.items.weapons = oldData.myWeapons -- number index list, {id = "sword", totalDamage = 0, destroyed = 0}
    for _,i in ipairs(oldData.myJewelry) do
        if i.id == "necklace" then -- give back the gold for the necklace
            for i=1,20 do dataItemGet("resource_gold") end
        end
    end

    data.player.x = oldData.playerX -- player's X position
    data.player.y = oldData.playerY -- player's Y position
    data.player.maxHealth = oldData.maxHealth
    data.player.map = oldData.map -- currently loaded map
    data.player.weapon = oldData.heldItem -- id of the weapon held when saved
    data.player.color = {
        head = string.lower(oldData.outfit),
        body = string.lower(oldData.outfit),
        belly = string.lower(oldData.outfit),
        eyes = "white",
        feet = "white",
    }

    data.states.achievements = oldData.achievements -- achievements completed
    data.states.breakables = oldData.breakables -- breakable objects destroyed
    data.states.challenges = oldData.challenges -- challenges completed and their states
    data.states.chests = oldData.chests -- chests opened
    data.states.enemies = oldData.myEnemies -- string index, number value represents number of that enemy defeated
    data.states.misc = oldData.states -- npc interactions
    data.states.npcs = copy(oldData.states) -- npc interactions
    data.states.permEnemies = oldData.permEnemies -- given to enemies in Tiled with the 'permId' property
    data.states.timers = oldData.timers -- table of timers, for resources and such

    data.states.enemies = {}
    for i,e in pairs(oldData.myEnemies) do
        if type(i) == "table" and e.class then
            data.states.enemies[e.class] = e.slain
        end
    end
end

function startFresh(fileNumber)
    createNewSave(fileNumber)
    --player.state = 0
    --player:setPosition(data.player.x, data.player.y)
end
