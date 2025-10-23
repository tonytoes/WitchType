function pause:initButtons()
    removeTable(pause.buttons)
    pause.backArrow = false

    --pause:newButton("dyes", -86*pause.scale, 20*pause.scale)
    --pause:newButton("settings", -86*pause.scale, 48*pause.scale)

    local stateCheck = self.state
    if self.state == 0.5 then -- opening up
        stateCheck = self.targetState
    end

    if stateCheck == 1 then -- items
        newui:stop()
        for i=1,18 do -- key items
            local btnY = 36*pause.scale
            local lilI = i
            if i > 6 then
                local row = math.floor(i/6.01)
                btnY = btnY + 28*pause.scale*row
                lilI = i%6 if lilI == 0 then lilI = 6 end
            end
    
            if data.items.key[i] then
                local itemName = data.items.key[i]
                pause:newButton(itemName, (lilI-1)*28*pause.scale + 19.5*pause.scale, btnY, {item=true})
            end
        end
        --[[for i=1,6 do -- spells
            local btnY = 92*pause.scale
            local lilI = i
            if i > 6 then
                local row = math.floor(i/6.01)
                btnY = btnY + 28*pause.scale*row
                lilI = i%6 if lilI == 0 then lilI = 6 end
            end
    
            if data.items.spells[i] then
                local itemName = data.items.spells[i]
                pause:newButton(itemName, (lilI-1)*28*pause.scale + 19.5*pause.scale, btnY, {item=true})
            end
        end]]
        for i=1,12 do -- resources
            local btnY = 129*pause.scale
            local lilI = i
            if i > 6 then
                local row = math.floor(i/6.01)
                btnY = btnY + 28*pause.scale*row
                lilI = i%6 if lilI == 0 then lilI = 6 end
            end
    
            if data.items.resources[i] then
                local itemName = data.items.resources[i].id
                pause:newButton(itemName, (lilI-1)*28*pause.scale + 19.5*pause.scale, btnY, {resource=true})
            end
        end
        for i=1,6 do -- gems
            local btnY = 157*pause.scale
            local lilI = i
    
            if data.items.gems[i] then
                pause:newButton(data.items.gems[i], (lilI-1)*28*pause.scale + 19.5*pause.scale, btnY, {gem=true})
            end
        end
    elseif stateCheck == 2 then -- dyes
        newui:stop()
        for i=1,18 do
            local btnY = 36*pause.scale
            local lilI = i
            if i > 6 then
                local row = math.floor(i/6.01)
                btnY = btnY + 28*pause.scale*row
                lilI = i%6
            end
    
            if data.items.colors[i] then
                pause:newButton(data.items.colors[i], (lilI-1)*28*pause.scale + 19.5*pause.scale, btnY, {dye=true})
            end
        end
        newui:start("dyeApply")
    elseif stateCheck == 3 then -- settings
        if newui.state > 0 and (newui.id == "pauseAssist" or newui.id == "keybinds") then
            -- newui is opened already for one of these, so don't go to pauseSettings
        else
            newui:start("pauseSettings")
        end
    elseif stateCheck == 8 then -- gems (no longer used)
        newui:stop()
        pause.backArrow = true
        for i=1,8 do
            local btnY = 36*pause.scale
            local lilI = i
            if i > 4 then
                local row = math.floor(i/4)
                btnY = btnY + 28*pause.scale*row
                lilI = i%4
            end
    
            if data.items.gems[i] then
                pause:newButton(data.items.gems[i], (lilI-1)*28*pause.scale + 19.5*pause.scale, btnY, {gem=true})
            end
        end
        pause:newButton(pause.jewelry, pause.panelWidth/2*pause.scale, 118*pause.scale, {jewelry=true})
    elseif stateCheck == 9 then -- jewelry
        newui:stop()
        for i=1,4 do
            local btnY = 36*pause.scale
            local lilI = i
        end
        for i=1,8 do
            local btnY = 92*pause.scale
            local lilI = i
            if i > 4 then
                local row = math.floor(i/4)
                btnY = btnY + 28*pause.scale*row
                lilI = i%4
            end
    
            if data.items.gems[i] then
                pause:newButton(data.items.gems[i], (lilI-1)*28*pause.scale + 19.5*pause.scale, btnY, {gem=true})
            end
        end
    elseif stateCheck == 10 then -- multi
        -- handled elsewhere, search for "multi"
    elseif stateCheck == 11 then -- invite steam friends
        pause.backArrow = true
    elseif stateCheck == 11.5 then -- waiting for them to accept invite
        pause.backArrow = true
    elseif stateCheck == 12 then -- join steam friend from invite
        pause.backArrow = true
    elseif stateCheck == 12.5 then -- waiting for host?
        pause.backArrow = true
    elseif stateCheck == 20 then -- settings
        if newui.state > 0 and (newui.id == "debugWarp" or newui.id == "debugWeapon" or newui.id == "debugItem" or newui.id == "debugEnemy" or newui.id == "debugProgress") then
            -- newui is opened already for one of these, so don't go to pauseSettings
        else
            newui:start("pauseDebug")
        end
    end
