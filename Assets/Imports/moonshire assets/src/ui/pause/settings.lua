pauseSettings = {}
pauseSettings.state = 0

function pauseSettings:start()
    pause.state = 3
    pause.y = 2 * scale
    pauseSettings:initButtons()
end

function pauseSettings:initButtons()
    removeTable(pause.buttons)

    if pause.state == 3 then
        pause:newButton("volumeLow", -7*scale, 16*scale, {btnAction = "musicVolumeLow"})
        pause:newButton("volumeHigh", 72*scale, 16*scale, {btnAction = "musicVolumeHigh"})
        pause:newButton("volumeLow", -7*scale, 36*scale, {btnAction = "soundVolumeLow"})
        pause:newButton("volumeHigh", 72*scale, 36*scale, {btnAction = "soundVolumeHigh"})
        pause:newButton("valueLow", -7*scale, 56*scale, {btnAction = "cursorSizeLow"})
        pause:newButton("valueHigh", 72*scale, 56*scale, {btnAction = "cursorSizeHigh"})

        pause:newButton("toggle", -7*scale, 76*scale, {btnAction = "fullscreen"})
        pause:newButton("toggle", -7*scale, 96*scale, {btnAction = "screenshake"})

        pause:newButton("controls", 0*scale, 120*scale)
        
        if gamestate < 1 then
            pause:newButton("deleteFile", 0*scale, 142*scale)
        else
            pause:newButton("exit", 0*scale, 142*scale)
        end

        pause:newButton("settingsBack", -86*scale, 142*scale)

    elseif pause.state == 4 then

        pause:newButton("controlScheme", -10*scale, 42*scale, {scheme="keyboardMouse"})
        pause:newButton("controlScheme", -10*scale, 62*scale, {scheme="controller"})
        pause:newButton("controlScheme", -10*scale, 82*scale, {scheme="keyboardOnly"})
        pause:newButton("controlScheme", -10*scale, 102*scale, {scheme="custom"})
        pause:newButton("editScheme", 50*scale, 42*scale)
        pause:newButton("settingsBack", -86*scale, 142*scale)

    elseif pause.state == 5 then
    
        for i=1, #allControls do
            local tracker = 1
            for j=1, #schemes[settings.controlScheme].controls[allControls[i]] do
                --local btnId = "keybind:" .. allControls[i] .. ":" .. input.config.controls[allControls[i]][j]
                --buttons:new(ux.index, btnId, cX + (j * bufferX*scale), cY + (i * bufferY*scale), sprites.keybinds.panel, tracker)
                --tracker = tracker + 1
                pause:newButton("bind", (j-1)*40*scale - 44*scale, (i-1)*12*scale + 12*scale, {control=schemes[settings.controlScheme].controls[allControls[i]][j], allControlsId=allControls[i], column=j})
            end
            pause:newButton("addBind", (#schemes[settings.controlScheme].controls[allControls[i]])*40*scale - 58*scale, (i-1)*12*scale + 12*scale, {allControlsId=allControls[i]})
        end

        pause:newButton("defaultBind", 0, 142*scale)
        pause:newButton("settingsBack", -86*scale, 142*scale)

    end
end

function pauseSettings:update(dt)

end

function pauseSettings:draw()
    if pause.state == 3 or pause.state == 3.5 then
        love.graphics.setColor(197/255, 220/255, 1)
        love.graphics.rectangle("fill", pause.x + 7.5*scale, pause.y + 14*scale, 50*scale * settings.musicMaxVolume, 4*scale)
        love.graphics.rectangle("fill", pause.x + 7.5*scale, pause.y + 34*scale, 50*scale * settings.soundMaxVolume, 4*scale)
        love.graphics.rectangle("fill", pause.x + 7.5*scale, pause.y + 54*scale, 50*scale * settings.cursorSize, 4*scale)

        setWhite()
        local bar = sprites.settings.soundBar
        love.graphics.draw(bar, pause.x + 5.5*scale, pause.y + 12.5*scale, nil, scale)
        love.graphics.draw(bar, pause.x + 5.5*scale, pause.y + 32.5*scale, nil, scale)
        love.graphics.draw(bar, pause.x + 5.5*scale, pause.y + 52.5*scale, nil, scale)

        love.graphics.setFont(fonts.pause.settings)
        love.graphics.printf("Music Volume", love.graphics.getWidth()/2 - 116*scale, pause.y + 9*scale, 94*scale, "right")
        love.graphics.printf("Sound Effects", love.graphics.getWidth()/2 - 116*scale, pause.y + 29*scale, 94*scale, "right")
        love.graphics.printf("Cursor Size", love.graphics.getWidth()/2 - 116*scale, pause.y + 49.5*scale, 94*scale, "right")
        love.graphics.printf("Fullscreen", love.graphics.getWidth()/2 - 116*scale, pause.y + 69*scale, 94*scale, "right")
        love.graphics.printf("Screenshake", love.graphics.getWidth()/2 - 116*scale, pause.y + 88.5*scale, 94*scale, "right")
    end
    if pause.state == 5 or pause.state == 6 then
        love.graphics.setFont(fonts.mainMenu.altStory)
        for i=1, #allControls do
            love.graphics.printf(translateAllControls(i), love.graphics.getWidth()/2 - 162*scale, pause.y + (i-1)*12*scale + 9.5*scale, 94*scale, "right")
        end
    end
    if pause.state == 6 then
        love.graphics.setColor(0.1, 0.1, 0.1, 0.6)
        love.graphics.rectangle("fill", -10, -10, love.graphics.getWidth() + 20, love.graphics.getHeight() + 20)
        love.graphics.setFont(fonts.pause.settings)
        setWhite()
        love.graphics.printf("Awaiting input...", love.graphics.getWidth()/2 - 4000, pause.y + (64*scale), 8000, "center")
    end
end
