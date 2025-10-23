platforms = {}
platforms.debugCurrentX = -1
platforms.debugCurrentY = -1
platforms.debugPreviousX = -1
platforms.debugPreviousY = -1

function spawnPlatform(id, x, y, x2, y2, args)
    local platform = {}
    platform.id = id
    platform.uniqueId = math.random()
    platform.style = "cloud"
    platform.x = x
    platform.y = y
    platform.prevX = x
    platform.prevY = y
    platform.dead = false
    platform.tween = nil
    platform.args = args
    platform.needsCharge = false
    platform.checkTimer = (1/30)
    platform.turnDist = 3
    platform.decelSpeed = 400

    platform.xOff = 0
    platform.yOff = 0

    platform.x1 = x
    platform.y1 = y
    platform.x2 = x2
    platform.y2 = y2
    platform.totalPoints = 2

    if args then
        if args.x3 and args.y3 then
            platform.x3 = args.x3
            platform.y3 = args.y3
            platform.totalPoints = 3
        end
        if args.x4 and args.y4 then
            platform.x4 = args.x4
            platform.y4 = args.y4
            platform.totalPoints = 4
        end
        if args.dirVec then platform.totalPoints = 1 end

        if args.challenge then
            if not data.states.challenges[args.challenge] then
                return nil
            end
        end
    end

    -- -2 = crashed, 0 = toTwo, 1 = toOne
    platform.active = false
    platform.state = 0
    platform.maxSpeed = 60
    platform.speed = 0
    platform.turning = false

    if args then
        -- copy over all args properties
        for k,v in pairs(args) do
            platform[k] = v -- even though k is the index, I believe the index should be strings, so this should apply all properties
        end
    end

    platform.spr = sprites.environment.platforms.cloud
    if platform.style == "cloudCharge" then
        platform.spr = sprites.environment.platforms.cloudChargeOff
        platform.needsCharge = true
        platform.y = platform.y + 3
        platform.crashY = platform.crashY + 3
    end

    if args then
        if args.relative then
            platform.x2 = platform.x1 + platform.x2
            platform.y2 = platform.y1 + platform.y2
            if platform.x3 and platform.y3 then
                platform.x3 = platform.x1 + platform.x3
                platform.y3 = platform.y1 + platform.y3
            end
            if platform.x4 and platform.y4 then
                platform.x4 = platform.x1 + platform.x4
                platform.y4 = platform.y1 + platform.y4
            end
        end
    end

    platform.dir = getFromToVector(platform.x, platform.y, platform.x2, platform.y2)

    platform.width = platform.spr:getWidth()
    platform.height = platform.spr:getHeight()

    platform.trueX = platform.x - platform.width/2
    platform.trueY = platform.y - platform.height/2

    function platform:crash(doImpact)
        data.states.misc[self.id] = true
        self.state = -2
        self.x = self.crashX
        self.y = self.crashY
        self.maxSpeed = 0
        self.speed = 0
        self.crashed = true

        if doImpact then
            sem:playSound(sounds.effects.crash)
            shake:standard(3)
            player.state = 0
        end
    end

    if platform.crashX and platform.crashY and data.states.misc[platform.id] then
        platform:crash(false)
    end

    function platform:update(dt)
        self.checkTimer = self.checkTimer - dt
        if self.checkTimer < 0 then
            local destX = self.x1
            local destY = self.y1
            if self.totalPoints == 2 then
                if self.state == 0 then
                    destX = self.x2
                    destY = self.y2
                end
            elseif self.totalPoints == 3 then
                if self.state == 0 then
                    destX = self.x2
                    destY = self.y2
                elseif self.state == 1 then
                    destX = self.x3
                    destY = self.y3
                end
            elseif self.totalPoints == 4 then
                if self.state == 0 then
                    destX = self.x2
                    destY = self.y2
                elseif self.state == 1 then
                    destX = self.x3
                    destY = self.y3
                elseif self.state == 2 then
                    destX = self.x4
                    destY = self.y4
                end
            end

            if self.totalPoints == 1 then

                -- check for crash
                if self.crashX and self.crashY then
                    if self.x2 == 0 and self.y2 == -1 then
                        if self.y < self.crashY then self:crash(true) end
                    end
                    if self.x2 == 1 and self.y2 == 0 then
                        if self.x > self.crashX then self:crash(true) end
                    end
                    if self.x2 == 0 and self.y2 == 1 then
                        if self.y > self.crashY then self:crash(true) end
                    end
                    if self.x2 == -1 and self.y2 == 0 then
                        if self.x < self.crashX then self:crash(true) end
                    end
                end

            else
                if distanceBetween(self.x, self.y, destX, destY) < self.turnDist then
                    self.turning = true
                    self.state = self.state + 1
                end
                if self.state > (self.totalPoints - 1) then
                    self.state = 0
                end
            end
            self.checkTimer = (1/30)
        end

        if self.needsCharge then
            if not self.crashed then
                local elecPanelDist = 7
                local distToPlayer = distanceBetween(self.x, self.y-6, player:getX(), player:getY())
                local wep = nil
                if player.hasWeapon then wep = weapons[weapons:getIndex(player.weaponUniqueId)] end
                if distToPlayer < elecPanelDist and wep and wep.electrified then
                    self.active = true
                    player:cutscene(player.lastMoveDir)
                end
            end
        else
            self.active = true
        end

        if self.style == "cloudCharge" then
            if self.crashed then
                self.spr = sprites.environment.platforms.cloudChargeCrashed
            else
                if self.active and self.spr == sprites.environment.platforms.cloudChargeOff then
                    dj.play(sounds.effects.plugCharge, "static", "effect")
                    self.spr = sprites.environment.platforms.cloudChargeOn
                elseif self.active == false and self.spr == sprites.environment.platforms.cloudChargeOn then
                    dj.play(sounds.effects.plugUncharge, "static", "effect")
                    self.spr = sprites.environment.platforms.cloudChargeOff
                end
            end
        end

        if self.turning or self.active == false then
            self.speed = self.speed - self.decelSpeed * dt
            if self.speed < 0 then
                self.speed = 0
                self.turning = false
            end
        end

        if self.active and self.turning == false then
            if self.speed < self.maxSpeed then
                self.speed = self.speed + 100 * dt
            end
        end

        if self.turning and self.totalPoints > 2 then
            self.speed = self.maxSpeed
            self.turning = false
        end

        if self.totalPoints == 1 then
            self.dir = vector(self.x2, self.y2):normalized()
        elseif self.totalPoints == 2 then
            if self.state == 0 and self.turning == false then
                self.dir = getFromToVector(self.x, self.y, self.x2, self.y2)
            elseif self.state == 1 and self.turning == false then
                self.dir = getFromToVector(self.x, self.y, self.x1, self.y1)
            end
        elseif self.totalPoints == 3 then
            if self.state == 0 and self.turning == false then
                self.dir = getFromToVector(self.x, self.y, self.x2, self.y2)
            elseif self.state == 1 and self.turning == false then
                self.dir = getFromToVector(self.x, self.y, self.x3, self.y3)
            elseif self.state == 2 and self.turning == false then
                self.dir = getFromToVector(self.x, self.y, self.x1, self.y1)
            end
        elseif self.totalPoints == 4 then
            if self.state == 0 and self.turning == false then
                self.dir = getFromToVector(self.x, self.y, self.x2, self.y2)
            elseif self.state == 1 and self.turning == false then
                self.dir = getFromToVector(self.x, self.y, self.x3, self.y3)
            elseif self.state == 2 and self.turning == false then
                self.dir = getFromToVector(self.x, self.y, self.x4, self.y4)
            elseif self.state == 3 and self.turning == false then
                self.dir = getFromToVector(self.x, self.y, self.x1, self.y1)
            end
        end

        self.x = self.x + self.dir.x * self.speed * dt
        self.y = self.y + self.dir.y * self.speed * dt

        if self.anim then self.anim:update(dt) end
        platform.trueX = platform.x - platform.width/2
        platform.trueY = platform.y - platform.height/2

        local dx = self.x - self.prevX
        local dy = self.y - self.prevY

        if player.platformId == self.uniqueId then
            player:setPosition(player:getX() + dx, player:getY() + dy)

            platforms.debugCurrentX = self.x
            platforms.debugCurrentY = self.y
            platforms.debugPreviousX = self.prevX
            platforms.debugPreviousY = self.prevY
        end

        self.prevX = self.x
        self.prevY = self.y
    end

    function platform:draw()
        setWhite()
        if self.anim then
            self.anim:draw(self.spr, self.x + self.xOff, self.y + self.yOff, nil, nil, nil, self.width/2, self.height)
        else
            love.graphics.draw(self.spr, self.x, self.y, nil, nil, nil, self.spr:getWidth()/2, self.spr:getHeight()/2)
        end
    end

    table.insert(platforms, platform)
end

function platforms:update(dt)
    for _,s in ipairs(platforms) do
        s:update(dt)
    end

    local i = #platforms
    while i > 0 do
        if platforms[i].dead then
            table.remove(platforms, i)
        end
        i = i - 1
    end
end

function getPlatform(objX, objY, checkRad, solid)
    -- Note checkRad should be smaller for larger objects
    for _,w in ipairs(platforms) do
        if (solid and w.type == "solid") or (solid ~= true and w.type ~= "solid") then
            local circle = { x = objX, y = objY, r = checkRad}
            local rect = { x = w.trueX, y = w.trueY, width = w.width, height = w.height }
            if circleVsRect(circle, rect) then
                return w.uniqueId
            end
        end
    end
    return 0
end

function platforms:resetForChallenge(cid)
    for _,p in ipairs(platforms) do
        if p.challenge == cid then
            p.dead = true
        end
    end
    if gameMap.layers["Platforms"] then
        for i, obj in ipairs(gameMap.layers["Platforms"].objects) do
            if obj.properties and obj.properties.challenge and obj.properties.challenge == cid then
                spawnPlatform(obj.name, obj.x, obj.y, obj.properties.x2, obj.properties.y2, obj.properties)
            end
        end
    end
end