end

function pause:newButton(id, x, y, args)
    local button = {}
    button.index = #pause.buttons + 1
    button.id = id
    button.relX = x
    button.relY = y
    button.x = pause.x + x
    button.y = pause.y + y
    button.hover = false
    button.panelSpr = sprites.pause.itemPanel
    button.width = button.panelSpr:getWidth()
    button.height = button.panelSpr:getHeight()
    button.args = args

    if args and args.item then button.item = true end
    if args and args.resource then button.resource = true end
    if args and args.btnAction then button.btnAction = args.btnAction end
    if args and args.scheme then button.scheme = args.scheme end
    if args and args.control then button.control = args.control end
    if args and args.dye then button.dye = true end
    if args and args.gem then button.gem = true end
    if args and args.jewelry then button.jewelry = true end

    function button:click()
        if self.id == "dyes" then
            if pause.state == 2 then pause.state = 1 else pause.state = 2 end
            pause:initButtons()
        end
        if self.id == "settings" then
            dj.play(sounds.ui.fantasyClick, "static", "effect")
            --pauseSettings:start()
            pause:stopForSettings()
            newui:start("pauseSettings")
        end
        if self.id == "ring" or self.id == "necklace" or self.id == "bracelet" or self.id:startswith("ring_") or self.id:startswith("necklace_") or self.id:startswith("bracelet_") then
            dj.play(sounds.ui.fantasyClick, "static", "effect")
            local newId = self.id
            -- if newId has an underscore, only include the stuff before the underscore
            if newId:find("_") then
                newId = newId:sub(1, newId:find("_")-1)
            end
            pause.jewelry = newId
            pause:initButtons()
            --[[if not settings.useMouse then
                pause.cursorX = pause.x + pause.panelWidth/2*pause.scale - 3*pause.scale
                pause.cursorY = 11*pause.scale
            end]]
        end
        if self.item then
            if self.id == "map" then
                dj.play(sounds.ui.mapOpen, "static", "effect")
                pause.state = 7
                removeTable(pause.buttons)
            elseif self.id == "multi" then
                dj.play(sounds.ui.mapOpen, "static", "effect")
                pause.state = 10
                removeTable(pause.buttons)
                newui:start("multi")
                pause.backArrow = true

                if steam.state >= 11 and steam.state < 20 then
                    pause.state = 11.5
                    newui:start("waitingForClient")
                end
            else
                dj.play(sounds.ui.fantasyClick, "static", "effect")
                pause.hoverText = loots.all[self.id].desc
                --pause.font = fonts.pause.smallText
            end
        end
        if self.resource then
            dj.play(sounds.ui.fantasyClick, "static", "effect")
            pause.hoverText = lcl.items[self.id].desc
        end
        if self.dye then
            sem:playSound(sounds.effects.bubble, { pitchRand=0.2 })
            data.player.outfit = "" -- no longer used
            changePlayerColor(self.id)
        end
        if self.gem then
            dj.play(sounds.ui.fantasyClick, "static", "effect")
            pause.hoverText = lcl.items.gems[self.id].desc
        end
        if self.jewelry then -- preview of the current jewelry
        end
        if self.btnAction then
            if self.btnAction == "musicVolumeLow" then
                settings.musicVolume = settings.musicVolume - 0.1
                settings.musicMaxVolume = settings.musicMaxVolume - 0.1
                if settings.musicVolume < 0 then settings.musicVolume = 0 settings.musicMaxVolume = 0 end
            elseif self.btnAction == "musicVolumeHigh" then
                settings.musicEnabled = true
                settings.musicVolume = settings.musicVolume + 0.1
                settings.musicMaxVolume = settings.musicMaxVolume + 0.1
                if settings.musicVolume > 1 then settings.musicVolume = 1 settings.musicMaxVolume = 1 end
            elseif self.btnAction == "soundVolumeLow" then
                settings.soundVolume = settings.soundVolume - 0.1
                settings.soundMaxVolume = settings.soundMaxVolume - 0.1
                if settings.soundVolume < 0 then settings.soundVolume = 0 settings.soundMaxVolume = 0 end
                dj.volume("effect", settings.soundVolume * soundMix)
                dj.volume("environment", settings.soundVolume * soundMix)
            elseif self.btnAction == "soundVolumeHigh" then
                settings.soundEnabled = true
                settings.soundVolume = settings.soundVolume + 0.1
                settings.soundMaxVolume = settings.soundMaxVolume + 0.1
                if settings.soundVolume > 1 then settings.soundVolume = 1 settings.soundMaxVolume = 1 end
                dj.volume("effect", settings.soundVolume * soundMix)
                dj.volume("environment", settings.soundVolume * soundMix)
            elseif self.btnAction == "cursorSizeLow" then
                settings.cursorSize = settings.cursorSize - 0.1
                if settings.cursorSize < 0 then settings.cursorSize = 0 end
                if love.system.getOS() == "Windows" then settings.cursorSize = 0 end
                setCursor()
            elseif self.btnAction == "cursorSizeHigh" then
                settings.cursorSize = settings.cursorSize + 0.1
                if settings.cursorSize > 1 then settings.cursorSize = 1 end
                if love.system.getOS() == "Windows" then settings.cursorSize = 1 end
                setCursor()
            end
            saveSettings()
        end
        if self.id == "toggle" then
            dj.play(sounds.ui.fantasyClick, "static", "effect")
            if self.btnAction == "fullscreen" then
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
            elseif self.btnAction == "screenshake" then
                settings.screenshake = not settings.screenshake
            end
            saveSettings()
        end
        if self.id == "controls" then
            dj.play(sounds.ui.fantasyClick, "static", "effect")
            pause.state = 4
            pauseSettings:initButtons()
        end
        if self.id == "editScheme" then
            dj.play(sounds.ui.fantasyClick, "static", "effect")
            pause.state = 5
            pauseSettings:initButtons()
        end
        if self.id == "controlScheme" then
            if settings.controlScheme ~= self.scheme then
                dj.play(sounds.ui.fantasyClick, "static", "effect")
                settings.controlScheme = self.scheme -- 'keyboardMouse, controller, keyboardOnly, custom'
                resetBatonInput()
            end
        end
        if self.id == "bind" then
            -- remove this bind, but not if it's mainAction mouse
            if self.args.allControlsId == "mainAction" and schemes[settings.controlScheme].controls[self.args.allControlsId][self.args.column] == "mouse:1" then
                dj.play(sounds.weapons.fail, "static", "effect")
                return nil
            end
            dj.play(sounds.ui.fantasyClick, "static", "effect")
            table.remove(schemes[settings.controlScheme].controls[self.args.allControlsId], self.args.column)
        
            pauseSettings:initButtons()
            saveSettings()
        end
        if self.id == "addBind" then
            dj.play(sounds.ui.fantasyClick, "static", "effect")
            pause.listenFor = self.args.allControlsId
            pause.state = 6
        end
        if self.id == "defaultBind" then
            dj.play(sounds.ui.fantasyClick, "static", "effect")
            -- restore defaults for settings.controlScheme
            setDefaultScheme(settings.controlScheme)
            pauseSettings:initButtons()
            saveSettings()
        end
        if self.id == "exit" then
            love.event.quit()
        end
        if self.id == "deleteFile" then
            pause:quickStop()
        end
        if self.id == "settingsBack" then
            dj.play(sounds.ui.fantasyClick, "static", "effect")
            if pause.state == 3 and gamestate >= 1 then
                pause.state = 1
                pause:initButtons()
            elseif pause.state == 4 then
                pauseSettings:start()
            elseif pause.state == 5 then
                pause.state = 4
                pauseSettings:initButtons()
            elseif gamestate < 1 then
                pause:quickStop()
                gamestate = 0.1
            else
                pauseSettings:start()
            end
        end
    end

    function button:update(dt)

        if self.id == "editScheme" then
            for _,b in ipairs(pause.buttons) do
                if b.scheme and settings.controlScheme == b.scheme then
                    self.relY = b.y - 2*pause.scale
                end
            end
        end

        self.x = self.relX + pause.x
        self.y = self.relY + pause.y

        local mx, my = love.mouse.getPosition()
        if settings.useMouse == false then
            -- if using a controller, artificially set the cursor over the correct button
            mx = pause.cursorX
            my = pause.cursorY
        end
        if inRectangle(mx, my, self.x - self.width/2*pause.scale, self.y - self.height/2*pause.scale, self.width*pause.scale, self.height*pause.scale) then
            if self.hover == false then
                sem:playSound(sounds.ui.hoverChange)
                pause.font = fonts.pause.text
                if self.item then
                    pause.hoverText = loots.all[self.id].title
                elseif self.resource then
                    pause.hoverText = lcl.items[self.id].name
                elseif self.id == "dyes" then
                    pause.hoverText = "Dyes"
                elseif self.id == "settings" then
                    pause.hoverText = "Settings"
                elseif self.dye then
                    pause.hoverText = lcl.system.dyes.hover:gsub("{a}", lcl.items.colors[self.id])
                elseif self.gem then
                    pause.hoverText = capitalizeFirstLetter(self.id)
                end
            end
            self.hover = true
            pause.hoverIndex = self.index
        else
            self.hover = false
        end
    end

    function button:draw()
        setWhite()
        pause.jewelryIcon = nil
        local panel = self.panelSpr
        local thisJewelryInd = 0
        local pauseJewelryInd = 0

        if self.hover then
            panel = sprites.pause.itemPanelHover
        end
        if self.id == "dyes" and pause.state == 2 then
            panel = sprites.pause.itemPanelActive
            if self.hover then panel = sprites.pause.itemPanelActiveHover end
        end
        if self.id == "volumeLow" or self.id == "volumeHigh" or self.id == "valueLow" or self.id == "valueHigh" or self.id == "toggle" or self.id == "settingsBack" or self.id == "editScheme" then
            panel = sprites.settings.smallButton
            if self.hover then panel = sprites.settings.smallButtonHover end
        end
        if self.id == "controls" or self.id == "exit" or self.id == "defaultBind" or self.id == "deleteFile" then
            panel = sprites.settings.wideButton
            if self.hover then panel = sprites.settings.wideButtonHover end
        end
        if self.id == "bind" then
            panel = sprites.settings.bindButton
            if self.hover then panel = sprites.settings.bindButtonHover end
        end
        if self.id == "addBind" then
            panel = sprites.settings.smallestButton
            if self.hover then panel = sprites.settings.smallestButtonHover end
        end
        if self.id == "controlScheme" then
            panel = sprites.settings.widerButton
            if self.hover then panel = sprites.settings.widerButtonHover end
            if settings.controlScheme == self.scheme then
                panel = sprites.settings.widerButtonActive
                if self.hover then panel = sprites.settings.widerButtonActiveHover end
            end
        end
        if self.dye then
            local lit = true
            if data.config.dyeApply.head and data.player.color.head ~= self.id then lit = false end
            if data.config.dyeApply.body and data.player.color.body ~= self.id then lit = false end
            if data.config.dyeApply.belly and data.player.color.belly ~= self.id then lit = false end
            if data.config.dyeApply.eyes and data.player.color.eyes ~= self.id then lit = false end
            if data.config.dyeApply.feet and data.player.color.feet ~= self.id then lit = false end
            if not data.config.dyeApply.head and not data.config.dyeApply.body and not data.config.dyeApply.belly and not data.config.dyeApply.eyes and not data.config.dyeApply.feet then lit = false end
            
            if lit then
                panel = sprites.pause.itemPanelActive
                if self.hover then panel = sprites.pause.itemPanelActiveHover end
            end
        end
        if self.gem then

        end

        button.width = panel:getWidth()
        button.height = panel:getHeight()

        love.graphics.draw(panel, self.x, self.y, nil, pause.scale, nil, panel:getWidth()/2, panel:getHeight()/2)
        if self.item then
            local offY = -0.5*pause.scale
            drawLoot(self.id, self.x, self.y + offY, pause.scale)
        elseif self.resource then
            local offY = -5*pause.scale
            local spr = sprites.items.resources[self.id .. '1']
            love.graphics.draw(spr, self.x, self.y + offY, nil, pause.scale, nil, spr:getWidth()/2, spr:getHeight()/2)
            
            love.graphics.setFont(fonts.pause.resourceCount)
            love.graphics.printf(getResourceCount(self.id), self.x - 99.5*pause.scale, self.y - 2*pause.scale, 200*pause.scale, "center")
        else
            local icon = nil
            local text = nil
            local iconSc = 1
            if self.id == "dyes" then
                icon = sprites.items.icons["dye_" .. data.player.outfit:lower()]
            elseif self.id == "settings" then
                icon = sprites.settings.icon
            elseif self.id == "volumeLow" then
                icon = sprites.settings.volumeLow
            elseif self.id == "volumeHigh" then
                icon = sprites.settings.volumeHigh
            elseif self.id == "valueLow" then
                icon = sprites.settings.subtract
                iconSc = 1.1
            elseif self.id == "valueHigh" then
                icon = sprites.settings.add
                iconSc = 1.1
            elseif self.id == "settingsBack" then
                icon = sprites.settings.back
            elseif self.id == "editScheme" then
                icon = sprites.settings.smallWrench
                iconSc = 0.85
            elseif self.id == "addBind" then
                icon = sprites.settings.add
                iconSc = 0.95
            elseif self.dye then
                icon = sprites.items.icons["dye_" .. self.id]
            elseif self.gem then
                icon = sprites.items.icons.gems[self.id]
            elseif self.id == "toggle" then
                if settings[self.btnAction] then
                    icon = sprites.settings.checkmark
                else
                    icon = sprites.blank
                end
            elseif self.id == "controls" then
                text = "Controls"
            elseif self.id == "exit" then
                text = "Exit Game"
            elseif self.id == "deleteFile" then
                text = "Delete File"
            elseif self.scheme and self.scheme == "keyboardMouse" then
                text = "Keyboard + Mouse"
            elseif self.scheme and self.scheme == "controller" then
                text = "Controller"
            elseif self.scheme and self.scheme == "keyboardOnly" then
                text = "Keyboard Only"
            elseif self.scheme and self.scheme == "custom" then
                text = "Custom"
            elseif self.id == "bind" then
                text = self.control
            elseif self.id == "defaultBind" then
                text = "Restore Defaults"
            end
            if icon then
                love.graphics.draw(icon, self.x, self.y-0.5*pause.scale, nil, pause.scale * iconSc, nil, icon:getWidth()/2, icon:getHeight()/2)
            elseif text then
                local offY = 0
                love.graphics.setFont(fonts.pause.settingsButton)
                if self.id == "bind" then
                    love.graphics.setFont(fonts.pause.keybind)
                    offY = 2*pause.scale
                end
                love.graphics.printf(text, self.x - 50*pause.scale, self.y - 5.5*pause.scale + offY, 100*pause.scale, "center")
            end
        end
    end

    table.insert(pause.buttons, button)
end