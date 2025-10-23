schemes = {} -- all control schemes
allControls = { 'up', 'left', 'down', 'right', 'mainAction', 'dodge', 'pickup', 'pause', 'toggle' } -- aim values are not configurable

function translateAllControls(ind)
    if allControls[ind] then
        return lcl.system.controls[allControls[ind]]
    else
        return ""
    end
end

function setKeybind(newInput)
    table.insert(schemes[settings.controlScheme].controls[newui.listenAction], newInput)
    resetBatonInput()
    newui.listening = false
    saveSettings()
    newui:start('keybinds')
    sem:playSound(sounds.misc.countdownFinal)
end

function setDefaultScheme(sch)
    if sch == "keyboardMouse" then
        schemes.keyboardMouse = {
            controls = {
                left = {'key:a', 'key:left'},
                right = {'key:d', 'key:right'},
                up = {'key:w', 'key:up'},
                down = {'key:s', 'key:down'},
                mainAction = {'mouse:1'},
                pickup = {'mouse:2'},
                dodge = {'key:space'},
                pause = {'key:return', 'key:e', 'key:escape'},
                toggle = {'key:tab'},
                aimLeft = {'axis:rightx-'},
                aimRight = {'axis:rightx+'},
                aimUp = {'axis:righty-'},
                aimDown = {'axis:righty+'},
            },
            pairs = {
                move = {'left', 'right', 'up', 'down'},
                aim = {'aimLeft', 'aimRight', 'aimUp', 'aimDown'}
            },
            joystick = love.joystick.getJoysticks()[1],
        }
    end

    if sch == "controller" then
        schemes.controller = {
            controls = {
                left = {'axis:leftx-', 'button:dpleft'},
                right = {'axis:leftx+', 'button:dpright'},
                up = {'axis:lefty-', 'button:dpup'},
                down = {'axis:lefty+', 'button:dpdown'},
                mainAction = {'button:a', 'mouse:1'}, -- always keep mouse:1
                pickup = {'button:y'},
                dodge = {'button:b'},
                pause = {'button:start', 'button:x'},
                toggle = {'button:leftshoulder', 'axis:triggerleft+', 'button:rightshoulder', 'axis:triggerright+'},
                aimLeft = {'axis:rightx-'},
                aimRight = {'axis:rightx+'},
                aimUp = {'axis:righty-'},
                aimDown = {'axis:righty+'},
                menuShiftRight = {'button:rightshoulder'},
                menuShiftLeft = {'button:leftshoulder'},
            },
            pairs = {
                move = {'left', 'right', 'up', 'down'},
                aim = {'aimLeft', 'aimRight', 'aimUp', 'aimDown'}
            },
            joystick = love.joystick.getJoysticks()[1],
        }
    end

    if sch == "keyboardOnly" then
        schemes.keyboardOnly = {
            controls = {
                left = {'key:left'},
                right = {'key:right'},
                up = {'key:up'},
                down = {'key:down'},
                mainAction = {'key:z', 'mouse:1'},
                pickup = {'key:x'},
                dodge = {'key:space'},
                pause = {'key:return', 'key:e', 'key:escape'},
                toggle = {'key:tab'},
                aimLeft = {'axis:rightx-'},
                aimRight = {'axis:rightx+'},
                aimUp = {'axis:righty-'},
                aimDown = {'axis:righty+'},
            },
            pairs = {
                move = {'left', 'right', 'up', 'down'},
                aim = {'aimLeft', 'aimRight', 'aimUp', 'aimDown'}
            },
            joystick = love.joystick.getJoysticks()[1],
        }
    end

    if sch == "custom" then
        schemes.custom = {
            controls = {
                left = {},
                right = {},
                up = {},
                down = {},
                mainAction = {'mouse:1'},
                pickup = {},
                dodge = {},
                pause = {'key:escape'},
                toggle = {},
                aimLeft = {'axis:rightx-'},
                aimRight = {'axis:rightx+'},
                aimUp = {'axis:righty-'},
                aimDown = {'axis:righty+'},
            },
            pairs = {
                move = {'left', 'right', 'up', 'down'},
                aim = {'aimLeft', 'aimRight', 'aimUp', 'aimDown'}
            },
            joystick = love.joystick.getJoysticks()[1],
        }
    end
end

function setAllDefaultSchemes()

    setDefaultScheme("keyboardMouse")
    setDefaultScheme("controller")
    setDefaultScheme("keyboardOnly")
    setDefaultScheme("custom")
    
end

function getCurrentScheme()
    if settings.controlScheme == "keyboardMouse" then
        return lcl.system.schemes.keyboardMouse
    elseif settings.controlScheme == "controller" then
        return lcl.system.schemes.controller
    elseif settings.controlScheme == "keyboardOnly" then
        return lcl.system.schemes.keyboardOnly
    else
        return lcl.system.schemes.custom
    end
end

function getInputIcon(input) -- baton input
    -- split input by the :
    local split = split(input, ":")
    local inputType = split[1]
    local inputName = split[2]

    if inputType == "key" then
        return sprites.ui.controls.keys[inputName]
    elseif inputType == "mouse" then
        return sprites.ui.controls['mouse' .. inputName]
    elseif inputType == "button" then
        return sprites.ui.controls.buttons[inputName]
    elseif inputType == "axis" then
        if inputName == "rightx-" then
            return sprites.ui.controls.rightStickL
        elseif inputName == "rightx+" then
            return sprites.ui.controls.rightStickR
        elseif inputName == "righty-" then
            return sprites.ui.controls.rightStickU
        elseif inputName == "righty+" then
            return sprites.ui.controls.rightStickD
        elseif inputName == "leftx+" then
            return sprites.ui.controls.leftStickR
        elseif inputName == "leftx-" then
            return sprites.ui.controls.leftStickL
        elseif inputName == "lefty+" then
            return sprites.ui.controls.leftStickD
        elseif inputName == "lefty-" then
            return sprites.ui.controls.leftStickU
        elseif inputName == "triggerleft+" then
            return sprites.ui.controls.triggerL
        elseif inputName == "triggerright+" then
            return sprites.ui.controls.triggerR
        end
    end
end
