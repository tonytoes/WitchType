lightSources = {}
lightSources.fullFlashVal = 0

function newSpawnLightSource(x, y, rad, args, name)
    local id = ""
    local flareInt = 2
    local parent = nil
    
    if args then 
        if args.id then id = args.id end
        if args.flareInt then flareInt = args.flareInt end
        if args.parent then parent = args.parent end
    end
    
    if name then
        if name == "entrance" then
            id = "entrance"
            rad = 54
            flareInt = 0
        end
    end

    spawnLightSource(x, y, rad, id, flareInt, parent, args)
end

function spawnLightSource(x, y, rad, id, flareInt, parent, args)
    local light = {}
    light.id = id
    light.x = x
    light.y = y
    light.rad = rad
    light.baseRad = rad
    light.flareDir = 1
    light.flareVal = 0
    light.flareInt = 1
    if rad < 30 then light.flareInt = 0.35 end
    if flareInt ~= nil then light.flareInt = flareInt end
    light.dead = false
    if parent then light.parent = parent end
    if args and args.tempTime then light.tempTime = args.tempTime end
    light.color = {0.2, 0.06, 0.02, 1} -- default color is fire red

    if args and args.color then
        if args.color == "green" then
            light.color = {0.05, 0.22, 0.05, 1}
        else
            light.color = args.color
        end
    end

    function light:flareDown()
        self.tween = flux.to(self, 0.1+math.random()/4, {flareVal = 0}):ease("sineinout"):oncomplete(function() self:flareUp() end)
    end

    function light:flareUp()
        local maxFlare = light.flareInt
        if not maxFlare then return end
        self.tween = flux.to(self, 0.1+math.random()/4, {flareVal = maxFlare}):ease("sineinout"):oncomplete(function() self:flareDown() end)
    end

    function light:tempFlash()
        local destRad = self.rad
        self.rad = 0
        local tmp = 0.3
        if self.tempTime then tmp = self.tempTime end

        self.tween = flux.to(self, 0.12, {rad = destRad}):ease("quadout"):oncomplete(function() 
            self.tween = flux.to(self, tmp, {rad = 0}):ease("sinein"):oncomplete(function() self.dead = true end)
        end)
    end

    if light.id == "tempFlash" then
        light:tempFlash()
    elseif light.flareInt > 0 then
        light:flareUp()
    end

    function light:update(dt)
        local hideLight = false

        if self.parent then
            self.x = self.parent.x
            self.y = self.parent.y

            if self.parent.dead then self.dead = true end
        end
        
        if self.id == "player" then
            self.x = player:getX()
            self.y = player:getY()-2
        end

        if self.id:startswith("arrow") then
            local foundone = false
            for _,s in ipairs(arrows) do
                if s.uniqueId == self.id then
                    self.x = s.x
                    self.y = s.y
                    foundone = true
                end
            end
            if foundone == false then self.dead = true end
        end

        if self.id:startswith("enemy") then
            local foundone = false
            for _,s in ipairs(enemies) do
                if s.uniqueId == self.id and s.physics then
                    self.x = s.physics:getX()
                    self.y = s.physics:getY()
                    foundone = true

                    if s.killLight then
                        self.dead = true
                        s.killLight = false
                    end
                end
            end
            if foundone == false then self.dead = true end
        end

        if self.id:startswith("weapon_") then
            local foundone = false
            -- set uid to the current id, but only the stuff after 'weapon_'
            local uid = self.id:sub(8)
            for _,s in ipairs(weapons) do
                if s.uniqueId == uid then
                    self.x = s.x
                    self.y = s.y
                    foundone = true

                    if s.state == 1 then
                        --if not s.visible then -- player is in an animation where you can't see the weapon
                            -- ALWAYS set light source to player position if weapon is held
                            self.x = player:getX()
                            self.y = player:getY()
                        --end
                    end

                    if s.useDur and s.dur <= 0 then hideLight = true end
                end
            end
            if foundone == false then self.dead = true end
        end

        if self.id:startswith("proj") then
            local prj = projectiles:findByUniqueId(self.id)
            if prj and not prj.dead then 
                self.x = prj.x
                self.y = prj.y
            else
                self.dead = true
            end
        end

        if hideLight or (self.id == "player" and gameMap.dark < 50) then -- don't show the player's lightsource at all in daylight
            self.rad = 0
        else
            self.rad = self.baseRad + (self.flareVal)
        end
    end

    table.insert(lightSources, light)
end

function lightSources:fullFlash(tmpFlashVal, time) -- 0-100, 0 is fully visible, 100 is fully dark. so 50 would be a half flash
    if gameMap.dark then
        local tm = 0.75 if time then tm = time end
        self.flashing = true
        local sd = self.savedDark
        local tfv = 50 if tmpFlashVal then tfv = tmpFlashVal end
        if tfv > self.savedDark then tfv = (tfv * (self.savedDark/100)) end
        gameMap.dark = tfv
        self.tween = flux.to(gameMap, tm, {dark = sd}):ease("quadin")
    end
end

function lightSources:update(dt)
    for _,s in ipairs(lightSources) do
        s:update(dt)
    end

    local i = #lightSources
    while i > 0 do
        if lightSources[i].dead then
            table.remove(lightSources, i)
        end
        i = i - 1
    end
end

function lightSources:deleteById(id)
    local i = #lightSources
    while i > 0 do
        if lightSources[i].id == id then
            table.remove(lightSources, i)
        end
        i = i - 1
    end
end

function lightSources:adjustRadId(id, newRad)
    local i = #lightSources
    while i > 0 do
        if lightSources[i].id == id then
            lightSources[i].baseRad = newRad
        end
        i = i - 1
    end
end

function lightSources:adjustPlayerLight()
    local playerLightRad = 18
    if gameMap.dark < 50 then
        playerLightRad = 0 -- by default, no light for the player
    end

    -- note: want to disable the lantern if it's not dark enough
    if allItems and allItems["lantern"] then playerLightRad = 52 end
    lightSources:adjustRadId("player", playerLightRad)
end
