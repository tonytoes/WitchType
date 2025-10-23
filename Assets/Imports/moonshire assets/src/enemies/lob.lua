lobs = {}

function spawnLob(id, x, y, dir, args)

    local lob = world:newBSGRectangleCollider(-100, -100, 4, 4, 1)
    lob:setCollisionClass("AirItem")
    lob.id = id
    lob.dir = dir
    lob.state = 0 -- 0 is rising, 1 is falling
    lob.totalTime = 0.65
    lob.effectTimer = 0 -- also known as, any effect (like sparks)
    lob.effectInterval = 0
    lob.dead = false
    lob.rot = 0
    lob.rotDir = 1
    lob.rotRate = 0
    lob.speed = 52
    lob.visible = true
    lob.shadowSpr = "roundS"
    lob.shadowScale = 1
    lob.scale = 1
    lob.height = 24
    lob.spareEnemies = false
    if lob.id:find("enemy") then lob.spareEnemies = true end

    -- copy over all args properties
    if args then
        for k,v in pairs(args) do
            lob[k] = v -- even though k is the index, I believe the index should be strings, so this should apply all properties
        end
    end

    if lob.shotgun and not lob.shell then
        local angle = math.pi/4
        if lob.shotgunAngle then angle = lob.shotgunAngle end
        local newDir = dir

        local newArgs = copy(args)
        newArgs.shell = true -- this id's the projectile as a duplicate of the main projectile
        newDir = dir:rotated(angle)
        spawnLob(id, x, y, newDir, newArgs)

        local newArgs2 = copy(args)
        newArgs2.shell = true
        newDir = dir:rotated(angle*-1)
        spawnLob(id, x, y, newDir, newArgs2)
    
        if lob.shotgun > 3 then -- assume 5
            local newArgs3 = copy(args)
            newArgs3.shell = true
            newDir = dir:rotated(angle/2)
            spawnLob(id, x, y, newDir, newArgs3)

            local newArgs4 = copy(args)
            newArgs4.shell = true
            newDir = dir:rotated(angle/-2)
            spawnLob(id, x, y, newDir, newArgs4)
        end
    end

    local dist = 0
    local riseTime = 0.2
    local fallTime = 0.4
    local destHeight = 24
    local lobX = x
    local lobY = y + 0.5 -- so it appears in front?
    local startHeightFactor = 0.65

    if id == "playerFanElecBomb" or id == "playerFanElecBomb2" or id == "enemyFanElecBomb" then
        lob.scale = 0.85
        lob.dir = dir
        lob.sprite = sprites.effects2.attacks.elecDisc
        lob.width = 16 -- sprite dimensions
        lob.height = 16
        lob.speed = 60
        lob.landClass = "elecBomb"
        lob.effectInterval = 0.1

        destHeight = 24

        if id == "playerFanElecBomb2" then
            lob.scale = 1
            lob.height = 20
            destHeight = 30
            startHeightFactor = 0.65
            lob.speed = 70
        end

        if id == "enemyFanElecBomb" then
            lob.scale = 1.1
            lob.landClass = "elecBombBig"
            destHeight = 68
            startHeightFactor = 0.75
            riseTime = 0.24
            fallTime = 0.53

            if not lob.shell then spawnBlast(lobX, lobY - (destHeight*startHeightFactor), 44, nil, 0.22) end

            local distToPlayer = distanceBetween(lobX, lobY, player:getX(), player:getY())
            if distToPlayer < 32 then
                lob.speed = 15
            elseif distToPlayer < 48 then
                lob.speed = 30
            elseif distToPlayer < 64 then
                lob.speed = 80
            else
                lob.speed = 110
            end
        end

        lob.grid = anim8.newGrid(16, 16, lob.sprite:getWidth(), lob.sprite:getHeight())
        lob.anim = anim8.newAnimation(lob.grid('1-6', 1), 0.05)
    end

    if id == "smokeBomb" then
        lob.scale = 0.85
        lob.dir = dir
        lob.sprite = sprites.blank
        lob.width = 8 -- sprite dimensions
        lob.height = 8
        lob.speed = 60
        lob.landClass = "elecBomb"
        lob.effectInterval = 0.015
        lob.effectClass = "smallTinyPoisonSmoke"
        lob.effectOffset = 2

        startHeightFactor = 0.38
        destHeight = 42
        riseTime = 0.38
        fallTime = 0.54

        lob.landClass = "poisonSmokeSmall"

        if not lob.shell then spawnBlast(lobX, lobY - (destHeight*startHeightFactor), 44, nil, 0.22) end

        local distToPlayer = distanceBetween(lobX, lobY, player:getX(), player:getY())
        if distToPlayer < 32 then
            lob.speed = 22
        elseif distToPlayer < 48 then
            lob.speed = 30
        elseif distToPlayer < 64 then
            lob.speed = 80
        else
            lob.speed = 110
        end
    end

    if id == "apple" then
        lob.scale = 0.85
        lob.dir = dir
        lob.sprite = sprites.effects.apple
        lob.width = 7 -- sprite dimensions
        lob.height = 8
        lob.speed = 30
        lob.landClass = "apple"
        lob:setCollisionClass("Ignore")

        startHeightFactor = 0.9
        destHeight = 24
        riseTime = 0.06
        fallTime = 0.25

        if lob.dir.x < 0 then
            destHeight = 32
            riseTime = 0.08
            fallTime = 0.3
        end
    end

    if id == "gemPedestalReward" then
        lob.scale = 1
        lob.dir = vector(0, 126)
        lob.sprite = sprites.effects.apple
        lob.width = 7 -- sprite dimensions
        lob.height = 8
        lob.speed = 30
        lob.landClass = "gemGet"
        lob.colorImmune = true
        lob:setCollisionClass("Ignore")

        if args and args.gem then
            lob.gem = args.gem
            lob.sprite = sprites.items.icons.gems[args.gem]
        end

        startHeightFactor = 0.35
        destHeight = 96
        riseTime = 0.5
        fallTime = 0.7
    end

    if id == "jelly" then
        lob.scale = 1
        lob.dir = dir
        lob.sprite = sprites.enemies.jellyActive
        lob.width = 13 -- frame dimensions
        lob.height = 12
        lob.shadowSpr = "roundS"
        lob.rotRate = 10
        sem:playSound(sounds.enemies.hurtSmall)

        lob.grid = anim8.newGrid(lob.width, lob.height, lob.sprite:getWidth(), lob.sprite:getHeight())
        lob.anim = anim8.newAnimation(lob.grid('1-2', 1), 0.08)

        lob.speed = 150
        lob.landClass = "elecBomb"
        lob.effectInterval = 0.1
        lob.effectClass = "smallTinyShock"
        --lob.effectOffset = 2

        startHeightFactor = 0.3
        destHeight = 16
        riseTime = 0.14
        fallTime = 0.31
    end

    lob:setX(lobX + lob.dir.x)
    lob:setY(lobY + lob.dir.y)
    lob.airY = destHeight * startHeightFactor -- start at 65% of the way up
    lob.effectTimer = lob.effectInterval

    if lob.dir.x < 0 then
        lob.rotDir = -1
    end

    lob.dir:normalizeInplace()
    lob:setLinearDamping(0)
    lob:setLinearVelocity(lob.dir.x*lob.speed, lob.dir.y*lob.speed)

    lob.shadowScale = 1
    lob.timer = lob.totalTime

    lob.totalTime = riseTime + fallTime
    lob.timer = lob.totalTime
    lob.tween = flux.to(lob, riseTime, {airY = destHeight, shadowScale = 0.65}):ease("quadout"):oncomplete(function()
        lob.tween = flux.to(lob, fallTime, {airY = 0, shadowScale = 1}):ease("quadin")
    end)

    function lob:onLand()
        self.dead = true
        if self.landClass then
            if self.landClass == "elecBomb" then
                effects2:spawn("elecExplosion", self:getX(), self:getY(), {spareEnemies=self.spareEnemies})
            elseif self.landClass == "elecBombBig" then
                effects2:spawn("elecExplosionBig", self:getX(), self:getY(), {spareEnemies=self.spareEnemies})
            elseif self.landClass == "poisonSmokeSmall" then
                effects2:spawn("poisonSmokeSmall", self:getX(), self:getY(), {spareEnemies=self.spareEnemies})
            elseif self.landClass == "apple" then
                sem:playSound(sounds.environment.appleBreak, {volume=1, pitchRand=0.1})
                resources:spawn('seed', self:getX(), self:getY(), {bounceHeight=-14, dir=self.dir:normalized()*math.random(3, 10)})
            elseif self.landClass == "gemGet" then
                player:itemGet('gem_' .. self.gem)
            end
        end
    end

    function lob:update(dt)
        if self.rotRate then self.rot = self.rot + dt*self.rotRate*self.rotDir end
        self.timer = self.timer - dt
        if self.timer < 0 then
            if self.state == 0 then
                if not inWater(self:getX(), self:getY(), 8) then
                    self:onLand()
                    self.dead = true
                    self.state = 1
                else
                    if gameMap.isSky then
                        effects:spawn("itemFall", self:getX(), self:getY())
                    else
                        splash(self:getX(), self:getY())
                    end
                    self.dead = true
                end
            elseif self.state == 1 then
                
            end
        end
        if self.effectClass and self.effectTimer then
            self.effectTimer = self.effectTimer - dt
            if self.effectTimer < 0 then
                local effClass = "smallTinyShock"
                if self.effectClass then effClass = self.effectClass end
                local offVec = vector(0, 0)
                if self.effectOffset then offVec = vector(self.effectOffset, 0) end
                offVec = offVec:rotated(math.random()*math.pi*2)
                effects:spawn(effClass, self:getX() + offVec.x, self:getY()-self.airY+offVec.y)
                self.effectTimer = self.effectInterval
            end
        end
        if self.anim then self.anim:update(dt) end
    end

    function lob:draw()
        love.graphics.setColor(1,1,1,1)
        if self.anim then
            self.anim:draw(self.sprite, self:getX(), self:getY() - self.airY, self.rot, self.scale, nil, self.width/2, self.height/2)
        else
            love.graphics.draw(self.sprite, self:getX(), self:getY() - self.airY, self.rot, self.scale, nil, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
        end
    end

    table.insert(lobs, lob)
end

function lobs:update(dt)
    for _,b in ipairs(lobs) do
        b:update(dt)
    end

    local i = #lobs
    while i > 0 do
        if lobs[i].dead then
            lobs[i]:destroy()
            table.remove(lobs, i)
        end
        i = i - 1
    end
end

function lobs:draw()
    for _,b in ipairs(lobs) do
        b.anim:draw(sprites.items.lobSheet, b.x, b.y, nil, nil, nil, 6, 6)
        --love.graphics.draw(sprites.items.lob, b.x, b.y, nil, nil, nil, 6, 6)
    end
end
