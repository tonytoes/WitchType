projectiles = {}

function projectiles:getStats(p)

    if p.id == "invisible" then
        p.sprite = sprites.blank
        p.frameCount = 1
        p.hasShadow = false
    end

    if p.id == "line" then
        p.sprite = sprites.blank
        p.frameCount = 1
        p.speed = 220
        p.hasShadow = false
        p.lineTimer = -1 -- spawn first one immediately
        p.lineCounter = 0
        p.lineBufferTime = 0.085
        p.lineCounterMax = 10
    end

    if p.id == "shockBall" then
        p.sprite = sprites.effects2.attacks.shockBall
        p.rad = 4
        p.frameW = 32
        p.frameH = 32
        p.frameCount = 4
        p.frameSpeeds = 0.1 -- can also be a table, list of values, one for each frame
        p.speed = 130
        p.fixedRot = true
        p.shape = "circle"
        p.scale = 0.7
        p.lightRad = 28
    end

    if p.id == "fireballSm" then
        p.sprite = sprites.effects2.attacks.fireballSm
        p.rad = 3
        p.frameW = 32
        p.frameH = 32
        p.frameCount = 6
        p.frameSpeeds = 0.08 -- can also be a table, list of values, one for each frame
        p.speed = 200
        p.shape = "circle"
        p.scale = 1.2
        p.onFire = true
        p.lightRad = 24
    end

    if p.id == "projSlashGreen" then
        p.sprite = sprites.effects2.attacks.projSlashGreen
        p.rad = 12
        p.frameW = 36
        p.frameH = 26
        p.frameCount = 6
        p.frameSpeeds = 0.06 -- can also be a table, list of values, one for each frame
        p.speed = 300
        p.shape = "circle"
        p.scaleX = 1
        p.scaleY = 1.4
        p.lightRad = 20
    end

    if p.id == "projSlashSimple" then
        p.sprite = sprites.effects2.attacks.projSlashSimple
        p.rad = 7
        p.frameW = 14
        p.frameH = 34
        p.frameCount = 1
        p.frameSpeeds = 1 -- can also be a table, list of values, one for each frame
        p.speed = 300
        p.shape = "circle"
        p.scale = 1
        p.lightRad = 20
    end

    if p.id == "projSlashSm" then
        p.sprite = sprites.effects2.attacks.projSlashSm
        p.rad = 7
        p.frameW = 8
        p.frameH = 20
        p.frameCount = 1
        p.frameSpeeds = 1 -- can also be a table, list of values, one for each frame
        p.speed = 250
        p.shape = "circle"
        p.scale = 1
        p.lightRad = 20
        p.deathTimer = 0.25
        p.hasShadow = false
    end

    if p.id == "electricDisc" then
        p.sprite = sprites.effects2.attacks.elecDisc
        p.damage = 0
        p.rad = 4
        p.frameW = 16
        p.frameH = 16
        p.frameCount = 6
        p.frameSpeeds = 0.08 -- can also be a table, list of values, one for each frame
        p.speed = 260
        p.shape = "circle"
        p.scaleX = 1
        p.lightRad = 20
        p.effect2Impact = "elecExplosion"
        p.fixedRot = true
    end

    return p
end

