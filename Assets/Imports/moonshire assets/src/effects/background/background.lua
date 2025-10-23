background = {}
background.state = 0
background.alpha = 1
background.spoofRateX = 0
background.spoofCamX = 0
background.spoofRateY = 0
background.spoofCamY = 0

function background:set(id)
    activeShader = nil
    cam.fixedX = -1 -- -1 is free, 1 is fixed?
    cam.fixedY = -1
    background:reset()
    background.id = id

    if id == "skyTitle" then
        parallax:createLayer(id, 1, 12)
        parallax:createLayer(id, 2, 9)
        parallax:createLayer(id, 3, 7.5)
        parallax:createLayer(id, 4, 6)
        parallax:createLayer(id, 5, 4.5)
        parallax:createLayer(id, 6, 999999999, nil, nil, {drawSides=false})
        parallax:createLayer(id, 7, 999999999, nil, nil, {drawSides=false})
        parallax:createLayer(id, 8, 999999999, nil, nil, {drawSides=false, anim={width=480, height=234, speed=0.09, frameCount=6}})
        parallax:createLayer(id, 9, 999999999, nil, nil, {drawSides=false})
        parallax:createLayer(id, 10, 3)
        background.spoofRateX = 40
        background.spoofRateY = 0
        --love.graphics.setBackgroundColor(202/255, 229/255, 230/255)
    end

    if id == "cloudDungeon" then
        parallax:createLayer(id, 1, 6, 1.35)
        parallax:createLayer(id, 2, 3, 1.35)
        background.spoofRateX = 22
        background.spoofRateY = -8
        love.graphics.setBackgroundColor(161/255, 174/255, 190/255)

        gameMap.shader = 'saturation'
        gameMap.shaderVal = 0.85
    end

    if id == "cloudBoss1" then
        parallax:createLayer(id, 1, 4, 1.15)
        parallax:createLayer(id, 2, 2, 1.15)
        background.spoofRateX = 8
        background.spoofRateY = -3
        love.graphics.setBackgroundColor(161/500, 174/500, 190/500)

        gameMap.shader = 'mixer'
        gameMap.shaderVal = 1
    end

    if id == "cloudBoss2" then
        parallax:createLayer(id, 1, 6, 1.35)
        parallax:createLayer(id, 2, 3, 1.35)
        background.spoofRateX = -136
        background.spoofRateY = -50
        love.graphics.setBackgroundColor(161/255, 174/255, 190/255)
    end

    if id == "eyeris" then
        parallax:createLayer(id, 1, 4, 1)
        parallax:createLayer(id, 2, 3, 1.05)
        parallax:createLayer(id, 2, 2, 1.1)
        background.spoofRateX = -182
        background.spoofRateY = -10
        love.graphics.setBackgroundColor(0, 0, 0)
    end

    if id == "void" then
        cam.fixedY = 1
        parallax:createLayer(id, 1, 8)
        background.spoofRateX = 60
        background.state = 1 -- in FRONT of everything
        background:fadeIn(1)
    end

    if id == "fog" then
        parallax:createLayer(id, 1, 0.99, 1.2, 0.25)
        background.spoofRateX = -6
        background.spoofRateY = 3
        background.state = 1 -- in FRONT of everything
        -- background:fadeIn(1)
    end

    if id == "fog2" then
        parallax:createLayer(id, 1, 0.99, 1.2, 0.25)
        background.spoofRateX = -6
        background.spoofRateY = 3
        background.state = 1 -- in FRONT of everything
        -- background:fadeIn(1)
    end

    if id == "fog3" then
        parallax:createLayer(id, 1, 0.99, 1.2, 0.25)
        background.spoofRateX = -6
        background.spoofRateY = 3
        background.state = 1 -- in FRONT of everything
        -- background:fadeIn(1)
    end

end

function background:update(dt)
    if self.spoofRateX ~= 0 then
        self.spoofCamX = self.spoofCamX + self.spoofRateX * dt
    end
    if self.spoofRateY ~= 0 then
        self.spoofCamY = self.spoofCamY + self.spoofRateY * dt
    end
end

function background:fadeIn(time)
    background.alpha = 0
    flux.to(background, time, {alpha = 1}):ease("sineinout"):oncomplete(function()
        startMusic(bgm.gameOver, false)
        effects:spawn("text", cam.x, cam.y - 8, {text="GAME OVER", time=1, gameover=true})
        gamestate = 3
    end)
end

function background:reset()
    parallax:clear()
    background.id = nil
    background.state = 0
    background.alpha = 1
    background.spoofCamX = 0
    background.spoofRateX = 0
    background.spoofCamY = 0
    background.spoofRateY = 0
end

function background:draw()
    if self.id and (self.id == "cloudDungeon" or self.id:startswith("cloudBoss")) then
        setWhite()
        local spr = sprites.bg.cloudDungeon.island
        if self.id == "cloudBoss1" then spr = sprites.bg.cloudDungeon.island4 end
        if self.id == "cloudBoss2" then spr = sprites.bg.cloudDungeon.island5 end
        love.graphics.draw(spr, windowWidth/2, windowHeight/2, nil, scale/2, nil, spr:getWidth()/2, spr:getHeight()/2)
    end
end
