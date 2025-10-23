weather = {}

function weather:init()
    weather.current = "none"
    weather.timer = -1
    weather.interval = 1
    weather.filter = nil
    weather.ambience = "none"
end

function weather:update(dt)
    self.filter = nil
    if self.current == "none" then return end

    if self.current == "cloudy" then
        weather.interval = 0.6
    elseif self.current == "rain" then
        weather.interval = 0.05
        weather.filter = "overcast"
    elseif self.current == "snow" then
        weather.interval = 0.05
        weather.filter = "snow"
    elseif self.current == "petals" then
        weather.interval = 0.1
    end

    if self.timer > 0 then
        self.timer = self.timer - dt
    end
    if self.timer < 0 then
        weather:proc()
        self.timer = 0.5 + self.interval * math.random()
    end
end

function weather:proc()
    if self.current == "none" then return end

    local wx = math.random(0, gameMap.width*16)
    local wy = math.random(0, gameMap.height*16)

    if self.current == "cloudy" then
        effects:spawn("cloudShadow", wx, wy)
    end

    if self.current == "rain" then
        for i=1,62 do
            wx = math.random(0, gameMap.width*16)
            wy = math.random(0, gameMap.height*16)
            effects:spawn("rain", wx, wy)
        end
    end

    if self.current == "snow" then
        for i=1,22 do
            wx = math.random(0, gameMap.width*16)
            wy = math.random(0, gameMap.height*16)
            effects:spawn("snow", wx, wy)
        end
    end

    if self.current == "petals" or self.current == "petalsLeaf" then
        for i=1,4 do
            wx = math.random(0, gameMap.width*16)
            wy = math.random(0, gameMap.height*16)
            effects:spawn("petal", wx, wy)
        end
    end

    if self.current == "leaf" or self.current == "petalsLeaf" then
        for i=1,4 do
            wx = math.random(0, gameMap.width*16)
            wy = math.random(0, gameMap.height*16)
            effects:spawn("leaf", wx, wy)
        end
    end
end

function weather:set(newWeather)
    weather.timer = -1
    weather.windDir = vector(1, 0):rotated(math.random() * math.pi/-3):normalized()
    if newWeather then weather.current = newWeather end
end

function weather:drawFilter()
    if weather.filter == "overcast" then
        love.graphics.setColor(0.3, 0.3, 0.3, 0.25)
        love.graphics.rectangle("fill", -10, -10, windowWidth + 20, windowHeight + 20)
    elseif weather.filter == "snow" then
        love.graphics.setColor(0.655, 0.797, 0.879, 0.15)
        love.graphics.rectangle("fill", -10, -10, windowWidth + 20, windowHeight + 20)
    end
    setWhite()
end

function weather:setAmbience(ambStr)
    if not ambStr or ambStr == "none" then
        weather.ambience = "none"
    elseif weather.ambience ~= ambStr then
        dj.stop("ambience", false)
        weather.ambience = ambStr
        settings.ambienceVolume = settings.ambienceMaxVolume
        dj.playLoopingSeamless(sounds.ambience[ambStr], "static", "ambience")
    end

    if weather.ambience == "none" then
        dj.fadeAmbience()
    end
end
