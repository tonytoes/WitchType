-- This table stores a list of parallax layers, each with their own update and position
parallax = {}

function parallax:createLayer(id, index, spd, layerScl, layerAlpha, args)

    -- Stores all data about the layer
    local layer = {}
    layer.x = 0
    layer.y = 0
    layer.img = sprites.bg[id][index]
    layer.alpha = 1
    layer.drawSides = true -- draw duplicates on left and right
    if layerAlpha then layer.alpha = layerAlpha end

    layer.scale = 1
    if layerScl then layer.scale = layerScl end
    layer.baseWidth = layer.img:getWidth()
    layer.width = layer.baseWidth * layer.scale
    layer.baseHeight = layer.img:getHeight()
    layer.height = layer.baseHeight * layer.scale

    -- Relative position of the layer compared to the camera
    layer.relX = 0
    layer.relY = 0

    -- Automatic background movement
    layer.spoofX = 0
    layer.spoofY = 0

    -- Stores the position of the camera in the previous frame
    layer.oldCamX = 0
    layer.oldCamY = 0

    -- Used to help with tracking the change in layer position
    layer.diffBufferX = 0
    layer.diffBufferY = 0

    -- Number of pixels the camera has to move before the layer moves
    layer.speed = spd or 2.5

    if args and args.front then layer.front = true end
    if args and args.drawSides ~= nil then layer.drawSides = args.drawSides end

    if args and args.anim then
        layer.baseWidth = args.anim.width
        layer.width = layer.baseWidth * layer.scale
        layer.baseHeight = args.anim.height
        layer.height = layer.baseHeight * layer.scale
        layer.grid = anim8.newGrid(args.anim.width, args.anim.height, layer.img:getWidth(), layer.img:getHeight())
        layer.anim = anim8.newAnimation(layer.grid('1-' .. args.anim.frameCount, 1), args.anim.speed)
    end

    -- calculate parallax positioning
    function layer:update(dt)

        local camX, camY = cam:position()

        if background.spoofRateX ~= 0 then
            layer.spoofX = layer.spoofX + background.spoofRateX * dt
        end
        if background.spoofRateY ~= 0 then
            layer.spoofY = layer.spoofY + background.spoofRateY * dt
        end

        if layer.anim then layer.anim:update(dt) end

        -- IMPORTANT, set layer.x and layer.y before spoofing camX camY
        -- Layer position always at (0, 0) relative to camera position
        layer.x = camX - (layer.width/2)
        layer.y = camY - (self.baseHeight/2 * self.scale) -- half of level height

        camX = camX + layer.spoofX
        camY = camY + layer.spoofY
        local diffX = camX - layer.oldCamX
        local diffY = camY - layer.oldCamY
    
        if cam.fixedX == -1 then
            layer.relX = layer.relX - (diffX / layer.speed)
        end

        if cam.fixedY == -1 then
            layer.relY = layer.relY - (diffY / layer.speed)
        end
    
        if layer.relX < -1 * layer.baseWidth then
            layer.relX = layer.relX + layer.baseWidth
        end
    
        if layer.relX > layer.baseWidth then
            layer.relX = layer.relX - layer.baseWidth
        end

        if layer.relY < -1 * layer.baseHeight then
            layer.relY = layer.relY + layer.height
        end
    
        if layer.relY > layer.baseHeight then
            layer.relY = layer.relY - layer.height
        end
    
        layer.oldCamX = camX
        layer.oldCamY = camY
    
    end
    
    function layer:reset()
    
        layer.relX = 0
        layer.relY = 0
        layer.diffBufferX = 0
        layer.diffBufferY = 0
    
        local camX, camY = cam:position()
        --layer.x = camX - 1920
        --layer.y = camY - 1536
    
        layer.oldCamX = camX
        layer.oldCamY = camY
    
    end
    
    function layer:draw()
        local alph = self.alpha * background.alpha
        love.graphics.setColor(1, 1, 1, alph)
    
        if self.anim then
            local imgW = self.baseWidth * self.scale
            local imgH = self.baseHeight * self.scale
        
            for i=-1, 1 do
                self.anim:draw(self.img, layer.x + (layer.relX * self.scale) + (0 * imgW), layer.y + layer.relY + (i * imgH), nil, self.scale)
                if self.drawSides then self.anim:draw(self.img, layer.x + (layer.relX * self.scale) + (1 * imgW), layer.y + layer.relY + (i * imgH), nil, self.scale) end
                if self.drawSides then self.anim:draw(self.img, layer.x + (layer.relX * self.scale) + (-1 * imgW), layer.y + layer.relY + (i * imgH), nil, self.scale) end
            end
        else
            local imgW = self.img:getWidth() * self.scale
            local imgH = self.img:getHeight() * self.scale
        
            for i=-1, 1 do
                love.graphics.draw(self.img, layer.x + (layer.relX * self.scale) + (0 * imgW), layer.y + layer.relY + (i * imgH), nil, self.scale)
                if self.drawSides then love.graphics.draw(self.img, layer.x + (layer.relX * self.scale) + (1 * imgW), layer.y + layer.relY + (i * imgH), nil, self.scale) end
                if self.drawSides then love.graphics.draw(self.img, layer.x + (layer.relX * self.scale) + (-1 * imgW), layer.y + layer.relY + (i * imgH), nil, self.scale) end
            end
        end        
    end

    table.insert(parallax, layer)
end

function parallax:update(dt)
    for i,l in ipairs(self) do
        l:update(dt)
    end
end

function parallax:draw(sid)
    if sid and sid ~= background.state then return end
    for i,l in ipairs(self) do
        l:draw()
    end
end

function parallax:clear()
    local i = #parallax
    while i > 0 do
        table.remove(parallax, i)
        i = i - 1
    end
end