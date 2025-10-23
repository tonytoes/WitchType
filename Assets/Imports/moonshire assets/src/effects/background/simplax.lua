-- This table stores a list of simplax layers, each with their own update and position
simplax = {}

function simplax:createLayer(id)

    -- Stores all data about the layer
    local layer = {}
    layer.x = 0
    layer.y = -1
    layer.img = sprites.background
    layer.alpha = 1
    layer.scale = 1
    layer.baseWidth = 480
    layer.width = layer.baseWidth * layer.scale
    layer.baseHeight = 135
    layer.height = layer.baseHeight * layer.scale
    layer.sid = 1 -- how far forward it is

    -- Automatic background movement
    layer.spoofRateX = 0
    layer.spoofRateY = 0
    layer.spoofX = 0
    layer.spoofY = 0

    local camX, camY = cam:position()
    layer.x = camX - (layer.width/2)
    layer.y = camY - (68 * layer.scale)

    if id and id == "gameOver" then
        layer.sid = 2 -- very far forward
        layer.spoofRateX = 15
        layer.img = sprites.bg.void[1]
        layer.alpha = 0
        flux.to(layer, 1, {alpha = 1}):ease("sineinout"):oncomplete(function()
            startMusic(bgm.gameOver, false)
            effects:spawn("text", cam.x, cam.y - 8, {text="GAME OVER", time=1, gameover=true})
            gamestate = 3
        end)
    end

    -- calculate simplax positioning
    function layer:update(dt)
        local camX, camY = cam:position()
        layer.x = camX - (layer.width/2)
        layer.y = camY - (68 * self.scale)
        layer.spoofX = layer.spoofX + layer.spoofRateX * dt
        layer.spoofY = layer.spoofY + layer.spoofRateY * dt
        
        if layer.spoofX > layer.width*1 then
            layer.spoofX = layer.spoofX - layer.width
        end
        if layer.spoofX < layer.width * -1 then
            layer.spoofX = layer.spoofX + layer.width
        end

        if self.id == "gameOver" then
            if gamestate >= 3 and gamestate < 4 then
                hud.alpha = self.alpha
            end
        end
    end
    
    function layer:reset()
        local camX, camY = cam:position()
        layer.x = camX - (layer.width/2)
        layer.y = camY - (68 * self.scale)
    end
    
    function layer:draw()
        local alph = self.alpha
        if self.id == "gameOver" then alph = self.alpha end
        love.graphics.setColor(1, 1, 1, alph)
    
        local imgW = self.img:getWidth() * self.scale
        local imgH = self.img:getHeight() * self.scale
    
        for i=-1, 1 do
            love.graphics.draw(self.img, layer.x + layer.spoofX + (0 * imgW), layer.y + (i * imgH), nil, self.scale)
            love.graphics.draw(self.img, layer.x + layer.spoofX + (1 * imgW), layer.y + (i * imgH), nil, self.scale)
            love.graphics.draw(self.img, layer.x + layer.spoofX + (-1 * imgW), layer.y + (i * imgH), nil, self.scale)
        end
        
    end

    table.insert(simplax, layer)
end

function simplax:update(dt)
    for i,l in ipairs(self) do
        l:update(dt)
    end
end

function simplax:draw(sid)
    for i,l in ipairs(self) do
        if sid and sid == l.sid then
            l:draw()
        end
    end
end

function simplax:clear()
    local i = #simplax
    while i > 0 do
        table.remove(simplax, i)
        i = i - 1
    end
end

function simplax:fadeAll()
    for i,l in ipairs(self) do
        flux.to(l, 1, {alpha = 0}):ease("sineinout"):oncomplete(function()
            simplax:clear()
        end)
    end
end
