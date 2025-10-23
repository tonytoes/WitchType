function gameStart()

    math.randomseed(os.time())
    love.graphics.setBackgroundColor(26/255, 26/255, 26/255)

    initGlobals()

    -- Make pixels scale!
    love.graphics.setDefaultFilter("nearest", "nearest")

    baton = require "libraries/baton"
    utf8string = require("libraries/utf8string")
    require("src/utilities/utils")
    require("libraries/show")
    require("src/startup/schemes")
    require("src/startup/settings")
    loadSettings()

    require("src/startup/language")
    lcl:init()

    -- 3 parameters: fullscreen, width, height
    -- width and height are ignored if fullscreen is true
    development = true
    fullscreen = settings.fullscreen
    testWindow = false
    vertical = false
    if recording >= 3 then vertical = true end
    --if development then fullscreen = false end

    setWindowSize(fullscreen, 1920, 1080)

    -- The game's graphics scale up, this method finds the right ratio
    setScale()

    vector = require "libraries/hump/vector"
    flux = require "libraries/flux/flux"
    require "libraries/tesound"

    anim8 = require("libraries/anim8/anim8")
    sti = require("libraries/Simple-Tiled-Implementation/sti")

    local windfield = require("libraries/windfield")
    world = windfield.newWorld(0, 0, true)
    world:setQueryDebugDrawing(false)

    -- This second world is for particles, and has downward gravity
    particleWorld = windfield.newWorld(0, 250, false)
    particleWorld:setQueryDebugDrawing(false)

    require("src/startup/require")
    requireAll()
    fullInit()

    conversations:init()

    -- constants list for dungeon map generation
    mapData:init()
    setCursor()

end

function fullInit()
    initGlobals()
    loadSettings()

    -- TODO
    -- go through every required file and call its init function, if needed
    weather:init()
    jewelry:init()
    stars:init()
    challenges:init()
    cutscene:init()
    player:reinit()
    answer:init()
    menu:init()
    pause:fullinit()
    dialogue:init()
    talk:init()
    misc:init()
    shake:init()
    infoPanel:reinit()
    speedrun:init()
    offscreen:init()
    cover:init()
    debug:init()
end

function setCursor()
    local osString = love.system.getOS()
    local sizeNumber = math.floor(settings.cursorSize * 10)
    if sizeNumber < 0 or sizeNumber > 10 then sizeNumber = 2 end
    
    if osString == "Windows" then
        if sizeNumber > 0 then sizeNumber = 10 else sizeNumber = 0 end
    end

    local osPathString = "mac"
    if osString == "Windows" then osPathString = "win" end

    local cursorPath = "sprites/ui/cursor/" .. osPathString .. "/cursor" .. sizeNumber .. ".png"
    cursor = love.mouse.newCursor(cursorPath, 0, 0)
    if cursor then love.mouse.setCursor(cursor) end
end

function setWindowSize(full, width, height)
    if full then
        fullscreen = true
        love.window.setFullscreen(true)
        windowWidth = love.graphics.getWidth()
        windowHeight = love.graphics.getHeight()
    else
        fullscreen = false
        if width == nil or height == nil then
            windowWidth = 1920
            windowHeight = 1080
        else
            windowWidth = width
            windowHeight = height
        end
        love.window.setMode( windowWidth, windowHeight, {resizable = not testWindow, minwidth = 100, minheight = 100} )
    end
end

function initGlobals()
    data = {} -- save data, will be loaded after game begins
    settings = {}

    -- game state
    -- 0: main menu, 0.1 File select, 0.2 story
    -- 1: gameplay
    -- 2: pre-dungeon
    -- 3: game over
    gamestate = 0
    globalStun = 0
    targetDungeon = 0
    maxTotalFiles = 5
    nextAvailableFile = 1
    mainMenuScaleFactor = 0.85

    allItems = {} -- now changing to be a global in memory, 'if allItems.swim then'
    allColors = {}
    allGems = {}
    allSpells = {}
    allWeapons = {}
    allEnemies = {}
end

function setInventory()
    removeTable(allItems)
    removeTable(allColors)
    removeTable(allGems)
    removeTable(allSpells)
    removeTable(allWeapons)
    for i, item in ipairs(data.items.key) do allItems[item] = true end
    for i, color in ipairs(data.items.colors) do allColors[color] = true end
    for i, gem in ipairs(data.items.gems) do allGems[gem] = true end
    for i, spell in ipairs(data.items.spells) do allSpells[spell] = true end
    if data.items.weapons then for i, weapon in ipairs(data.items.weapons) do allWeapons[weapon.id] = true end end
end

function setAllEnemies()
    removeTable(allEnemies)
    if data.states.enemies then
        for i, ene in pairs(data.states.enemies) do allEnemies[i] = true end
    end
end

function setScale(val)
    local scFactor = 7.15
    if val then scFactor = val end
    
    scale = (scFactor / 1200) * windowHeight

    if cam then
        cam:zoomTo(scale)
    end

    if cam and cam.scaleAdjust then cam.scaleAdjust = 0 end
    if initFonts then initFonts() end
end

function checkWindowSize()
    local width = love.graphics.getWidth()
    local height = love.graphics.getHeight()
    if width ~= windowWidth or height ~= windowHeight then
        reinitSize()
    end
end

function reinitSize(scVal)
    -- Reinitialize everything
    windowWidth = love.graphics.getWidth()
    windowHeight = love.graphics.getHeight()
    setScale(scVal)
    if pause.state > 0 then
        if gamestate < 1 then
            pause:quickStop()
            gamestate = 0.1
        else
            pause:stop()
        end
    end
    pause:init()
    if newui.state > 0 then newui:start(newui.id) end
end

function returnToMenu()
    gamestate = 0
    fullInit()
    createNewSave(0)
    loadMap("menu")
    background:set("skyTitle")
end

function getCurrentDifficulty()
    if data.config.mode == "normal" or data.config.mode == "standard" then
        return lcl.system.standard
    elseif data.config.mode == "master" then
        return lcl.system.master
    else
        return ""
    end
end