function projectiles:spawn(id, x, y, args)
    local proj = {}
    proj.id = id
    proj.x = x
    proj.y = y
    proj.rad = 4
    proj.speed = 100
    proj.dir = vector(1,1)
    proj.sprite = sprites.effects2.attacks.shockBall
    proj.frameW = 16
    proj.frameH = 16
    proj.frameCount = 4
    proj.frameSpeeds = 0.2 -- can also be a table, list of values
    proj.deathTimer = 5 -- time before destroying self
    proj.damage = 1
    proj.fixedRot = false
    proj.rot = 0
    proj.hasShadow = true
    proj.drawShadow = true -- used for the sky, or when the proj is overtop an area where a shadow shouldn't be
    proj.dead = false
    proj.visible = true
    proj.colorImmune = true
    proj.trackingVal = 0
    proj.shape = "circle"
    proj.args = args
    proj.uniqueId = 'proj_' .. math.random() -- can be overwritten by args

    proj = projectiles:getStats(proj)

    -- copy over all args properties
    for k,v in pairs(args) do
        proj[k] = v -- even though k is the index, I believe the index should be strings, so this should apply all properties
    end

    -- this assumes 3 rn cuz i'm lazy, but 5 is an option
    -- shell is to prevent duplicates repeating endlessly
    if proj.shotgun and not proj.shell then
        local angle = math.pi/4
        if proj.shotgunAngle then angle = proj.shotgunAngle end

        local newArgs = copy(args)
        newArgs.shell = true -- this id's the projectile as a duplicate of the main projectile
        newArgs.dir:rotateInplace(angle)
        projectiles:spawn(id, x, y, newArgs)

        local newArgs2 = copy(args)
        newArgs2.shell = true
        newArgs2.dir:rotateInplace(angle*-1)
        projectiles:spawn(id, x, y, newArgs2)
    
        if proj.shotgun > 3 then -- assume 5
            local newArgs3 = copy(args)
            newArgs3.shell = true
            newArgs3.dir:rotateInplace(angle/2)
            projectiles:spawn(id, x, y, newArgs3)

            local newArgs4 = copy(args)
            newArgs4.shell = true
            newArgs4.dir:rotateInplace(angle/-2)
            projectiles:spawn(id, x, y, newArgs4)
        end
    end

    if not proj.scaleX and not proj.scaleY then
        if proj.scale then -- set from stats
            proj.scaleX = proj.scale proj.scaleY = proj.scale
        else
            proj.scaleX = 1 proj.scaleY = 1
        end
    end

    if proj.special then
        if proj.id == "projSlashSm" then
            proj.speed = 320
            proj.deathTimer = 0.35
        end
    end

    if proj.spiralVal and proj.spiralTime then
        proj.startRot = getRotationFromVector(proj.dir)
        proj.rotVal = 0
        local destRot = proj.spiralVal
        local easing = "circout" if proj.easing then easing = proj.easing end
        flux.to(proj, proj.spiralTime, {rotVal = destRot}):ease(easing)
    end

    proj.grid = anim8.newGrid(proj.frameW, proj.frameH, proj.sprite:getWidth(), proj.sprite:getHeight())
    proj.anim = anim8.newAnimation(proj.grid('1-' .. proj.frameCount, 1), proj.frameSpeeds)

    -- create hitbox
    local dim = {shape = proj.shape, x = proj.x, y = proj.y}
    if proj.shape == "circle" then dim.rad = proj.rad end
    if proj.shape == "rectangle" then dim.width = proj.width dim.height = proj.height end
    spawnHitbox(dim, {parentType="projectile", parentVal=proj, damage=proj.damage, burn=proj.onFire, sparePlayer=(proj.player or proj.id=="line"), spareEnemies=proj.spareEnemies, parentUniqueId=proj.uniqueId, deadOnHit=proj.deadOnHit, deadOnWall=proj.deadOnWall, canSpark=proj.canSpark})

    if proj.lightRad then
        function proj:light()
            spawnLightSource(self.x, self.y, self.lightRad, self.uniqueId)
        end
        function proj:removeLight()
            lightSources:deleteById(self.uniqueId)
        end
        proj:light()
    end

    function proj:update(dt)
        -- spiral logic
        if self.startRot and self.rotVal then
            self.dir = getVectorFromRad(self.startRot + self.rotVal)
        end

        -- movement logic
        self.x = self.x + (self.dir.x * self.speed * dt)
        self.y = self.y + (self.dir.y * self.speed * dt)

        if self.anim then self.anim:update(dt) end

        if self.deathTimer > 0 then self.deathTimer = self.deathTimer - dt end
        if self.deathTimer < 0 then self.dead = true end

        if self.trackingVal and distanceBetween(self.x, self.y, player:getX(), player:getY()) < 16 then
            self.trackingVal = 0 -- stop curving towards the player when it gets close enough
        end

        if self.trackingVal then
            self.dir = rotate_vector_towards_point(self.dir, self.x, self.y, player:getX(), player:getY(), self.trackingVal)
        end
        
        if not self.fixedRot then self.rot = getRadFromVector(self.dir) end

        if inWater(self.x, self.y, 1) and gameMap.isSky and not self.hasShadow then
            self.drawShadow = false
        elseif self.visible then
            self.drawShadow = true
        end

        if self.id == "line" then
            self.lineTimer = self.lineTimer - dt
            if self.lineTimer < 0 then
                if self.lineSpawn == "lightning" then
                    effects:spawn("lightning", self.x, self.y + 8, {enemyAttack = true})
                end
                self.lineTimer = self.lineBufferTime
                self.lineCounter = self.lineCounter + 1
                if self.lineCounter >= self.lineCounterMax then
                    self.dead = true
                end
            end
        end
    end

    function proj:draw()
        if not self.visible then return end
        setWhite()
        self.anim:draw(self.sprite, self.x, self.y, self.rot, self.scaleX, self.scaleY, self.frameW/2, self.frameH/2)
    end

    function proj:die()
        self.dead = true
    end

    table.insert(projectiles, proj)
end

function projectiles:update(dt)
    for _,p in ipairs(projectiles) do
        if p.update then
            p:update(dt)
        end
    end

    local i = #projectiles
    while i > 0 do
        if projectiles[i].dead then
            if projectiles[i].removeLight then projectiles[i]:removeLight() end
            if projectiles[i].effect2Impact and projectiles[i].deathTimer > 0 then
                effects2:spawn(projectiles[i].effect2Impact, projectiles[i].x, projectiles[i].y, {dir=projectiles[i].dir})
            end
            table.remove(projectiles, i)
        end
        i = i - 1
    end
end

function projectiles:findByUniqueId(id)
    for _,p in ipairs(projectiles) do
        if p.uniqueId == id then
            return p
        end
    end
end
