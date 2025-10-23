newui = {}

newui.state = 0 -- inactive
newui.id = ""
newui.prevId = ""
newui.fileId = 1
newui.back = nil
newui.dataCache = {} -- keeps a list of all the different files
newui.cursorX = -10
newui.cursorY = -10
newui.hasClicked = false
newui.prevMouseState = settings.useMouse
newui.scale = scale

newui.listening = false -- used for keybind listening
newui.listenAction = nil -- string for which action is changing

newui.buttons = {}
function newui:newButton(id, x, y, args)
    local btn = {}
    btn.id = id
    btn.x = x
    btn.y = y
    btn.centerX = x
    btn.centerY = y
    btn.borderSpr = nil
    btn.tick = 0
    btn.tickTimer = 0
    btn.hover = false
    btn.tx = 0
    btn.ty = 0
    btn.clickSound = sounds.ui.fantasyClick
    btn.clickable = true

    if id == "mainNewGame" then
        btn.class = "mainSimple"
        btn.text = lcl.system.mainNewGame
        btn.width = 56
    end

    if id == "mainContinue" then
        btn.class = "mainSimple"
        btn.text = lcl.system.mainContinue
        btn.width = 50
    end

    if id == "mainSettings" then
        btn.class = "mainSimple"
        btn.text = lcl.system.mainSettings
        btn.width = 48
    end

    if id == "mainCredits" then
        btn.class = "mainSimple"
        btn.text = lcl.system.mainCredits
        btn.width = 40
    end

    if id == "mainExit" then
        btn.class = "mainSimple"
        btn.text = lcl.system.exit
        btn.width = 24
    end

    if id == "controlSchemeCycle" then
        btn.class = "cycle"
        btn.width = 78
        btn.cycleOptions = {"keyboardMouse", "controller", "keyboardOnly", "custom"}
        btn.label = getCurrentScheme()
        if newui.id == "newGame" then
            btn.leftLabel = lcl.system.settings.controlScheme
        else
            btn.topLabel = lcl.system.settings.controlScheme
        end
    end

    if id == "difficultyCycle" then
        btn.class = "cycle"
        btn.width = 52
        btn.cycleOptions = {"standard", "master"}
        btn.label = getCurrentDifficulty()

        if newui.id == "newGame" then
            btn.leftLabel = lcl.system.difficulty
        else
            btn.topLabel = lcl.system.difficulty
        end
    end

    if id == "scheme_keyboardMouse" then
        btn.class = "scheme"
        btn.icon = sprites.ui.icons.keyboardMouse
    end

    if id == "scheme_controller" then
        btn.class = "scheme"
        btn.icon = sprites.ui.icons.controller
    end

    if id == "scheme_keyboardOnly" then
        btn.class = "scheme"
        btn.icon = sprites.ui.icons.keyboard
    end

    if id == "scheme_custom" then
        btn.class = "scheme"
        btn.icon = sprites.ui.icons.star
    end

    if id == "mode_normal" then
        btn.class = "mode"
        btn.text = lcl.system.difficulty.normal.name
    end

    if id == "mode_master" then
        btn.class = "mode"
        btn.text = lcl.system.difficulty.master.name
    end

    if id == "settings_sounds" then
        btn.class = "range"
        btn.label = lcl.system.settings.soundEffects
        btn.width = 104
        btn.align = "left"
    end

    if id == "settings_music" then
        btn.class = "range"
        btn.label = lcl.system.settings.music
        btn.width = 78
        btn.align = "left"
    end

    if id == "settings_ambience" then
        btn.class = "range"
        btn.label = lcl.system.settings.ambience
        btn.width = 92
        btn.align = "left"
    end

    if id == "settings_cursor" then
        btn.class = "range"
        btn.label = lcl.system.settings.cursor
        btn.width = 98
        btn.align = "left"
    end

    if id == "settings_fullscreen" then
        btn.class = "checkbox"
        btn.label = lcl.system.settings.fullscreen
        btn.width = 62
        btn.align = "left"
    end

    if id == "settings_screenshake" then
        btn.class = "checkbox"
        btn.label = lcl.system.settings.screenshake
        btn.width = 70
        btn.align = "left"
    end

    if id == "settings_timer" then
        btn.class = "checkbox"
        btn.label = lcl.system.settings.inGameTimer
        btn.width = 96
        btn.align = "left"
    end

    local dyeWidth = 46
    if id == "dyeApply_head" then
        btn.class = "checkbox"
        btn.label = lcl.system.dyes.head
        btn.width = dyeWidth
        btn.align = "left"
        btn.cursorExtra = -1
        btn.cursorExtraRight = 2
    end

    if id == "dyeApply_body" then
        btn.class = "checkbox"
        btn.label = lcl.system.dyes.body
        btn.width = dyeWidth
        btn.align = "left"
        btn.cursorExtra = -1
        btn.cursorExtraRight = 2
    end

    if id == "dyeApply_belly" then
        btn.class = "checkbox"
        btn.label = lcl.system.dyes.belly
        btn.width = dyeWidth
        btn.align = "left"
        btn.cursorExtra = -1
        btn.cursorExtraRight = 2
    end

    if id == "dyeApply_eyes" then
        btn.class = "checkbox"
        btn.label = lcl.system.dyes.eyes
        btn.width = dyeWidth
        btn.align = "left"
        btn.cursorExtra = -1
        btn.cursorExtraRight = 2
    end

    if id == "dyeApply_feet" then
        btn.class = "checkbox"
        btn.label = lcl.system.dyes.feet
        btn.width = dyeWidth
        btn.align = "left"
        btn.cursorExtra = -1
        btn.cursorExtraRight = 2
    end

    if id == "assist_health" then
        btn.class = "range"
        btn.label = lcl.system.assist.health
        btn.width = 104
        btn.align = "left"
    end

    if id == "assist_weaponArmor" then
        btn.class = "range"
        btn.label = lcl.system.assist.weaponArmor
        btn.width = 104
        btn.align = "left"
    end

    if id == "assist_weaponDamage" then
        btn.class = "range"
        btn.label = lcl.system.assist.weaponDamage
        btn.width = 104
        btn.align = "left"
    end

    if id == "assist_resourceBonus" then
        btn.class = "range"
        btn.label = lcl.system.assist.resourceBonus
        btn.width = 104
        btn.align = "left"
    end

    if id == "assist_movementSpeed" then
        btn.class = "range"
        btn.label = lcl.system.assist.movementSpeed
        btn.width = 104
        btn.align = "left"
    end

    if id == "assist_gameSpeed" then
        btn.class = "range"
        btn.label = lcl.system.assist.gameSpeed
        btn.width = 104
        btn.align = "left"
    end

    if id == "multi_local" then
        btn.class = "settingsSimple"
        btn.text = "2-Player Co-op"
        btn.width = 50
    end

    if id == "multi_steamInvite" then
        btn.class = "settingsSimple"
        btn.text = lcl.system.multiplayer.invite
        btn.width = 52
    end

    if id == "multi_steamJoin" then
        btn.class = "settingsSimple"
        btn.text = lcl.system.multiplayer.join
        btn.width = 62
    end

    if id == "debug_warp" then
        btn.class = "debugSimple"
        btn.text = lcl.system.debug.warp
        btn.width = 50
    end

    if id == "debug_weapon" then
        btn.class = "debugSimple"
        btn.text = lcl.system.debug.weapon
        btn.width = 50
    end

    if id == "debug_item" then
        btn.class = "debugSimple"
        btn.text = lcl.system.debug.item
        btn.width = 50
    end

    if id == "debug_enemy" then
        btn.class = "debugSimple"
        btn.text = lcl.system.debug.enemy
        btn.width = 50
    end

    if id == "debug_recording" then
        btn.class = "debugSimple"
        btn.text = lcl.system.debug.recording
        btn.width = 50
    end

    if id == "debug_finish" then
        btn.class = "settingsSimple"
        btn.text = lcl.system.debug.finish
        btn.width = 60
    end

    if id == "debug_progress" then
        btn.class = "debugSimple"
        btn.text = lcl.system.debug.progress
        btn.width = 50
    end

    if id == "debug_collisions" then
        btn.class = "checkbox"
        btn.label = lcl.system.debug.collisions
        btn.width = 60
        btn.align = "left"
    end

    if id == "debug_hitboxes" then
        btn.class = "checkbox"
        btn.label = lcl.system.debug.hitboxes
        btn.width = 60
        btn.align = "left"
    end

    if id == "debug_info" then
        btn.class = "checkbox"
        btn.label = lcl.system.debug.info
        btn.width = 60
        btn.align = "left"
    end

    if id == "debug_hud" then
        btn.class = "checkbox"
        btn.label = lcl.system.debug.hud
        btn.width = 60
        btn.align = "left"
    end

    if id == "debug_invincible" then
        btn.class = "checkbox"
        btn.label = lcl.system.debug.invincible
        btn.width = 60
        btn.align = "left"
    end

    if id == "debug_hidePlayer" then
        btn.class = "checkbox"
        btn.label = lcl.system.debug.hidePlayer
        btn.width = 60
        btn.align = "left"
    end

    if id == "keybinds" then
        btn.class = "settingsSimple"
        btn.text = lcl.system.settings.editKeybinds
        btn.width = 46
    end

    if id == "assistOptions" then
        btn.class = "settingsSimple"
        btn.text = lcl.system.assist.title
        btn.width = 46
    end

    if id == "deleteSave" then
        btn.class = "settingsSimple"
        btn.text = lcl.system.settings.deleteSave
        btn.width = 62
    end

    if id == "pauseExitToMenu" then
        btn.class = "settingsSimple"
        btn.text = lcl.system.pause.exitToMenu
        btn.width = 68
    end

    if id == "pauseExitGame" then
        btn.class = "settingsSimple"
        btn.text = lcl.system.pause.exitGame
        btn.width = 56
    end

    if id == "singleKeybind" then
        btn.width = 18
        btn.height = 18
        btn.font = fonts.newMenu.keybind

        btn.cursor = "side"
        btn.cursorExtra = 0
        btn.tickSpeed = 0.5

        if args and args.control then
            btn.control = args.control
            btn.icon = getInputIcon(args.control)
        end

        btn.clickSound = nil
    end

    if id == "addKeybind" then
        btn.text = "+"
        btn.cursor = "side"
        btn.cursorExtra = 0
        btn.tickSpeed = 0.5

        btn.width = 18
        btn.height = 18
        btn.font = fonts.newMenu.add
        btn.textOffY = 1

        btn.clickSound = sounds.effects.flowerGrow
    end

    if id == "defaultKeybinds" then
        btn.text = lcl.system.default
        btn.class = "menuBack"
        btn.width = 32
    end

    if id == "newGameStart" then
        btn.text = lcl.system.start
        btn.borderSpr = sprites.ui.buttons.start
        btn.back = "darkBack"
        btn.font = fonts.newMenu.newGameStart
        btn.textOffY = 5
        btn.cursor = "side"
        btn.cursorExtra = 2
        btn.tickSpeed = 0.5
    end

    if id == "deleteFileConfirm" then
        btn.class = "menuBack"
        btn.text = lcl.system.data.deleteConfirmButton
        btn.width = 58
    end

    --[[if id == "back" or id == "backToPause" then
        btn.text = lcl.system.back
        btn.borderSpr = sprites.ui.buttons.back
        btn.back = "darkBack"
        btn.font = fonts.newMenu.back
        btn.textOffY = 2.75
        btn.cursor = "side"
        btn.cursorExtra = 2
        btn.tickSpeed = 0.5
    end]]

    if id == "back" or id == "backToPause" then
        btn.class = "menuBack"
        btn.text = lcl.system.back
        btn.width = 32
    end

    if id == "file" then
        btn.borderSpr = sprites.ui.mainMenu.file
        btn.back = "darkBack"
        btn.font = fonts.newMenu.back
        btn.cursor = "side"
        btn.cursorExtra = 2
        btn.tickSpeed = 0.5

        if args and args.fileData and args.fileData.color then
            local clr = args.fileData.color
            btn.playerLayerSprites = {
                eyes = love.graphics.newImage('sprites/player2/' .. clr.eyes .. '/eyes.png'),
                head = love.graphics.newImage('sprites/player2/' .. clr.head .. '/head.png'),
                body = love.graphics.newImage('sprites/player2/' .. clr.body .. '/body.png'),
                arm = love.graphics.newImage('sprites/player2/' .. clr.body .. '/arm.png'),
                armHold = love.graphics.newImage('sprites/player2/' .. clr.body .. '/armHold.png'),
                belly = love.graphics.newImage('sprites/player2/' .. clr.belly .. '/belly.png'),
                feet = love.graphics.newImage('sprites/player2/' .. clr.feet .. '/feet.png'),
                whiteBase = love.graphics.newImage('sprites/player2/red/whiteBase.png')
            }
        end
    end

    if id == "weapon" then
        btn.class = "settingsSimple"
        btn.text = "weapon name"
        btn.width = 72
    end

    if id == "weaponCancel" then
        btn.class = "settingsSimple"
        btn.text = lcl.system.cancel
        btn.width = 72
    end

    if id == "cancelInvite" then
        btn.class = "settingsSimple"
        btn.text = lcl.system.multiplayer.cancelInvite
        btn.width = 72
    end

    if id == "cancelJoin" then
        btn.class = "settingsSimple"
        btn.text = lcl.system.multiplayer.cancelJoin
        btn.width = 72
    end

    if id == "listItem" then
        btn.class = "settingsSimple"
        btn.width = 60
    end

    if id == "listCycle" then
        btn.class = "cycle"
        btn.width = 32
        btn.cycleOptions = {1}
        btn.label = 1
    end

    if id == "confirmYes" then
        btn.class = "settingsSimple"
        btn.text = lcl.system.yes
        btn.width = 42
    end

    if id == "confirmNo" then
        btn.class = "settingsSimple"
        btn.text = lcl.system.no
        btn.width = 42
    end

    if id == "simpleYes" then
        btn.text = lcl.system.yes
        btn.width = 42
        btn.font = fonts.newMenu.debug
        btn.height = 10
        btn.cursor = "side"
        btn.tickSpeed = 0.5
        btn.textOffY = 0.5
    end

    if id == "simpleNo" then
        btn.text = lcl.system.no
        btn.width = 42
        btn.font = fonts.newMenu.debug
        btn.height = 10
        btn.cursor = "side"
        btn.tickSpeed = 0.5
        btn.textOffY = 0.5
    end

    if id == "gemBox" then
        btn.text = nil
        btn.borderSpr = sprites.ui.gemBox
        btn.cursor = "gemBox"
        btn.tickSpeed = 0.5

        if args and args.gem then
            btn.gem = args.gem
            btn.icon = sprites.items.icons.gems[args.gem]
        end
    end

    -- copy over all args properties
    if args then
        for k,v in pairs(args) do
            btn[k] = v -- even though k is the index, I believe the index should be strings, so this should apply all properties
        end
    end

    if btn.class then

        if btn.class == "main" then
            btn.borderSpr = sprites.ui.buttons.main
            btn.back = "darkBack"
            btn.font = fonts.newMenu.main
        end

        if btn.class == "mainSimple" then
            btn.font = fonts.newMenu.main
            if not btn.width then btn.width = 80 end
            btn.height = 14
            btn.cursor = "side"
            btn.tickSpeed = 0.5
            btn.allCaps = true
            btn.textOffY = -1
        end

        if btn.class == "settingsSimple" then
            btn.font = fonts.newMenu.settings
            btn.height = 8
            btn.cursor = "side"
            btn.tickSpeed = 0.5
            btn.textOffY = 0.5
        end

        if btn.class == "debugSimple" then
            btn.font = fonts.newMenu.debug
            btn.height = 10
            btn.cursor = "side"
            btn.tickSpeed = 0.5
            btn.textOffY = 0.5
        end

        if btn.class == "menuBack" then
            btn.font = fonts.newMenu.back
            btn.height = 11
            btn.cursor = "side"
            btn.tickSpeed = 0.5
            btn.textOffY = 0.5
        end

        if btn.class == "scheme" then
            btn.borderSpr = sprites.ui.buttons.scheme
            btn.borderActive = sprites.ui.buttons.schemeActive
            btn.back = "darkBack"
        end

        if btn.class == "mode" then
            btn.borderSpr = sprites.ui.buttons.mode
            btn.borderActive = sprites.ui.buttons.modeActive
            btn.back = "darkBack"
            btn.font = fonts.newMenu.mode
            btn.textOffY = 2
        end

        if btn.class == "range" then
            btn.font = fonts.newMenu.settings
            btn.textOffY = 0
            btn.cursor = "arrows"
            btn.tickSpeed = 0.5
            btn.height = 8
        end

        if btn.class == "cycle" then
            btn.font = fonts.newMenu.cycle
            btn.textOffY = -1
            btn.cursor = "centeredArrows"
            btn.tickSpeed = 0.5
            btn.height = 8

            if btn.id == "listCycle" then
                local totalOptions = 1
                local totalListCount = 0
                if type(newui.list) == "string" and newui.list == "friendList" then
                    totalListCount = steam.friendCount
                else
                    totalListCount = #newui.list
                end
                totalOptions = math.ceil(totalListCount/newui.listPageSize)
                btn.cycleOptions = {}
                for i=1,totalOptions do table.insert(btn.cycleOptions, i) end
            end
        end

        if btn.class == "checkbox" then
            btn.font = fonts.newMenu.settings
            btn.textOffY = -0.5
            btn.cursor = "innerSide"
            btn.tickSpeed = 0.5
            btn.height = 6
        end

    end

    if btn.borderSpr and (not btn.width or not btn.height) then
        btn.width = btn.borderSpr:getWidth()
        btn.height = btn.borderSpr:getHeight()
    end

    if btn.width and btn.height then
        --btn.width = btn.width * newui.scale
        --btn.height = btn.height * newui.scale
        btn.baseWidth = btn.width
        btn.baseHeight = btn.height
    else
        return nil
    end

    if btn.align and btn.align == "left" then
        btn.x = btn.x + btn.width/2
    end

    if btn.allCaps then
        btn.text = btn.text:upper()
    end

    function btn:click(clickDir)
        if self.class == "range" then

            local changeMult = 1
            if settings.useMouse then
                local mx, my = love.mouse.getPosition()
                if mx < self.x then changeMult = -1 end
            else
                if clickDir then
                    changeMult = clickDir
                end
            end

            if self.id == "settings_sounds" then
                settings.soundVolume = settings.soundVolume + (0.1 * changeMult)
                settings.soundMaxVolume = settings.soundMaxVolume + (0.1 * changeMult)
                if settings.soundVolume <= 0.001 then settings.soundVolume = 0 settings.soundMaxVolume = 0 end
                if settings.soundVolume >= 0.999 then settings.soundVolume = 1 settings.soundMaxVolume = 1 end
            end

            if self.id == "settings_music" then
                settings.musicVolume = settings.musicVolume + (0.1 * changeMult)
                settings.musicMaxVolume = settings.musicMaxVolume + (0.1 * changeMult)
                if settings.musicVolume <= 0.001 then settings.musicVolume = 0 settings.musicMaxVolume = 0 end
                if settings.musicVolume >= 0.999 then settings.musicVolume = 1 settings.musicMaxVolume = 1 end
            end

            if self.id == "settings_ambience" then
                settings.ambienceVolume = settings.ambienceVolume + (0.1 * changeMult)
                settings.ambienceMaxVolume = settings.ambienceMaxVolume + (0.1 * changeMult)
                if settings.ambienceVolume <= 0.001 then settings.ambienceVolume = 0 settings.ambienceMaxVolume = 0 end
                if settings.ambienceVolume >= 0.999 then settings.ambienceVolume = 1 settings.ambienceMaxVolume = 1 end
            end

            if self.id == "settings_cursor" then
                settings.cursorSize = settings.cursorSize + (0.1 * changeMult)
                if settings.cursorSize <= 0.001 then settings.cursorSize = 0 end
                if settings.cursorSize >= 0.999 then settings.cursorSize = 1 end
            end

            if self.id == "assist_health" then
                data.assist.health = data.assist.health + (1 * changeMult)
                if data.assist.health <= -1.999 then data.assist.health = -2 end
                if data.assist.health >= 9.999 then data.assist.health = 10 end
                misc:verifyAssist(true)
                player:setMaxHealth()
            end

            if self.id == "assist_weaponArmor" then
                data.assist.weaponArmor = data.assist.weaponArmor + (1 * changeMult)
                if data.assist.weaponArmor <= -1.999 then data.assist.weaponArmor = -2 end
                if data.assist.weaponArmor >= 9.999 then data.assist.weaponArmor = 10 end
                misc:verifyAssist(true)
            end

            if self.id == "assist_weaponDamage" then
                data.assist.weaponDamage = data.assist.weaponDamage + (1 * changeMult)
                if data.assist.weaponDamage <= 0.001 then data.assist.weaponDamage = 0 end
                if data.assist.weaponDamage >= 9.999 then data.assist.weaponDamage = 10 end
                misc:verifyAssist(true)
            end

            if self.id == "assist_resourceBonus" then
                data.assist.resourceBonus = data.assist.resourceBonus + (1 * changeMult)
                if data.assist.resourceBonus <= 0.001 then data.assist.resourceBonus = 0 end
                if data.assist.resourceBonus >= 2.999 then data.assist.resourceBonus = 3 end
                misc:verifyAssist(true)
            end

            if self.id == "assist_movementSpeed" then
                data.assist.movementSpeed = data.assist.movementSpeed + (1 * changeMult)
                if data.assist.movementSpeed <= -4.999 then data.assist.movementSpeed = -5 end
                if data.assist.movementSpeed >= 19.999 then data.assist.movementSpeed = 20 end
                misc:verifyAssist(true)
            end

            if self.id == "assist_gameSpeed" then
                data.assist.gameSpeed = data.assist.gameSpeed + (1 * changeMult)
                if data.assist.gameSpeed <= -8.999 then data.assist.gameSpeed = -9 end
                if data.assist.gameSpeed >= 19.999 then data.assist.gameSpeed = 20 end
                misc:verifyAssist(true)
            end

            saveSettings()
        end

        if self.class == "cycle" then
            local changeMult = 1
            if settings.useMouse then
                local mx, my = love.mouse.getPosition()
                if mx < self.x then changeMult = -1 end
            else
                if clickDir then
                    changeMult = clickDir
                end
            end

            local curIndex = 1
            for i,v in ipairs(self.cycleOptions) do
                if self.id == "controlSchemeCycle" then
                    if v == settings.controlScheme then
                        curIndex = i
                    end
                end
                if self.id == "difficultyCycle" then
                    if data and data.config and v == data.config.mode then
                        curIndex = i
                    end
                end
                if self.id == "listCycle" then
                    if v == newui.listState then
                        curIndex = i
                    end
                end
            end

            curIndex = curIndex + changeMult
            if curIndex > #self.cycleOptions then curIndex = 1 end
            if curIndex < 1 then curIndex = #self.cycleOptions end

            if self.id == "listCycle" then
                newui.listState = self.cycleOptions[curIndex]
                self.label = curIndex
            end

            if self.id == "difficultyCycle" then
                data.config.mode = self.cycleOptions[curIndex]
                self.label = getCurrentDifficulty()
            end

            if self.id == "controlSchemeCycle" then
                settings.controlScheme = self.cycleOptions[curIndex]
                self.label = getCurrentScheme()
                resetBatonInput()
                saveSettings()
            end
        end

        if self.id == "settings_screenshake" then
            if settings.screenshake then
                settings.screenshake = false
            else
                settings.screenshake = true
            end
            saveSettings()
        end

        if self.id == "settings_timer" then
            if settings.gameTimer then
                settings.gameTimer = false
            else
                settings.gameTimer = true
            end
            saveSettings()
        end

        if self.id == "settings_fullscreen" then
            if fullscreen then
                local newWidth = 1920
                local newHeight = 1080
                local fractionW = love.graphics.getWidth()*0.9
                local fractionH = love.graphics.getHeight()*0.9
                if fractionW < newWidth then
                    newWidth = fractionW
                end
                if fractionH < newHeight then
                    newHeight = fractionH
                end
    
                setWindowSize(false, newWidth, newHeight)
                settings.fullscreen = false
            else
                setWindowSize(true)
                settings.fullscreen = true
            end
            reinitSize()
            saveSettings()
        end

        if self.id == "dyeApply_head" then
            data.config.dyeApply.head = not data.config.dyeApply.head
        end

        if self.id == "dyeApply_body" then
            data.config.dyeApply.body = not data.config.dyeApply.body
        end

        if self.id == "dyeApply_belly" then
            data.config.dyeApply.belly = not data.config.dyeApply.belly
        end

        if self.id == "dyeApply_eyes" then
            data.config.dyeApply.eyes = not data.config.dyeApply.eyes
        end

        if self.id == "dyeApply_feet" then
            data.config.dyeApply.feet = not data.config.dyeApply.feet
        end

        if self.id == "debug_warp" then
            newui:stop()
            newui:start("debugWarp")
        end

        if self.id == "debug_weapon" then
            newui:stop()
            newui:start("debugWeapon")
        end

        if self.id == "debug_item" then
            newui:stop()
            newui:start("debugItem")
        end

        if self.id == "debug_enemy" then
            newui:stop()
            newui:start("debugEnemy")
        end

        if self.id == "debug_recording" then
            newui:stop()
            newui:start("debugRecording")
        end

        if self.id == "debug_progress" then
            newui:stop()
            newui:start("debugProgress")
        end

        if self.id == "debug_finish" then
            debug.active = false
            pause:stop()
            pause.targetState = 1
        end

        if self.id == "debug_collisions" then
            debug.showCollisions = not debug.showCollisions
        end

        if self.id == "debug_hitboxes" then
            debug.showHitboxes = not debug.showHitboxes
            if debug.showHitboxes then debug.showCollisions = true end
            world:setQueryDebugDrawing(debug.showHitboxes)
            particleWorld:setQueryDebugDrawing(debug.showHitboxes)
        end

        if self.id == "debug_info" then
            debug.showDebugInfo = not debug.showDebugInfo
        end

        if self.id == "debug_hud" then
            debug.hideHUD = not debug.hideHUD
        end

        if self.id == "debug_invincible" then
            debug.invincible = not debug.invincible
        end

        if self.id == "debug_hidePlayer" then
            debug.hidePlayer = not debug.hidePlayer
        end

        if self.id == "mainNewGame" then
            newui:getDataCache()
            createNewSave(nextAvailableFile) -- creates the new 'data' table
            newui.fileId = nextAvailableFile
            newui:start("newGame")
        end

        if self.id == "mainContinue" then
            newui:start("continue")
        end

        if self.id == "mainSettings" then
            newui:start("settings")
        end

        if self.id == "mainCredits" then
            newui:start("credits")
        end

        if self.id == "mainExit" then
            love.event.quit()
        end

        if self.id == "scheme_keyboardMouse" then
            settings.controlScheme = "keyboardMouse"
            resetBatonInput()
        end

        if self.id == "scheme_controller" then
            settings.controlScheme = "controller"
            resetBatonInput()
        end

        if self.id == "scheme_keyboardOnly" then
            settings.controlScheme = "keyboardOnly"
            resetBatonInput()
        end

        if self.id == "scheme_custom" then
            settings.controlScheme = "custom"
            resetBatonInput()
        end

        if self.id == "mode_normal" then
            data.config.mode = "normal"
        end

        if self.id == "mode_master" then
            data.config.mode = "master"
        end

        if self.id == "keybinds" then
            newui:start("keybinds")
        end

        if self.id == "deleteSave" then
            newui:start("deleteSave")
        end

        if self.id == "pauseExitToMenu" then
            newui:stop()
            pause:stop()
            curtain:call("mainMenu", -100, -100, "fade")
        end
        
        if self.id == "pauseExitGame" then
            love.event.quit()
        end

        if self.id == "confirmYes" then
            newui:finalConfirmYes()
        end

        if self.id == "confirmNo" then
            pause:backArrowPressed()
        end

        if self.id == "simpleYes" then
            newui:simpleYes()
        end

        if self.id == "simpleNo" then
            newui:simpleNo()
        end

        if self.id == "multi_steamInvite" then
            pause.state = 11 -- steam invite
            newui:stop()
            steam:getFriendList()
        end

        if self.id == "multi_steamJoin" then
            pause.state = 12 -- steam join
            newui:stop()
            steam:getFriendList()
        end

        if self.id == "cancelInvite" then
            steam.friend = nil
            steam.state = 1
            steam.retry.inviteFriend = false
            steam.retryTotals.inviteFriend = 0
            steam.retry.closeListenSocket = true
            pause.state = 11 -- steam invite
            newui:start("inviteSteamFriends")
        end

        if self.id == "cancelJoin" then
            steam.friend = nil
            pause.state = 12 -- steam join
            steam:closeMyConnection()
            newui:start("joinSteamFriends")
        end

        if self.id == "multi_local" then

        end

        if self.id == "assistOptions" then
            if gamestate < 1 then
                newui:start("assist")
            else
                newui:stop()
                newui:start("pauseAssist")
            end
        end

        if self.id == "listItem" then
            if pause.state == 11 then -- invite steam friends
                newui:start("inviteSteamFriends", {confirmArgs={id=tostring(self.uid), text=self.text}}) -- confirm pass
            end
            if pause.state == 12 then -- join steam friends
                newui:start("joinSteamFriends", {confirmArgs={id=tostring(self.uid), text=self.text}}) -- confirm pass
            end
            if newui.state > 0 and newui.id == "debugWarp" then
                pause:stop()
                curtain:call(self.uid, self.listArgs.x, self.listArgs.y, "quickFade")
            end
            if newui.state > 0 and newui.id == "debugWeapon" then
                local bv = vector(25, 0):rotated(math.pi*2*math.random())
                weapons:spawn(self.uid, player.x, player.y, {bounceVec=bv})
                sem:playSound(sounds.misc.ascendSoft)
            end
            if newui.state > 0 and newui.id == "debugItem" then
                if self.listArgs and self.listArgs.class and self.listArgs.class == "resource" then
                    resources:spawn(self.uid, player:getX(), player:getY(), {instaCollect=true})
                else
                    dataItemGet(self.uid)
                    sem:playSound(sounds.misc.success, {volume=0.5})
                end
            end
            if newui.state > 0 and newui.id == "debugEnemy" then
                spawnEnemy(player.x - 48, player.y, self.uid, {waitTime=1})
                sem:playSound(sounds.misc.ascendSoft)
            end
            if newui.state > 0 and newui.id == "debugRecording" then
                if self.listArgs then
                    if self.listArgs.width and self.listArgs.height then
                        setWindowSize(fullscreen, self.listArgs.width, self.listArgs.height)
                        reinitSize(self.listArgs.scFactor)
                    end
                end
            end
        end

        if self.id == "newGameStart" then
            menu.chosenFile = newui.fileId
            newui:stop()
            data.config.totalTime = 0 -- reset the totalTime for this new game file
            gamestate = 0.2
            misc.timer = 1.5
            menu:turnRed()
            dj.fade(5)
            dj.play(sounds.effects.ambience1, "static", "effect", 1)
        end

        if self.id == "back" then
            if newui.id == "continue" or newui.id == "deleteSave" or newui.id == "settings" or newui.id == "newGame" then
                newui.prevId = "mainMenu"
            end
            newui:start(newui.prevId)
        end

        if self.id == "backToPause" then
            newui:stop()
            pause:start()
        end

        if self.id == "deleteFileConfirm" then
            -- COUNT UP AND THEN DELETE DATA
            love.filesystem.remove(newui.fileId .. '_assist.lua')
            love.filesystem.remove(newui.fileId .. '_config.lua')
            love.filesystem.remove(newui.fileId .. '_items.lua')
            love.filesystem.remove(newui.fileId .. '_player.lua')
            love.filesystem.remove(newui.fileId .. '_states.lua')
            sem:playSound(sounds.weapons.breakFull)
            newui:start("mainMenu")
        end

        if self.id == "file" then
            if self.fileDelete then
                dj.play(sounds.player.lowHealth, "static", "effect")
                newui.fileId = self.file
                newui:start('deleteConfirm')
            elseif self.fileData then
                newui.fileId = self.file
                newui:stop()
                dj.play(sounds.ui.fantasyClick, "static", "effect")
                if data.player then -- NEW SAVE DATA
                    curtain:call(data.player.map, data.player.x, data.player.y, "circle")
                else
                    curtain:call(data.map, data.playerX, data.playerY, "circle")
                end
            else
                newui:getDataCache()
                createNewSave(nextAvailableFile) -- creates the new 'data' table
                newui.fileId = nextAvailableFile
                newui:start("newGame")
            end
        end

        if self.id == "addKeybind" then
            newui.listenAction = allControls[self.i]
            newui.listening = true
        end

        if self.id == "weapon" then
            if curtain.state == 0 then
                player.wantedWeaponId = self.weaponId
                curtain:call("blacksmithCutscene")
            end
        end

        if self.id == "weaponCancel" then
            if curtain.state == 0 then
                newui:stop()
                player.state = 0
                cam:fluxUnzoom(1)
            end
        end

        if self.id == "gemBox" then
            newui.gem = self.gem
            newui:start("gemChoiceConfirm")
        end

        if self.clickSound then dj.play(self.clickSound, "static", "effect") end

        if pause.state > 0 then
            --pause:initButtons()
        end
    end

    function btn:releaseClick() -- for pesky buttons
        if self.id == "singleKeybind" then
            -- we have access to i and j thanks to how the button was created
            if allControls[self.i] == "mainAction" and input.config.controls[allControls[self.i]][self.j] == "mouse:1" then return nil end
            table.remove(schemes[settings.controlScheme].controls[allControls[self.i]], self.j)
            self.i = nil
            self.j = nil
            resetBatonInput()
            saveSettings()
            newui:start('keybinds')
            sem:playSound(sounds.weapons.breakFull)
        end

        if self.id == "defaultKeybinds" then
            setDefaultScheme(settings.controlScheme)
            resetBatonInput()
            saveSettings()
            newui:start('keybinds')
            sem:playSound(sounds.misc.countdownFinal)
        end
    end

    function btn:update(dt)
        if self.tickSpeed then
            self.tickTimer = self.tickTimer + dt
            if self.tickTimer > self.tickSpeed then
                self.tickTimer = 0
                self.tick = self.tick + 1
            end
        end

        self.width = self.baseWidth * newui.scale
        self.height = self.baseHeight * newui.scale

        local mx, my = love.mouse.getPosition()
        if not settings.useMouse then
            mx = newui.cursorX
            my = newui.cursorY
        end
        if pause.hoverIndex == -3 then
            mx = pause.cursorX
            my = pause.cursorY
        end

        self.clickable = true
        if self.id == "listItem" and not self.text then self.clickable = false end

        if self.id == "listItem" then
            local page = 1
            if newui.listState > 1 then page = newui.listState end
            
            local lindex = self.listIndex + (newui.listPageSize * (page-1))
            local totalListSize = 0
            
            if pause.state == 11 or pause.state == 12 then -- friends list
                self.loading = false
                if lindex > steam.friendCount then
                    self.clickable = false
                elseif not self.text then self.loading = true end
            else
                if lindex > #newui.list then self.clickable = false end
            end
        end

        if self.clickable and inRectangle(mx, my, self.x - self.width/2, self.y - self.height/2, self.width, self.height) then
            if not self.hover then
                sem:playSound(sounds.ui.hoverChange)
                self.hover = true
            end
        else
            self.hover = false
        end

        self.active = false
        if self.id:startswith("scheme") then
            local schName = split(self.id, "_")[2]
            if settings and settings.controlScheme == schName then
                self.active = true
            end
        end
        if self.id:startswith("mode") then
            local schName = split(self.id, "_")[2]
            if data and data.config and data.config.mode == schName then
                self.active = true
            end
        end

        if self.id == "listItem" and self.listIndex then
            local page = 1
            if newui.listState > 1 then page = newui.listState end
            local lindex = self.listIndex + (newui.listPageSize * (page-1))

            -- every frame: validate that the uid and text of this button are updated
            local workingList = newui.list
            if type(newui.list) == "string" and newui.list == "friendList" then
                workingList = copy(steam.friendList)
            end
            local item = workingList[lindex]
            if item then
                self.uid = item.id
                self.text = item.text
                self.listArgs = item.args
            else
                self.uid = nil
                self.text = nil
                self.listArgs = nil
            end
        end
    end

    function btn:draw()
        setWhite()
        if self.cursor and self.hover then
            if self.cursor == "side" then
                local extra = 0
                if self.tick % 2 == 0 then extra = 2 * newui.scale  end
                if self.cursorExtra then extra = extra + self.cursorExtra * newui.scale end
                local offY = 4.25*newui.scale
                local cursorSpr = sprites.ui.icons.sideCursor
                love.graphics.draw(cursorSpr, self.x - self.width/2 - 3*newui.scale - extra, self.y - cursorSpr:getHeight()/2*newui.scale + offY, nil, newui.scale, nil, cursorSpr:getWidth()/2, cursorSpr:getHeight()/2)
                if self.cursorExtraRight then extra = extra + self.cursorExtraRight * newui.scale end
                love.graphics.draw(cursorSpr, self.x + self.width/2 + 3*newui.scale + extra, self.y - cursorSpr:getHeight()/2*newui.scale + offY, nil, newui.scale*-1, newui.scale, cursorSpr:getWidth()/2, cursorSpr:getHeight()/2)
            end

            if self.cursor == "innerSide" then
                local extra = 0
                if self.tick % 2 == 0 then extra = 2 * newui.scale  end
                if self.cursorExtra then extra = extra + self.cursorExtra * newui.scale end
                local offY = 4.25*newui.scale
                local cursorSpr = sprites.ui.icons.sideCursor
                love.graphics.draw(cursorSpr, self.x - self.width/2 + 2*newui.scale - extra, self.y - cursorSpr:getHeight()/2*newui.scale + offY, nil, newui.scale, nil, cursorSpr:getWidth()/2, cursorSpr:getHeight()/2)
                if self.cursorExtraRight then extra = extra + self.cursorExtraRight * newui.scale end
                love.graphics.draw(cursorSpr, self.x + self.width/2 - 2*newui.scale + extra, self.y - cursorSpr:getHeight()/2*newui.scale + offY, nil, newui.scale*-1, newui.scale, cursorSpr:getWidth()/2, cursorSpr:getHeight()/2)
            end

            if self.cursor == "arrows" then
                local extra = 0
                if self.tick % 2 == 0 then extra = 2 * newui.scale  end
                if self.cursorExtra then extra = extra + self.cursorExtra * newui.scale end
                local offY = 4.75*newui.scale
                local cursorSpr = sprites.pause.arrow
                love.graphics.draw(cursorSpr, self.x - self.width/2 + cursorSpr:getWidth()/2*newui.scale - extra + (6*newui.scale), self.y - cursorSpr:getHeight()/2*newui.scale + offY, nil, newui.scale*-1, nil, cursorSpr:getWidth()/2, cursorSpr:getHeight()/2)
                love.graphics.draw(cursorSpr, self.x + self.width/2 + cursorSpr:getWidth()/2*newui.scale + extra - (20*newui.scale), self.y - cursorSpr:getHeight()/2*newui.scale + offY, nil, newui.scale, newui.scale, cursorSpr:getWidth()/2, cursorSpr:getHeight()/2)
            end

            if self.cursor == "centeredArrows" then
                local extra = 0
                if self.tick % 2 == 0 then extra = 2 * newui.scale  end
                if self.cursorExtra then extra = extra + self.cursorExtra * newui.scale end
                local offY = 4.75*newui.scale
                local cursorSpr = sprites.pause.arrow
                love.graphics.draw(cursorSpr, self.x - self.width/2 - extra, self.y - cursorSpr:getHeight()/2*newui.scale + offY, nil, newui.scale*-1, nil, cursorSpr:getWidth()/2, cursorSpr:getHeight()/2)
                love.graphics.draw(cursorSpr, self.x + self.width/2 + extra, self.y - cursorSpr:getHeight()/2*newui.scale + offY, nil, newui.scale, newui.scale, cursorSpr:getWidth()/2, cursorSpr:getHeight()/2)
            end

            if self.cursor == "gemBox" then
                local frameVal = 1
                if self.tick % 2 == 0 then frameVal = 2 end
                local cursorSpr = sprites.ui["gemBoxFrame" .. frameVal]
                love.graphics.draw(cursorSpr, self.x, self.y, nil, newui.scale, nil, cursorSpr:getWidth()/2, cursorSpr:getHeight()/2)
            end
        end

        if self.back then -- back of the button
            love.graphics.setColor(0.1, 0.1, 0.1, 0.35)

            if self.active then love.graphics.setColor(150/255, 10/255, 10/255, 0.45) end
            if self.hover then love.graphics.setColor(42/255, 42/255, 52/255, 0.9) end

            love.graphics.rectangle("fill", self.x - self.width/2, self.y - self.height/2, self.width, self.height)
        end

        setWhite()

        if self.borderSpr then
            local sprToDraw = self.borderSpr
            if self.active and self.borderActive then sprToDraw = self.borderActive end
            love.graphics.draw(sprToDraw, self.x, self.y, nil, newui.scale, nil, sprToDraw:getWidth()/2, sprToDraw:getHeight()/2)
        end

        if self.icon then
            love.graphics.draw(self.icon, self.x, self.y, nil, newui.scale, nil, self.icon:getWidth()/2, self.icon:getHeight()/2)
        end

        if self.text then
            local offY = 0 if self.textOffY then offY = self.textOffY * newui.scale end
            if self.font then love.graphics.setFont(self.font) end
            love.graphics.printf(self.text, self.x - self.width + (0.5*newui.scale), self.y - self.height/2 + offY, self.width*2, "center")
        end

        if self.file then
            setWhite()
            love.graphics.setFont(fonts.newMenu.fileTitle)
            love.graphics.printf(self.file, self.x - self.width*0.46, self.y - (7*newui.scale), self.width, "left")

            love.graphics.setFont(fonts.newMenu.fileStats)
            if self.fileData then
                local percent = 0.0
                if self.fileData.myItems then percent = percent + #self.fileData.myItems end
                if self.fileData.myColors then percent = percent + #self.fileData.myColors end
                if self.fileData.myJewelry then percent = percent + #self.fileData.myJewelry end
                if self.fileData.myGems then percent = percent + #self.fileData.myGems end
                if self.fileData.myWeapons then percent = percent + #self.fileData.myWeapons/4 end
                if self.fileData.myEnemies then percent = percent + #self.fileData.myEnemies/4 end
                if self.fileData.chests then percent = percent + #self.fileData.chests/4 end
                if self.fileData.challenges then percent = percent + #self.fileData.challenges/4 end
                --percent = round(percent)
                percent = math.floor(percent)

                local timeStr = "00:00:00"
                if self.fileData.totalTime then timeStr = disp_time(self.fileData.totalTime, 4) end
                love.graphics.printf(percent .. "%", self.x - 18*newui.scale, self.y - self.height/2 + (2.5*newui.scale), self.width, "left")
                love.graphics.printf(timeStr, self.x - self.width*0.57, self.y - self.height/2 + (2.5*newui.scale), self.width, "right")
                
                if self.fileData.lastSaveTime then
                    local hoursAgo = getHourDifference(self.fileData.lastSaveTime, os.time())
                    local lastSaveMessage = ""
                    if hoursAgo < 1 then
                        local minutes = math.floor(hoursAgo*60)
                        local unit = lcl.system.time.minute
                        if minutes > 1 then unit = lcl.system.time.minutes end
                        lastSaveMessage = lcl.system.time.ago:gsub("{a}", minutes)
                        lastSaveMessage = lastSaveMessage:gsub("{b}", unit)
                    elseif hoursAgo < 24 then
                        local hours = math.floor(hoursAgo)
                        local unit = lcl.system.time.hour
                        if hours > 1 then unit = lcl.system.time.hours end
                        lastSaveMessage = lcl.system.time.ago:gsub("{a}", hours)
                        lastSaveMessage = lastSaveMessage:gsub("{b}", unit)
                    else
                        local days = math.floor(hoursAgo/24)
                        local unit = lcl.system.time.day
                        if days > 1 then unit = lcl.system.time.days end
                        lastSaveMessage = lcl.system.time.ago:gsub("{a}", days)
                        lastSaveMessage = lastSaveMessage:gsub("{b}", unit)
                    end
                    love.graphics.setFont(fonts.newMenu.fileLastSave)
                    love.graphics.printf(lastSaveMessage, self.x - 18*newui.scale, self.y - self.height/2 + (13.5*newui.scale), self.width, "left")
                end

                if self.playerLayerSprites then
                    player:drawGivenSprites(self.x - 33*newui.scale, self.y + 7*newui.scale, self.playerLayerSprites)
                end
            else
                love.graphics.printf("<empty>", self.x - self.width*0.33, self.y - self.height/2 + (8*newui.scale), self.width*0.75, "center")
            end
        end

        if self.class == "range" then
            local offY = 0 if self.textOffY then offY = self.textOffY * newui.scale end
            if self.font then love.graphics.setFont(self.font) end

            local val = 0
            if self.id == "settings_sounds" then val = settings.soundVolume * 10 end
            if self.id == "settings_music" then val = settings.musicVolume * 10 end
            if self.id == "settings_ambience" then val = settings.ambienceVolume * 10 end
            if self.id == "settings_cursor" then val = settings.cursorSize * 10 end
            
            if self.id == "assist_health" then
                if data.assist.health < 0 then val = data.assist.health else val = '+' .. data.assist.health end
            end

            if self.id == "assist_weaponArmor" then
                if data.assist.weaponArmor < 0 then val = data.assist.weaponArmor else val = '+' .. data.assist.weaponArmor end
            end

            if self.id == "assist_weaponDamage" then
                if data.assist.weaponDamage < 0 then val = data.assist.weaponDamage else val = '+' .. data.assist.weaponDamage end
            end

            if self.id == "assist_resourceBonus" then val = '+' .. data.assist.resourceBonus end

            if self.id == "assist_movementSpeed" then
                if data.assist.movementSpeed < 0 then val = data.assist.movementSpeed*10 else val = '+' .. data.assist.movementSpeed*10 end
                val = val .. '%'
            end

            if self.id == "assist_gameSpeed" then
                if data.assist.gameSpeed < 0 then val = data.assist.gameSpeed*10 else val = '+' .. data.assist.gameSpeed*10 end
                val = val .. '%'
            end

            local valWidth = 40*newui.scale
            love.graphics.printf(val, self.x - self.width/2 + (4*newui.scale), self.y - self.height/2 + offY, valWidth, "center")
            love.graphics.printf(self.label, self.x - self.width/2 + (34*newui.scale), self.y - self.height/2 + offY, self.width-valWidth, "left")
        end

        if self.class == "cycle" then
            local offY = 0 if self.textOffY then offY = self.textOffY * newui.scale end
            if self.font then love.graphics.setFont(self.font) end
            love.graphics.printf(self.label, self.x - self.width/2, self.y - self.height/2 + offY, self.width, "center")
            if self.topLabel then
                love.graphics.setFont(fonts.newMenu.settings)
                love.graphics.printf(self.topLabel, self.x - self.width/2, self.y - self.height*1.375 + offY, self.width, "center")
            end
            if self.leftLabel then
                love.graphics.setFont(fonts.newMenu.settings)
                love.graphics.printf(self.leftLabel .. ':', self.x - self.width*1.45, self.y - self.height/2 + offY, self.width, "center")
            end
        end

        if self.class == "checkbox" then
            local offY = 0 if self.textOffY then offY = self.textOffY * newui.scale end
            if self.font then love.graphics.setFont(self.font) end

            local isChecked = false
            if self.id == "settings_fullscreen" then isChecked = fullscreen end
            if self.id == "settings_screenshake" then isChecked = settings.screenshake end
            if self.id == "settings_timer" then isChecked = settings.gameTimer end
            if self.id == "dyeApply_head" then isChecked = data.config.dyeApply.head end
            if self.id == "dyeApply_body" then isChecked = data.config.dyeApply.body end
            if self.id == "dyeApply_belly" then isChecked = data.config.dyeApply.belly end
            if self.id == "dyeApply_eyes" then isChecked = data.config.dyeApply.eyes end
            if self.id == "dyeApply_feet" then isChecked = data.config.dyeApply.feet end
            if self.id == "debug_collisions" then isChecked = debug.showCollisions end
            if self.id == "debug_hitboxes" then isChecked = debug.showHitboxes end
            if self.id == "debug_info" then isChecked = debug.showDebugInfo end
            if self.id == "debug_hud" then isChecked = debug.hideHUD end
            if self.id == "debug_invincible" then isChecked = debug.invincible end
            if self.id == "debug_hidePlayer" then isChecked = debug.hidePlayer end

            local boxWidth = 40*newui.scale
            local boxX = self.x - self.width/2 + (11.5*newui.scale)
            local boxY = self.y
            love.graphics.draw(sprites.ui.buttons.checkbox, boxX, boxY, nil, newui.scale, nil, sprites.ui.buttons.checkbox:getWidth()/2, sprites.ui.buttons.checkbox:getHeight()/2)
            love.graphics.printf(self.label, self.x - self.width/2 + (22*newui.scale), self.y - self.height/2 + offY, self.width*3, "left")

            if isChecked then
                local checkSpr = sprites.ui.icons.dot
                love.graphics.draw(checkSpr, boxX, boxY, nil, newui.scale*0.75, nil, checkSpr:getWidth()/2, checkSpr:getHeight()/2)
            end
        end

        if self.id == "listItem" then
            if not self.text and self.loading then
                local offY = 0 if self.textOffY then offY = self.textOffY * newui.scale end
                love.graphics.printf("...", self.x - self.width/2 + (0.5*newui.scale), self.y - self.height/2 + offY, self.width, "center")
            end
        end

        if self.id == "singleKeybind" then
            if not self.icon then
                -- local split by the :
                local split = split(self.control, ":")
                local inputType = split[1]
                local inputName = split[2]

                love.graphics.setFont(fonts.newMenu.keybind)
                love.graphics.printf(inputType, self.x - 1000, self.y - self.height/2 + 2*newui.scale, 2000, "center")
                love.graphics.printf(inputName, self.x - 1000, self.y - 0*newui.scale, 2000, "center")
            end
        end
    end

    table.insert(self.buttons, btn)
