menu = {}

function menu:init()
    menu.timer = 0
    menu.chosenFile = 0
    menu.redMult = 1
    menu.greenMult = 1
    menu.blueMult = 1
end

function menu:draw()
    if gamestate >= 2 and gamestate < 3 then
        love.graphics.setColor(16/255, 16/255, 16/255, 1)
        love.graphics.rectangle("fill", -10, -10, windowWidth + 20, windowHeight + 20)
    end

    if gamestate < 1 then
        love.graphics.setColor(1, 1, 1, 1)
        local alph = 1 - (curtain.alpha * 2)
        if gamestate > 0.1 then alph = 0 end

        if (gamestate == 0.1 and curtain.alpha > 0) or gamestate > 0.1 then
            love.graphics.setColor(1, 1, 1, alph)
        end
        
        local logoOffset = 56*scale
        if gamestate < 1 then logoOffset = logoOffset * mainMenuScaleFactor end
        
        if gamestate <= 0.1 then
            local castleOffset = 0

            local moonSpr = sprites.ui.menu.moon
            --love.graphics.draw(moonSpr, love.graphics.getWidth()/2 + castleOffset, 44 * scale, nil, scale*0.88, nil, moonSpr:getWidth()/2, moonSpr:getHeight()/2)

            local castleSpr = sprites.ui.menu.castle
            --love.graphics.draw(castleSpr, love.graphics.getWidth()/2 + castleOffset, love.graphics.getHeight()/2 + 4*scale, nil, scale*0.88, nil, castleSpr:getWidth()/2, castleSpr:getHeight()/2)

            love.graphics.setFont(fonts.menuSmall)
            if steam.statsReceived then
                love.graphics.printf(lcl.system.steam.connected, 2 * scale * mainMenuScaleFactor, 178 * scale * mainMenuScaleFactor, love.graphics.getWidth()-20, "left")
            end
            love.graphics.printf(lcl.system.version .. " " .. gameVersion, 2 * scale * mainMenuScaleFactor, 187 * scale * mainMenuScaleFactor, love.graphics.getWidth()-20, "left")

            if newui.state == 0 or newui.id == "mainMenu" or newui.id == "newGame" then
                local logoSpr = sprites.ui.menu.logo
                love.graphics.draw(logoSpr, love.graphics.getWidth()/2 + logoOffset, love.graphics.getHeight()/2 - 34 * scale, nil, scale*0.8, nil, logoSpr:getWidth()/2, logoSpr:getHeight()/2)
            end
        end


        setWhite()
        if gamestate == 0 then
            love.graphics.setFont(fonts.newMenu.start)
            love.graphics.printf(lcl.system.pressAnyStart, love.graphics.getWidth()/2 + logoOffset - 4000, 88 * scale * mainMenuScaleFactor, 8000, "center")
        elseif gamestate == 0.1 then
            
        end
        setWhite()
    --[[elseif gamestate == 2 then
        love.graphics.setFont(fonts.dungeonTitle)
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.printf("Test Dungeon (old content)", love.graphics.getWidth()/2 - 4000, 42 * scale, 8000, "center")
    elseif gamestate == 2.1 then
        love.graphics.setFont(fonts.menu)
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.printf("You feel the rooms shift around you...", love.graphics.getWidth()/2 - 4000, 70 * scale, 8000, "center")]]
    end
end

function menu:select(key)
    if gamestate == 0 then
        gamestate = 0.1
        dj.play(sounds.ui.fantasyClick, "static", "effect")
        newui:getDataCache()
        newui:start("mainMenu")
    elseif gamestate == 0.1 then
    elseif gamestate == 3.1 then
        -- respawn
        removeTable(weapons)
        player.hasWeapon = false
        player.weaponId = ""
        player.weaponUniqueId = ""

        dj.play(sounds.ui.fantasyClick, "static", "effect")
        menu.chosenFile = data.config.fileNumber
        --gamestate = 3.2
        player:setMaxHealth()
        player.health = player.maxHealth -- always load the game with full health
        gamestate = 1
        cam.smoother = Camera.smooth.none() -- otherwise there's a camlag problem where things jitter
        loadMap(data.player.map, data.player.x, data.player.y, {loading=true}) -- moving loadMap after gamestate changes
        effects:spawn("playerRevive", player:getX(), player:getY())
    end

    if pause.state == 7 then -- map
        -- close map
        dj.play(sounds.ui.mapClose, "static", "effect")
        pause:start()
    end
end

function menu:update(dt)
    if gamestate == 2.1 then
        menu.timer = menu.timer + dt
        if menu.timer > 2.6 and curtain.state == 0 then
            curtain:call("startLevel1", nil, nil, "fade")
            menu.timer = 0
        end
    end
end

function menu:turnRed()
    local totalTime = 5
    flux.to(self, totalTime, {redMult = 1.45}):ease("quadinout")
    flux.to(self, totalTime, {greenMult = 0.45}):ease("quadinout")
    flux.to(self, totalTime, {blueMult = 0.55}):ease("quadinout")
end

function menu:isAlt()
    if love.keyboard.isDown('lalt') or love.keyboard.isDown('ralt') then
        return true
    else
        return false
    end
end

function menu:isCtrl()
    if love.keyboard.isDown('lctrl') or love.keyboard.isDown('rctrl') then
        return true
    else
        return false
    end
end
