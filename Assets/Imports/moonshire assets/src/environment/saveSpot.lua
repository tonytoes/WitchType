saveSpots = {}

function spawnSaveSpot(id, x, y)
    y = y - 2
    local saveSpot = {}
    saveSpot.id = id
    saveSpot.x = x
    saveSpot.y = y
    saveSpot.spr = sprites.environment.sunflower

    -- 0: searching
    -- 1: waiting
    saveSpot.state = 1

    saveSpot.savedAnimState = 0
    saveSpot.savedAnimTimer = 0
    saveSpot.savedAnimAlpha = 0
    saveSpot.savedAnimY = 0
    saveSpot.colorImmune = true

    function startMessage()
        saveSpot.savedAnimState = 0
        saveSpot.savedAnimTimer = 1
        saveSpot.savedAnimAlpha = 0
        saveSpot.savedAnimY = 0
        flux.to(saveSpot, 0.35, {savedAnimAlpha = 1, savedAnimY = -40}):ease("quadout")
    end

    function saveSpot:update(dt)
        if self.savedAnimTimer > 0 then
            self.savedAnimTimer = self.savedAnimTimer - dt
        end
        if self.savedAnimTimer < 0 then
            self.savedAnimTimer = 0
            flux.to(saveSpot, 0.25, {savedAnimAlpha = 0, savedAnimY = -52}):ease("quadin")
        end

        if self.state == 0 then
            if distanceBetween(player:getX(), player:getY(), self.x, self.y) < 24 then
                self.state = 1
                jewelry:resetStats()
                player.health = player.maxHealth
                saveGame()
                spawnBlast(self.x, self.y, 48, nil, 0.4)
                startMessage()
                weapons:restoreAll() -- restore durability of everything
                dj.play(sounds.misc.save, "static", "effect")
            end
        elseif self.state == 1 then
            if distanceBetween(player:getX(), player:getY(), self.x, self.y) > 32 then
                self.state = 0
            end
        end
    end

    function saveSpot:draw()
        setWhite()
        love.graphics.draw(self.spr, self.x, self.y, nil, nil, nil, self.spr:getWidth()/2, self.spr:getHeight()*0.8)
        love.graphics.setColor(1,1,1,self.savedAnimAlpha)
        love.graphics.setFont(fonts.savedMessage)
        love.graphics.printf("GAME SAVED", self.x-100, self.y+self.savedAnimY, 200, "center")
        setWhite()
    end

    table.insert(saveSpots, saveSpot)

end

function saveSpots:update(dt)
    for _,s in ipairs(saveSpots) do
        s:update(dt)
    end
end
