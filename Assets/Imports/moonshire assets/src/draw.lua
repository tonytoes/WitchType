function drawBeforeCamera()
    background:draw()
end

function drawCamera()

    if gamestate == 2 then return end
    setWhite()

    if gamestate >= 0.2 and gameMap.shader == "mixer" then
        shaders:color({})
    end
    parallax:draw()
    love.graphics.setShader()

    shaders:color({})
    sm:draw('underSprites')
    drawMapLayers()
    sm:draw('floorSprites')
    love.graphics.setShader()

    effects:draw(-2)

    shaders:color({})
    drawMediumLayers()
    love.graphics.setShader()

    challenges:draw()
    --waters:draw()
    soils:draw()
    drawShadows()
    drawNewShadows()

    walls:draw()
    effects:draw(-1) -- two layers of effects

    sm:draw() -- shaders handled in SpriteManager
    damages:draw()

    shaders:color({})
    drawLateLayers()
    hitboxes:draw()
    love.graphics.setShader()

    effects:draw(1)
    particles:draw()

    if gameMap.dark then
        love.graphics.setShader(shaders.multiTrueLight)
        if gameMap.darkType == "parallax" then
            parallax:draw(1)
        else
            love.graphics.setColor(0,0,0,1)
            love.graphics.rectangle("fill", -10, -10, 10000, 10000)
        end
        love.graphics.setShader()
    end

    drawPierceLayers()
    --tileStates:draw()
    simplax:draw(2)
    effects:draw(2) -- actually there's 3 layers of effects (for game over screen)
    sm:draw('topSprites')

end

function drawMapLayers()
    setWhite()

    if gameMap.layers["Background"] then
        gameMap:drawLayer(gameMap.layers["Background"])
    end

    if gameMap.layers["Simple"] then
        gameMap:drawLayer(gameMap.layers["Simple"])
    end

    if gameMap.layers["Base"] then
        gameMap:drawLayer(gameMap.layers["Base"])
    end

    if gameMap.layers["Floor"] then
        gameMap:drawLayer(gameMap.layers["Floor"])
    end

    if gameMap.layers["Environment"] then
        gameMap:drawLayer(gameMap.layers["Environment"])
    end

    if gameMap.layers["Terrain"] then
        gameMap:drawLayer(gameMap.layers["Terrain"])
    end

    if gameMap.layers["Elevation"] then
        gameMap:drawLayer(gameMap.layers["Elevation"])
    end

    if gameMap.fakeLayer then
        if gameMap.layers["Fake"] then
            gameMap:drawLayer(gameMap.layers["Fake"])
        end
    end
    
    if gameMap.layers["Platform"] then
        gameMap:drawLayer(gameMap.layers["Platform"])
    end
  
    if gameMap.layers["Objects"] then
        gameMap:drawLayer(gameMap.layers["Objects"])
    end

    if gameMap.layers["Objects2"] then
        gameMap:drawLayer(gameMap.layers["Objects2"])
    end

    if gameMap.layers["Test"] then
        --gameMap:drawLayer(gameMap.layers["Test"])
    end
end

function drawLateLayers()
    if gameMap.layers["Top"] then
        setWhite()
        gameMap:drawLayer(gameMap.layers["Top"])
    end
end

function drawMediumLayers()
    if gameMap.layers["Medium"] then
        setWhite()
        gameMap:drawLayer(gameMap.layers["Medium"])
    end
end

function drawPierceLayers()
    if gameMap.pierceVisible then
        if gameMap.layers["Pierce"] then
            setWhite()
            gameMap:drawLayer(gameMap.layers["Pierce"])
        end
    end
end

function drawAfterCamera()
    menu:draw()
    weather:drawFilter()
    if gamestate == 1 then drawHUD() end
    curtain:draw()
    cover:draw()
    pause:draw()
    newui:draw()

    if gamestate >= 1 and showMap then
        map:draw()
    end

    dialogue:draw()
    answer:draw()
    infoPanel:draw()
    speedrun:draw()
    cutscene:draw()
    debug:draw()
end