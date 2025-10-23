waters = {}

function spawnWater(x, y, width, height, wtype, args)
    local water = {}
    water.x = x
    water.y = y
    water.width = width
    water.height = height
    if wtype and wtype ~= "" then water.type = wtype --[[else water.type = "normal"]] end
    if not water.type then water.type = nil end

    if args and args.fake then
        water.fake = true
    end
    if args and args.offFake then
        water.offFake = true
    end

    local threshold = 4
    water.trueX = x + threshold
    water.trueY = y
    water.trueWidth = width - (threshold*2)
    water.trueHeight = height - (threshold*2)

    water.timer = 0.25
    water.maxTime = 1
    water.dead = false
    
    if water.trueWidth > 64 or water.trueHeight > 64 then
        water.maxTime = 0
    end

    function water:update(dt)
        if self.type and (self.type == "solid" or self.type == "climb") then return end

        --[[self.timer = self.timer - dt
        if self.timer < 0 then
            self.timer = self.maxTime + math.random()
            local ex = math.random(0, self.trueWidth)
            local ey = math.random(0, self.trueHeight)
            if self.type ~= "still" then
                -- REMOVING WAVE
                -- effects:spawn("wave", self.trueX + ex, self.trueY + ey)
            end
        end]]
    end

    table.insert(waters, water)
end

function waters:update(dt)
    for _,w in ipairs(waters) do
        w:update(dt)
    end

    local i = #waters
    while i > 0 do
        if waters[i].dead then
            table.remove(waters, i)
        end
        i = i - 1
    end
end

function waters:draw()
    for _,w in ipairs(waters) do
        love.graphics.rectangle("fill", w.trueX, w.trueY, w.trueWidth, w.trueHeight)
    end
end

function inWater(objX, objY, checkRad, class)
    -- Note checkRad should be smaller for larger objects
    for _,w in ipairs(waters) do
        if (not class and not w.type) or (class and w.type and w.type == class) then
            local circle = { x = objX, y = objY, r = checkRad}
            local rect = { x = w.trueX, y = w.trueY, width = w.trueWidth, height = w.trueHeight }
            if circleVsRect(circle, rect) then
                return true
            end
        end
    end
    return false
end

function splash(x, y)
    effects:spawn("ripple", x, y)
    particleEvent("splash", x, y)
    local range = math.random()/4
    dj.play(sounds.environment.splash, "static", "effect", nil, 0.9 + range)
end

function sink(x, y)
    if gameMap.isSky then
        effects:spawn("itemFall", x, y)
    else
        effects:spawn("sink", x, y)
        splash(x, y)
    end
end