end

function newui:buttonGroup(id)
    if id == "confirm" then
        newui:newButton("confirmYes", newui.tx, newui.ty + 54*newui.scale)
        newui:newButton("confirmNo", newui.tx, newui.ty + 64*newui.scale)
    end
    if id == "simpleConfirm" then
        newui:newButton("simpleYes", newui.tx - 38*newui.scale, newui.ty + 16*newui.scale)
        newui:newButton("simpleNo", newui.tx + 38*newui.scale, newui.ty + 16*newui.scale)
    end
end

-- NOTE: this UI does not interfere with the player's state, or any in-game entities
function newui:start(id, args)
    removeTable(newui.buttons)
    self.back = nil
    if id ~= self.id then self.prevId = self.id end
    self.id = id

    local wdt = love.graphics.getWidth()
    local hgt = love.graphics.getHeight()

    newui.hasClicked = true
    newui.cursorX = -10
    newui.cursorY = -10
    self.state = 1

    newui.scale = scale
    if pause.state > 0 then
        newui.scale = pause.scale
    end
    if gamestate < 1 then
        newui.scale = scale * mainMenuScaleFactor
    end
    if id and id == "keybinds" then
        newui.scale = scale * 0.8
    end
    initFonts(newui.scale)

    local bottomY = 146*newui.scale

    if args and args.confirmArgs then -- the same newui as with the id, but with a confirmation yes/no
        newui.confirmArgs = args.confirmArgs
    elseif newui.confirmArgs and not (args and args.confirmArgs) then -- returning BACK from a confirm, so don't clear the list
        newui.confirmArgs = nil
    else -- normal starting newui, reset any defaults here
        newui.confirmArgs = nil
        newui:clearList()
    end
    
    if id == "mainMenu" then
        -- tx and ty are the top middle of the ux
        self.tx = wdt/2 + 56*newui.scale
        self.ty = hgt/2 - 12*newui.scale
        local options = {}

        local hasData = false
        for i=1,maxTotalFiles do
            if love.filesystem.getInfo(i .. "_config.lua") ~= nil then hasData = true end
            if love.filesystem.getInfo("file" .. i .. ".lua") ~= nil then hasData = true end
        end

        if hasData then table.insert(options, "mainContinue") end
        table.insert(options, "mainNewGame")
        table.insert(options, "mainSettings")
        table.insert(options, "mainCredits")
        table.insert(options, "mainExit")

        for i=1,#options do
            local btnId = options[i]
            local btnX = self.tx
            local btnY = self.ty + (i-1)*16*newui.scale
            newui:newButton(btnId, btnX, btnY)
        end
    end

    --[[if id == "newGame" then
        -- tx and ty are the top middle of the ux
        self.tx = wdt/2 + 56*newui.scale
        self.ty = hgt/2 - 44*newui.scale
        newui:newButton('scheme_keyboardMouse', self.tx - 48*newui.scale, self.ty)
        newui:newButton('scheme_controller', self.tx - 16*newui.scale, self.ty)
        newui:newButton('scheme_keyboardOnly', self.tx + 16*newui.scale, self.ty)
        newui:newButton('scheme_custom', self.tx + 48*newui.scale, self.ty)
        
        newui:newButton('mode_normal', self.tx - 32*newui.scale, self.ty + 42*newui.scale)
        newui:newButton('mode_master', self.tx + 32*newui.scale, self.ty + 42*newui.scale)

        newui:newButton('newGameStart', self.tx + 0*newui.scale, self.ty + 88*newui.scale)
        newui:newButton('back', self.tx + 0*newui.scale, self.ty + 116*newui.scale)
    end]]

    if id == "newGame" then
        -- tx and ty are the top middle of the ux
        self.tx = wdt/2 + 56*newui.scale
        self.ty = hgt/2 - 0*newui.scale
        
        newui:newButton('controlSchemeCycle', self.tx + 32*newui.scale, self.ty + -2*newui.scale)
        newui:newButton('difficultyCycle', self.tx + 16*newui.scale, self.ty + 10*newui.scale)

        newui:newButton('keybinds', self.tx + 0*newui.scale, self.ty + 22*newui.scale)
        newui:newButton('assistOptions', self.tx + 0*newui.scale, self.ty + 32*newui.scale)

        newui:newButton('newGameStart', self.tx + 0*newui.scale, self.ty + 52*newui.scale)
        newui:newButton('back', self.tx + 0*newui.scale, self.ty + 71*newui.scale)
    end

    if id == "deleteConfirm" then
        -- tx and ty are the top middle of the ux
        self.tx = wdt/2 + 56*newui.scale
        self.ty = hgt/2 - 0*newui.scale
        
        newui:newButton('deleteFileConfirm', self.tx + 0*newui.scale, self.ty + 6*newui.scale)
        newui:newButton('back', self.tx + 0*newui.scale, self.ty + 22*newui.scale)
    end

    if id == "continue" or id == "deleteSave" then
        -- tx and ty are the top middle of the ux
        self.tx = wdt/2 + 64*newui.scale
        self.ty = hgt/2 - 70*newui.scale

        for i=1,maxTotalFiles do
            local passData = nil
            local usePassData = false
            if love.filesystem.getInfo(i .. "_config.lua") ~= nil then
                loadGame(i, true)
                usePassData = true
            elseif love.filesystem.getInfo("file" .. i .. ".lua") ~= nil then
                local data = love.filesystem.load("file" .. i .. ".lua")
                data()
                usePassData = true
            end
            if usePassData then
                if data.items then -- NEW SAVE DATA
                    passData = {
                        myItems = data.items.key,
                        myColors = data.items.colors,
                        myGems = data.items.gems,
                        myWeapons = data.items.weapons,
                        myEnemies = data.states.enemies,
                        chests = data.states.chests,
                        challenges = data.states.challenges,
                        mode = data.config.mode,
                        color = data.player.color,
                        totalTime = data.config.totalTime,
                        lastSaveTime = data.config.lastSaveTime
                    }
                else -- OLD SAVE DATA
                    passData = {
                        myItems = data.myItems,
                        myColors = data.myColors,
                        myGems = data.myGems,
                        myWeapons = data.myWeapons,
                        myEnemies = data.myEnemies,
                        chests = data.chests,
                        challenges = data.challenges,
                        mode = data.mode,
                        outfit = data.outfit,
                        money = data.money,
                        totalTime = data.totalTime
                    }
                end
            end

            local willDelete = false
            if id == "deleteSave" then willDelete = true end            
            newui:newButton('file', self.tx + 0*newui.scale, self.ty + (i-1)*32*newui.scale, {file=i, fileData=passData, fileDelete=willDelete})
        end

        newui:newButton('back', self.tx + 0*newui.scale, self.ty + 152*newui.scale)
    end

    if id == "settings" or id == "pauseSettings" then -- left aligned, btw
        -- tx and ty are the top middle of the ux
        self.tx = wdt/2 + 22*newui.scale
        self.ty = hgt/2 - 72*newui.scale
        if id == "pauseSettings" then
            self.tx = pause.x -- + pause.panelWidth/2*newui.scale
            self.ty = hgt/2 - 60*newui.scale
        end
    
        --newui:newButton('settings_cursor', self.tx + (cen*newui.scale), self.ty + gap*2)
        --newui:newButton('settings_timer', self.tx + 0*newui.scale, self.ty + 55*newui.scale)

        if id == "pauseSettings" then
            local gap = 10*newui.scale
            newui:newButton('settings_sounds', self.tx + (pause.panelWidth-8)/2*newui.scale, self.ty + 0*newui.scale)
            newui:newButton('settings_music', self.tx + (pause.panelWidth-27)/2*newui.scale, self.ty + gap)
            newui:newButton('settings_ambience', self.tx + (pause.panelWidth-16)/2*newui.scale, self.ty + gap*2)

            newui:newButton('settings_fullscreen', self.tx + (pause.panelWidth-38)/2*newui.scale + 12*newui.scale, self.ty + gap*3.5)
            newui:newButton('settings_screenshake', self.tx + (pause.panelWidth-32)/2*newui.scale + 12*newui.scale, self.ty + gap*4.5)

            newui:newButton('controlSchemeCycle', self.tx + pause.panelWidth/2*newui.scale, self.ty + gap*7)
            newui:newButton('difficultyCycle', self.tx + pause.panelWidth/2*newui.scale, self.ty + gap*9)

            newui:newButton('keybinds', self.tx + pause.panelWidth/2*newui.scale, self.ty + gap*10.5)
            newui:newButton('assistOptions', self.tx + pause.panelWidth/2*newui.scale, self.ty + gap*11.5)
            newui:newButton('pauseExitToMenu', self.tx + pause.panelWidth/2*newui.scale, self.ty + gap*12.5)
            newui:newButton('pauseExitGame', self.tx + pause.panelWidth/2*newui.scale, self.ty + gap*13.5)
        else
            local gap = 10*newui.scale
            local cen = 36

            newui:newButton('settings_sounds', self.tx + ((cen-4)*newui.scale), self.ty + 0*newui.scale)
            newui:newButton('settings_music', self.tx + ((cen-14)*newui.scale), self.ty + gap)
            newui:newButton('settings_ambience', self.tx + ((cen-8)*newui.scale), self.ty + gap*2)

            newui:newButton('settings_fullscreen', self.tx + ((cen-20)*newui.scale) + 12*newui.scale, self.ty + gap*4)
            newui:newButton('settings_screenshake', self.tx + ((cen-17)*newui.scale) + 12*newui.scale, self.ty + gap*5)
            
            newui:newButton('controlSchemeCycle', self.tx + (cen*newui.scale), self.ty + gap*8)
            newui:newButton('keybinds', self.tx + (cen*newui.scale), self.ty + gap*9)
            newui:newButton('deleteSave', self.tx + (cen*newui.scale), self.ty + gap*11)
            newui:newButton('back', self.tx + (cen*newui.scale), self.ty + bottomY)
        end
    end

    if id == "pauseDebug" then -- left aligned, btw
        -- tx and ty are the top middle of the ux
        self.tx = pause.x
        self.ty = hgt/2 - 58*newui.scale

        local gap = 13*newui.scale
        local cen = pause.panelWidth/2*newui.scale
        newui:newButton('debug_warp', self.tx + cen, self.ty)
        newui:newButton('debug_weapon', self.tx + cen, self.ty + gap)
        newui:newButton('debug_item', self.tx + cen, self.ty + gap*2)
        newui:newButton('debug_enemy', self.tx + cen, self.ty + gap*3)
        newui:newButton('debug_recording', self.tx + cen, self.ty + gap*4)
        --newui:newButton('debug_progress', self.tx + cen, self.ty + gap*4)

        newui:newButton('debug_collisions', self.tx + 48*newui.scale, self.ty + gap*6)
        newui:newButton('debug_hitboxes', self.tx + cen + 28*newui.scale, self.ty + gap*6)
        newui:newButton('debug_info', self.tx + 48*newui.scale, self.ty + gap*7)
        newui:newButton('debug_invincible', self.tx + cen + 28*newui.scale, self.ty + gap*7)
        newui:newButton('debug_hud', self.tx + 48*newui.scale, self.ty + gap*8)
        newui:newButton('debug_hidePlayer', self.tx + cen + 28*newui.scale, self.ty + gap*8)

        newui:newButton('debug_finish', self.tx + cen, self.ty + gap*10)
    end

    if id == "dyeApply" then -- the pause menu, collab with pause
        self.tx = pause.x + 32*newui.scale
        self.ty = hgt/2 + 40*newui.scale
        local wgap = 52*newui.scale
        local hgap = 14*newui.scale
        newui:newButton('dyeApply_head', self.tx, self.ty)
        newui:newButton('dyeApply_eyes', self.tx, self.ty + hgap)
        --newui:newButton('dyeApply_belly', self.tx, self.ty + hgap*2)

        self.tx = self.tx + wgap
        newui:newButton('dyeApply_body', self.tx, self.ty)
        newui:newButton('dyeApply_feet', self.tx, self.ty + hgap)

        self.tx = self.tx + wgap
        newui:newButton('dyeApply_belly', self.tx, self.ty)
    end

    if id == "assist" or id == "pauseAssist" then -- left aligned, btw
        -- tx and ty are the top middle of the ux
        self.tx = wdt/2 - 8*newui.scale
        self.ty = hgt/2 - 34*newui.scale
        if id == "pauseAssist" then
            self.tx = pause.x + 12*newui.scale -- + pause.panelWidth/2*newui.scale
            self.ty = hgt/2 - 40*newui.scale
        end
        local gap = 10*newui.scale
        local cen = 60
        newui:newButton('assist_health', self.tx + (cen*newui.scale), self.ty + 0*newui.scale)
        newui:newButton('assist_weaponArmor', self.tx + (cen*newui.scale), self.ty + gap)
        newui:newButton('assist_weaponDamage', self.tx + (cen*newui.scale), self.ty + gap*2)
        newui:newButton('assist_resourceBonus', self.tx + (cen*newui.scale), self.ty + gap*3)
        newui:newButton('assist_movementSpeed', self.tx + (cen*newui.scale), self.ty + gap*4)
        newui:newButton('assist_gameSpeed', self.tx + (cen*newui.scale), self.ty + gap*5)

        newui:newButton('back', self.tx + 64*newui.scale, self.ty + gap*8)
    end

    if id == "debugWarp" then
        self.tx = pause.x + pause.panelWidth/2*newui.scale
        self.ty = pause.y

        if newui.listState == 0 then
            newui.listState = 1
            newui.list = copy(debug.warpList)
        end
    end

    if id == "debugWeapon" then
        self.tx = pause.x + pause.panelWidth/2*newui.scale
        self.ty = pause.y

        if newui.listState == 0 then
            newui.listState = 1
            newui.list = copy(debug.weaponList)
        end
    end

    if id == "debugItem" then
        self.tx = pause.x + pause.panelWidth/2*newui.scale
        self.ty = pause.y

        if newui.listState == 0 then
            newui.listState = 1
            newui.list = copy(debug.itemList)
        end
    end

    if id == "debugEnemy" then
        self.tx = pause.x + pause.panelWidth/2*newui.scale
        self.ty = pause.y

        if newui.listState == 0 then
            newui.listState = 1
            newui.list = copy(debug.enemyList)
        end
    end

    if id == "debugRecording" then
        self.tx = pause.x + pause.panelWidth/2*newui.scale
        self.ty = pause.y

        if newui.listState == 0 then
            newui.listState = 1
            newui.list = copy(debug.recordingList)
        end
    end

    if id == "debugProgress" then
        self.tx = pause.x + pause.panelWidth/2*newui.scale
        self.ty = pause.y

        if newui.listState == 0 then
            newui.listState = 1
            newui.list = copy(debug.progressList)
        end
    end

    if id == "multi" then
        self.tx = pause.x + pause.panelWidth/2*newui.scale
        self.ty = pause.y

        newui:newButton('multi_steamInvite', self.tx, self.ty + 46*newui.scale)
        newui:newButton('multi_steamJoin', self.tx, self.ty + 56*newui.scale)
        newui:newButton('multi_local', self.tx, self.ty + 94*newui.scale)
    end

    if id == "inviteSteamFriends" then
        self.tx = pause.x + pause.panelWidth/2*newui.scale
        self.ty = pause.y

        if newui.confirmArgs then
            newui:buttonGroup("confirm")
        elseif newui.listState == 0 then
            newui.listState = 1
            newui.list = "friendList"
            --[[newui.list = {
                {id = "76561198150017267", text = "Kyzerole"},
                {id = "76561199527007814", text = "Challacade"},
                {id = "76561199527107814", text = "Challacade1"},
                {id = "76561199527207814", text = "Challacade2"},
                {id = "76561199527307814", text = "Challacade3"},
                {id = "76561199527407814", text = "Challacade4"},
                {id = "76561199527507814", text = "Challacade5"},
                {id = "76561199527607814", text = "Challacade6"},
                {id = "76561199527707814", text = "Challacade7"},
                {id = "76561199527807814", text = "Challacade8"},
                {id = "76561199527907814", text = "Challacade9"},
                {id = "76561199527907814", text = "Challacade10"},

                {id = "76561199527907814", text = "Challacade11"},
                {id = "76561199527907814", text = "Challacade12"},
                {id = "76561199527907814", text = "Challacade13"}
            }]]
        end
    end

    if id == "joinSteamFriends" then
        self.tx = pause.x + pause.panelWidth/2*newui.scale
        self.ty = pause.y

        if newui.confirmArgs then
            newui:buttonGroup("confirm")
        elseif newui.listState == 0 then
            newui.listState = 1
            newui.list = "friendList"
            -- TODO: Get list of steam friends (that invited me) via luasteam
            --[[newui.list = {
                {id = "76561198150017267", text = "Kyzerole"},
                {id = "76561199527007814", text = "Challacade"}
            }]]
        end
    end

    if id == "waitingForClient" then
        newui:newButton('cancelInvite', self.tx + 0*newui.scale, self.ty + 86*newui.scale)
    end

    if id == "waitingForHost" then
        newui:newButton('cancelJoin', self.tx + 0*newui.scale, self.ty + 86*newui.scale)
    end

    if id == "credits" then
        -- tx and ty are the top middle of the ux
        self.tx = wdt/2 + 56*newui.scale
        self.ty = 6*newui.scale
        newui:newButton('back', self.tx + 0*newui.scale, self.ty + bottomY)
    end

    if id == "keybinds" then
        -- tx and ty are the top middle of the ux
        self.back = "dark"
        self.tx = wdt/2
        self.ty = 8*newui.scale
        newui:newButton('back', self.tx + 28*newui.scale, self.ty + 194*newui.scale)
        newui:newButton('defaultKeybinds', self.tx - 28*newui.scale, self.ty + 194*newui.scale)

        local cX = self.tx - 76*newui.scale
        local cY = 8*newui.scale
        local bufferX = 28
        local bufferY = 18
        
        for i=1, #allControls do
            local tracker = 1
            for j=1, #schemes[settings.controlScheme].controls[allControls[i]] do
                newui:newButton('singleKeybind', cX + (j * bufferX*newui.scale), cY + (i * bufferY*newui.scale), {control=schemes[settings.controlScheme].controls[allControls[i]][j], i=i, j=j})
                tracker = tracker + 1
            end
            newui:newButton('addKeybind', cX + (tracker * bufferX*newui.scale), cY + (i * bufferY*newui.scale), {i=i})
        end
    end

    if id == "blacksmith" then -- left aligned, btw
        -- tx and ty are the top middle of the ux
        self.tx = wdt/2 + 0*newui.scale
        self.ty = hgt/2 - 68*newui.scale
        self.back = "dark"

        for i,v in ipairs(data.items.weapons) do
            local wep = weapons:getStats({id=v.id})
            newui:newButton('weapon', self.tx - 0*newui.scale, self.ty + (i-1)*12*newui.scale, {text=wep.name, weaponId=v.id})
        end
        newui:newButton('weaponCancel', self.tx - 0*newui.scale, self.ty + (#data.items.weapons)*12*newui.scale)
    end

    if id == "gemChoice" then
        -- tx and ty are about the middle of the ux
        self.tx = wdt/2
        self.ty = hgt/2 + 12*newui.scale
        local allOptions = {"ruby", "garnet", "topaz", "emerald", "sapphire", "amethyst"}
        local options = {}
        for i,v in ipairs(allOptions) do
            if not allGems[v] then
                table.insert(options, v)
            end
        end

        for i,v in ipairs(options) do
            local gap = 36*newui.scale
            local totalWidth = (#options-1) * gap
            newui:newButton('gemBox', self.tx + (i-1)*gap - (totalWidth/2), self.ty, {gem=v})
        end
    end

    if id == "gemChoiceConfirm" then
        self.tx = wdt/2
        self.ty = hgt/2 + 12*newui.scale
        newui:buttonGroup("simpleConfirm")
    end

    if newui.listState and not newui.confirmArgs then
        local workingList = {}
        if type(newui.list) == "table" then
            workingList = copy(newui.list)
        elseif type(newui.list) == "string" then
            if newui.list == "friendList" then
                workingList = copy(steam.friendList)
            end
        end
        local listCount = #workingList
        if listCount and listCount > 0 then
            newui.listEmpty = false
            local gap = 10*newui.scale
            local totalCount = listCount
            if listCount > newui.listPageSize then
                totalCount = newui.listPageSize
            end
            for i=1, totalCount do
                local btnId = workingList[i].id
                local btnX = self.tx
                if i % 2 == 0 then btnX = self.tx + 40*newui.scale else btnX = self.tx - 40*newui.scale end
                local row = math.ceil(i/2)
                local btnY = self.ty + (row-1)*gap + 30*newui.scale
                newui:newButton("listItem", btnX, btnY, {listIndex=i, uid=btnId, text=workingList[i].text}) -- text gets updated in button update
            end
            if listCount > newui.listPageSize then -- need to use paging
                newui:newButton("listCycle", self.tx, self.ty + 186*newui.scale) -- text gets updated in button update                
            end
        else
            -- display 'Nothing to see here'
        end
    end

    if not settings.useMouse then
        local btn = newui.buttons[1]
        if btn then
            newui.cursorX = btn.x
            newui.cursorY = btn.y
        end
    end
end

function newui:clearList()
    newui.list = {}
    newui.listState = 0
    newui.listEmpty = true
    newui.listPageSize = 30
end

function newui:stop()
    self.state = 0
    removeTable(newui.buttons)
end

function newui:update(dt)
    if self.state == 0 then return end

    for _,b in ipairs(newui.buttons) do
        if b.update then b:update(dt) end
    end

    if pause.state > 0 and not pause.cursorAtNewui then
        newui.cursorX = -10
        newui.cursorY = -10
    end

    if not settings.useMouse and newui.prevMouseState == true then
        local btn = newui.buttons[1]
        if btn then -- warp cursor to some part of the newui
            newui.cursorX = btn.x
            newui.cursorY = btn.y
        end
    end
    newui.prevMouseState = settings.useMouse
end

function newui:draw()
    if self.state == 0 then return end

    if self.back and self.back == "dark" then
        love.graphics.setColor(0.1, 0.1, 0.1, 0.75)
        love.graphics.rectangle("fill", -10, -10, love.graphics.getWidth() + 20, love.graphics.getHeight() + 20)
    end

    for _,b in ipairs(newui.buttons) do
        if b.draw then b:draw() end
    end

    if self.id == "newGame" then
        love.graphics.setFont(fonts.newMenu.title)
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.printf("New Game on File #" .. newui.fileId, self.tx - 4000, self.ty - 22 * newui.scale, 8000, "center")
    end

    if self.id == "deleteConfirm" then
        love.graphics.setFont(fonts.newMenu.title)
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.printf(lcl.system.data.deleteConfirm:gsub('{a}', newui.fileId), self.tx - 4000, self.ty - 28 * newui.scale, 8000, "center")
    end

    if self.id == "assist" then
        love.graphics.setFont(fonts.newMenu.title)
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.printf(lcl.system.assist.title, self.tx + 70*newui.scale - 4000, self.ty - 22 * newui.scale, 8000, "center")
    end

    if self.id == "credits" then
        setWhite()
        love.graphics.setFont(fonts.credits.title)
        love.graphics.printf(lcl.system.gameName, self.tx - 4000, self.ty - 0 * newui.scale, 8000, "center")
        love.graphics.setFont(fonts.credits.subtitle)
        love.graphics.printf(lcl.system.credits.mainBy:gsub('{a}', "Kyle Schaub") ..  "@Challacade", self.tx - 4000, self.ty + 10 * newui.scale, 8000, "center")
        love.graphics.setFont(fonts.credits.subsubtitle)
        love.graphics.printf(lcl.system.credits.thanks, self.tx - 4000, self.ty + 25 * newui.scale, 8000, "center")
        love.graphics.setFont(fonts.credits.name)
        love.graphics.printf("TrisPixels  |  " .. lcl.system.credits.pixelArt, self.tx - 4000, self.ty + 34 * newui.scale, 8000, "center")
        love.graphics.printf("@elliesprites  |  " .. lcl.system.credits.pixelArt, self.tx - 4000, self.ty + 40 * newui.scale, 8000, "center")
        love.graphics.printf("Veih  |  " .. lcl.system.credits.illustration, self.tx - 4000, self.ty + 46 * newui.scale, 8000, "center")
        love.graphics.printf("WolfAeterni  |  " .. lcl.system.credits.testingLead, self.tx - 4000, self.ty + 52 * newui.scale, 8000, "center")
        love.graphics.printf("Pippa015  |  " .. lcl.system.credits.discordAdmin, self.tx - 4000, self.ty + 58 * newui.scale, 8000, "center")
        love.graphics.setFont(fonts.credits.subsubtitle)
        love.graphics.printf(lcl.system.credits.assets, self.tx - 4000, self.ty + 74 * newui.scale, 8000, "center")
        love.graphics.setFont(fonts.credits.name)
        love.graphics.printf("Krishna Palacio    @nyk_nck    ArMM1998\nBonkyDev    Digital Moons    Pita Madgwick\nVoid    o_lobster    Jamie Brown Hill\n@Sven_Thole    CreativeKind    Leohpaz", self.tx - 4000, self.ty + 84 * newui.scale, 8000, "center")
    end

    if self.id == "keybinds" then
        setWhite()
        love.graphics.setFont(fonts.newMenu.flavor)
        local str = lcl.system.keybinds.title:gsub('{a}', getCurrentScheme())
        if newui.listening and newui.listenAction then
            str = lcl.system.keybinds.waiting:gsub('{a}', newui.listenAction)
        end
        love.graphics.printf(str, self.tx - 4000, self.ty - 2*newui.scale, 8000, "center")

        for i=1, #allControls do
            local controlY = self.ty + (i-1)*18*newui.scale + 11*newui.scale
            love.graphics.printf(lcl.system.controls[allControls[i]], self.tx - 130*newui.scale, controlY, 64*newui.scale, "right")
        end
    end

    if self.id == "gemChoice" then
        local gemName = ""
        local gemDesc = ""

        for _,b in ipairs(newui.buttons) do
            if b.hover and b.gem and lcl.items.gems[b.gem] then
                gemName = lcl.items.gems[b.gem].name
                gemDesc = lcl.items.gems[b.gem].desc
            end
        end

        setWhite()
        love.graphics.setFont(fonts.gemTitle)
        love.graphics.printf(gemName, self.tx - 4000, self.ty - 29*newui.scale, 8000, "center")
        love.graphics.setFont(fonts.gemDesc)
        love.graphics.printf(gemDesc, self.tx - 4000, self.ty + 16*newui.scale, 8000, "center")
    end

    if self.id == "gemChoiceConfirm" then
        local gemName = ""
        if newui.gem then gemName = lcl.items.gems[newui.gem].name end

        setWhite()
        love.graphics.setFont(fonts.gemTitle)
        love.graphics.printf(gemName, self.tx - 4000, self.ty - 29*newui.scale, 8000, "center")
        love.graphics.printf(lcl.narration.gemPedestal.desire, self.tx - 4000, self.ty - 6*newui.scale, 8000, "center")
    end
end

function newui:select()
    if self.state == 0 then return end
    
    for _,b in ipairs(newui.buttons) do
        if not newui.hasClicked then
            if b.hover then
                b:click()
                newui.hasClicked = true
            end
        end
    end
end

function newui:releaseSelect()
    if self.state == 0 then return end
    for _,b in ipairs(newui.buttons) do
        if b.hover and b.releaseClick then b:releaseClick() end
    end
end

function newui:getDataCache()

    removeTable(self.dataCache)
    nextAvailableFile = -1

    -- load the cache
    for i=1,maxTotalFiles do
        if love.filesystem.getInfo(i .. "_config.lua") ~= nil then
            loadGame(i, true)
            self.dataCache[i] = data
        elseif love.filesystem.getInfo("file" .. i .. ".lua") ~= nil then
            local thisFile = love.filesystem.load("file" .. i .. ".lua")
            thisFile()
            self.dataCache[i] = thisFile
        end
    end

    -- Determine the earliest available file
    local j = maxTotalFiles
    while j >= 1 do
        if not self.dataCache[j] then
            nextAvailableFile = j
        end
        j = j - 1
    end

end

function newui:moveCursor2(dir)
    if settings.useMouse then return nil end
    if self.state == 0 then return nil end
    if #pause.buttons == 0 and #newui.buttons == 0 then return nil end
    if not pause.cursorAtNewui and pause.state > 0 then return nil end
    local moveVec = getVecFromDirStr(dir)
    local destBtn = nil
    local destPauseBtn = nil

    local bail = false
    -- check if the cursor is on a button that can be moved left/right
    for _,b in ipairs(newui.buttons) do
        if b.hover and b.class == "range" then
            if dir == "left" then
                b:click(-1)
                bail = true
            elseif dir == "right" then
                b:click(1)
                bail = true
            end
        end
    end
    if bail then return nil end 

    if newui.cursorY > 164*newui.scale and dir == "down" and newui.id == "keybinds" then
        local defBtn = nil
        local backBtn = nil
        for _,b in ipairs(newui.buttons) do
            if b.id == "defaultKeybinds" then defBtn = b end
            if b.id == "back" then backBtn = b end
        end
        local defDist = distanceBetween(newui.cursorX, newui.cursorY, defBtn.x, defBtn.y)
        local backDist = distanceBetween(newui.cursorX, newui.cursorY, backBtn.x, backBtn.y)
        if defDist < backDist then newui.cursorX = defBtn.x newui.cursorY = defBtn.y
        else newui.cursorX = backBtn.x newui.cursorY = backBtn.y end
        return nil
    end

    if newui.cursorY > 100*newui.scale and dir == "up" and newui.id == "keybinds" then
        local defBtn = nil
        local closestDist = 9999
        for _,b in ipairs(newui.buttons) do
            if b.id ~= "defaultKeybinds" and b.id ~= "back" then
                if not defBtn then
                    defBtn = b
                else
                    local dist = distanceBetween(newui.cursorX, newui.cursorY, b.x, b.y)
                    if dist < closestDist then
                        defBtn = b
                        closestDist = dist
                    end
                end
            end
        end
        newui.cursorX = defBtn.x newui.cursorY = defBtn.y
    end

    for i=1,64 do -- extend outward looking for buttons
        for j=1,12 do -- perpendicular checks for buttons
            if not destBtn and not destPauseBtn then
                local checkDist = 5*newui.scale
                local lookVec = moveVec * (i * checkDist*0.75)

                local offVec = moveVec:rotated(math.pi/2) * (j/2 * checkDist)
                if j % 2 == 0 then offVec = offVec * -1 end

                if newui.id == "keybinds" then offVec = vector(0,0) end

                -- if moving left or right, don't check the y offset
                if dir == "left" or dir == "right" then offVec = vector(0,0) end

                local checkX = self.cursorX + lookVec.x + offVec.x
                local checkY = self.cursorY + lookVec.y + offVec.y
                for _,b in ipairs(newui.buttons) do
                    if not b.hover and distanceBetween(checkX, checkY, b.x, b.y) < checkDist then
                        destBtn = b
                        break
                    end
                end
                if not destBtn and pause.state > 0 then
                    for _,b in ipairs(pause.buttons) do
                        if not b.hover and distanceBetween(checkX, checkY, b.x, b.y) < checkDist then
                            destPauseBtn = b
                            break
                        end
                    end
                end
            end
        end
    end

    local finalDestBtn = destBtn
    if not destBtn then finalDestBtn = destPauseBtn end
    if finalDestBtn then
        destX = finalDestBtn.x
        destY = finalDestBtn.y

        newui.cursorX = destX
        newui.cursorY = destY

        if destPauseBtn then
            pause.cursorAtNewui = false
            newui.cursorX = -10
            newui.cursorY = -10
            pause.cursorX = destX
            pause.cursorY = destY
        end
    elseif dir == "up" and pause.state > 0 then
        pause.hoverIndex = -3
        pause.cursorAtNewui = false
        local centerX = pause.x + pause.panelWidth/2 * newui.scale
        pause.cursorX = pause.x + pause.panelWidth/2 * newui.scale + 1
        pause.cursorY = pause.y + 13.5*newui.scale
        newui.cursorX = -10
        newui.cursorY = -10
        return nil
    end
end

function newui:moveCursor(dir)
    if settings.useMouse then return nil end
    if self.state == 0 then return nil end

    local destX = -10
    local destY = -10
    local closestBtn = nil
    local closestDist = 9999
    local dirVec = vector(1, 0)
    local moveCursor = false

    if dir == "down" then
        dirVec = vector(0, 1)
    elseif dir == "up" then
        dirVec = vector(0, -1)
    elseif dir == "left" then
        dirVec = vector(-1, 0)
    elseif dir == "right" then
        dirVec = vector(1, 0)
    end

    dirVec = dirVec * 0.1*newui.scale

    -- check if the cursor is on a button that can be moved left/right
    for _,b in ipairs(newui.buttons) do
        if b.hover and b.class == "range" then
            if dir == "left" then
                b:click(-1)
                return
            elseif dir == "right" then
                b:click(1)
                return
            end
        end
    end

    local lowestY = 9999999
    for _,b in ipairs(newui.buttons) do
        if b.y < lowestY then lowestY = b.y end
        if b.hover then
            -- button is already hovered, don't do anything
        else
            local dist = distanceBetween(newui.cursorX + dirVec.x, newui.cursorY + dirVec.y, b.x, b.y)
            local useBtn = false
            if dist < closestDist then
                if dir == "down" then
                    if b.y > newui.cursorY and (math.abs(b.y - newui.cursorY) > math.abs(b.x - newui.cursorX)) then useBtn = true end
                elseif dir == "up" then
                    if b.y < newui.cursorY and (math.abs(b.y - newui.cursorY) > math.abs(b.x - newui.cursorX)) then useBtn = true end
                elseif dir == "left" then
                    if b.x < newui.cursorX and (math.abs(b.y - newui.cursorY) < math.abs(b.x - newui.cursorX)) then useBtn = true end
                elseif dir == "right" then
                    if b.x > newui.cursorX and (math.abs(b.y - newui.cursorY) < math.abs(b.x - newui.cursorX)) then useBtn = true end
                end
                if useBtn then
                    closestDist = dist
                    closestBtn = b
                    moveCursor = true
                end
            end
        end
    end

    if self.id == "pauseSettings" and dir == "up" and math.abs(self.cursorY - lowestY) < 4*newui.scale then
        pause.hoverIndex = -3
        self.cursorX = pause.x + pause.panelWidth/2 * newui.scale + 1
        self.cursorY = pause.y + 13.5*newui.scale
        pause.cursorX = self.cursorX
        pause.cursorY = self.cursorY
        return nil
    end

    if self.id == "pauseSettings" and pause.hoverIndex == -3 and dir == "down" then
        for _,b in ipairs(newui.buttons) do
            if b.y == lowestY then
                closestBtn = b
                moveCursor = true
                pause.hoverIndex = 0
            end
        end
    end

    if closestBtn then
        if moveCursor then
            destX = closestBtn.x
            destY = closestBtn.y

            newui.cursorX = destX
            newui.cursorY = destY

            if self.id == "pauseSettings" then
                pause.cursorX = destX
                pause.cursorY = destY
            end
        end
    end
end

function newui:finalConfirmYes()
    if self.confirmArgs then
        if pause.state == 11 then -- invite steam friend
            steam:inviteFriend(self.confirmArgs)
            pause.state = 11.5
            newui:clearList()
            newui:start("waitingForClient")
        elseif pause.state == 12 then -- join steam friend
            steam:joinFriend(self.confirmArgs)
            pause.state = 12.5
            newui:clearList()
            newui:start("waitingForHost")
        end
    else
        return nil -- no confirm args, so don't do anything
    end
end

function newui:simpleYes()
    if self.id == "gemChoiceConfirm" then
        newui:stop()

        if misc.lastStatue then -- use this to find the statue that we're talking to
            for _,v in ipairs(trees) do
                if v.uid and v.uid == misc.lastStatue then
                    v:chooseGem()
                end
            end
        end
    end
end

function newui:simpleNo()
    if self.id == "gemChoiceConfirm" then
        newui:start("gemChoice")
    end
end
