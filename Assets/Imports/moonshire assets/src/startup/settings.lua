function newSettings()
    -- Game settings
    settings = {}
    settings.flex = {}
    settings.assist = {}

    settings.version = 2
    settings.lang = "en"
    settings.fullscreen = true
    settings.soundVolume = 1
    settings.musicVolume = 1
    settings.ambienceVolume = 1
    settings.soundMaxVolume = 1
    settings.musicMaxVolume = 1
    settings.ambienceMaxVolume = 1
    settings.cursorSize = 0.2
    settings.soundEnabled = true
    settings.soundMultiplier = 1
    settings.musicEnabled = true
    settings.musicMultiplier = 0.8
    settings.ambienceEnabled = true
    settings.ambienceMultiplier = 0.5
    settings.showDamage = true
    settings.showHealthBars = true
    settings.useMouse = true
    settings.screenshake = true
    settings.gameTimer = false
    settings.controlScheme = "keyboardMouse"

    if love.system.getOS() == "Windows" then
        settings.cursorSize = 1
    end

    resetBatonInput()
    saveSettings()
end

function resetBatonInput()
    schemes[settings.controlScheme].joystick = love.joystick.getJoysticks()[1]
    input = baton.new(schemes[settings.controlScheme])
end

function saveSettings()
    love.filesystem.write("controlSchemesV2.lua", table.show(schemes, "schemes"))
    love.filesystem.write("gameSettings.lua", table.show(settings, "settings"))
end

function loadSettings()
    -- first, load schemes
    if love.filesystem.getInfo("controlSchemesV2.lua") ~= nil then
        local controlSchemes = love.filesystem.load("controlSchemesV2.lua")
        controlSchemes()
    else
        setAllDefaultSchemes()
    end

    if love.filesystem.getInfo("gameSettings.lua") ~= nil then
        local gameSettings = love.filesystem.load("gameSettings.lua")
        gameSettings()
        resetBatonInput()
    else
        newSettings()
    end

    if not settings.lang then settings.lang = "en" end
    if not settings.version then settings.version = 2 end
    if not settings.ambienceVolume then settings.ambienceVolume = 1 end
    if not settings.ambienceMaxVolume then settings.ambienceMaxVolume = 1 end
    if not settings.ambienceEnabled then settings.ambienceEnabled = true end
    if not settings.ambienceMultiplier then settings.ambienceMultiplier = 0.5 end

    saveSettings()
end

-- Note: when I say 'update' here, I mean love.update(dt)
function updateSettings(dt)
    if input and input.update then
        input:update(dt)
    end
end
