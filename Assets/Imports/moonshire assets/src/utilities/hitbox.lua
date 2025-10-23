hitboxes = {}
hitboxes.willDraw = false

function spawnHitbox(dim, args) -- dimensions of the hitbox
    local hitbox = {}
    hitbox.dim = dim
    hitbox.damage = 1
    hitbox.dead = false
    hitbox.timer = 0.14
    hitbox.args = args
    hitbox.id = math.random()
    hitbox.canSpark = true
    hitbox.deadOnHit = true -- hit player/enemy
    hitbox.deadOnWall = true -- hit wall
    hitbox.canSpark = true
    hitbox.elecImmune = true
    hitbox.hitDone = false -- used for hitting walls only once

    -- args can pass in weaponIndex, which can handle player weapon hitboxes
    -- args can pass in parent, and this hitbox will adjust its x,y to the parent

    -- copy over all args properties
    -- id can be set through this
    -- timer can be set through this
    if args then
        for k,v in pairs(args) do
            hitbox[k] = v -- even though k is the index, I believe the index should be strings, so this should apply all properties
        end
    end

    if args and args.grow then -- assumes circle
        local destRad = hitbox.dim.rad
        hitbox.dim.rad = destRad/2
        flux.to(hitbox.dim, hitbox.timer, {rad = destRad}):ease("quadout")
    end

    function hitbox:update(dt)
        self.timer = self.timer - dt
        if self.timer < 0 then
            self.dead = true
            return
        end

        local wep = nil
        if self.parentType then -- adjust position to parent
            if self.parentType == "projectile" then
                self.timer = 1 -- constantly reset the timer, since the projectile has its own
                local proj = projectiles:findByUniqueId(self.parentVal.uniqueId)
                if not proj then self.dead = true return end
                self.dim.x = proj.x
                self.dim.y = proj.y
            end
            if self.parentType == "weapon" then
                wep = weapons[weapons:getIndex(self.parentVal.uniqueId)]
                if not wep then self.dead = true return end
                if wep.state < 2 then self.dead = true return end
                local offX = 0
                local offY = 0
                if wep.state == 2 then
                    offX = wep.throwDir.x * wep.throwHitboxOffset
                    offY = wep.throwDir.y * wep.throwHitboxOffset
                end
                self.dim.x = wep.x + offX
                self.dim.y = wep.y + offY
            end
            if self.parentType == "player" then
                self.dim.x = player:getX()
                self.dim.y = player:getY()
            end
            if self.parentType == "enemyAttack" then
                local en = enemies:getByUniqueId(self.enemyUniqueId)
                if en and en.physics then
                    local ex, ey = en.physics:getPosition()
                    local off = 0
                    if en.attack.slashHitOff then off = en.attack.slashHitOff end
                    local offVec = en.attackDir:normalized() * off
                    self.dim.x = ex + offVec.x
                    self.dim.y = ey + offVec.y
                end
            end
            if self.parentType == "effect2" then
                local eff = effects2:getByUid(self.parentUniqueId)
                if eff then
                    self.dim.x = eff.x
                    self.dim.y = eff.y
                end
            end
        end

        local pushbackVec = nil
        local pushbackMult = nil
        local hitWalls = {} if self.spareWalls then hitWalls = nil end
        local hitEnemies = {} if self.spareEnemies then hitEnemies = nil end
        local hitPlayer = {} if self.sparePlayer then hitPlayer = nil end
        local hitProps = {} if self.spareProps then hitProps = nil end

        if dim.shape == "circle" then
            if hitWalls then hitWalls = world:queryCircleArea(self.dim.x, self.dim.y, self.dim.rad, {'Wall'}) end
            if hitEnemies then hitEnemies = world:queryCircleArea(self.dim.x, self.dim.y, self.dim.rad, {'Enemy', 'Enemy2'}) end
            if hitPlayer then hitPlayer = world:queryCircleArea(self.dim.x, self.dim.y, self.dim.rad, {'Player'}) end
            if hitProps then hitProps = world:queryCircleArea(self.dim.x, self.dim.y, self.dim.rad, {'Prop'}) end
        end

        if dim.shape == "rectangle" then
            if hitWalls then hitWalls = world:queryRectangleArea(self.dim.x, self.dim.y, self.dim.width, self.dim.height, {'Wall'}) end
            if hitEnemies then hitEnemies = world:queryRectangleArea(self.dim.x, self.dim.y, self.dim.width, self.dim.height, {'Enemy', 'Enemy2'}) end
            if hitPlayer then hitPlayer = world:queryRectangleArea(self.dim.x, self.dim.y, self.dim.width, self.dim.height, {'Player'}) end
            if hitProps then hitProps = world:queryRectangleArea(self.dim.x, self.dim.y, self.dim.width, self.dim.height, {'Prop'}) end
        end

        if dim.shape == "semicircle" or dim.shape == "semiellipse" then
            local vec = vector(1, 0) * self.dim.rad
            if self.args.dir then vec = self.args.dir:normalized() * self.dim.rad end
            vec:rotateInplace(math.pi/-2)
            local totalLines = 20
            for i=0,totalLines do
                if dim.shape == "semiellipse" then
                    local radFactor = 1 - (math.abs(i - totalLines/2) / (totalLines/2))/4
                    if radFactor < 0.5 then radFactor = 0.5 end
                    local ellRad = self.dim.rad * radFactor
                    vec = vec:normalized() * ellRad
                end
                if hitEnemies then
                    local lineHitEnemies = world:queryLine(self.dim.x, self.dim.y, self.dim.x + vec.x, self.dim.y + vec.y, {'Enemy', 'Enemy2'})
                    if #lineHitEnemies > 0 then
                        for _,w in ipairs(lineHitEnemies) do table.insert(hitEnemies, w) end
                    end
                end
                if hitProps then
                    local lineHitProps = world:queryLine(self.dim.x, self.dim.y, self.dim.x + vec.x, self.dim.y + vec.y, {'Prop'})
                    if #lineHitProps > 0 then
                        for _,w in ipairs(lineHitProps) do table.insert(hitProps, w) end
                    end
                end
                if hitPlayer and #hitPlayer == 0 then -- only query for player if they haven't already been hit
                    local lineHitPlayer = world:queryLine(self.dim.x, self.dim.y, self.dim.x + vec.x, self.dim.y + vec.y, {'Player'})
                    if #lineHitPlayer > 0 then
                        for _,w in ipairs(lineHitPlayer) do table.insert(hitPlayer, w) end
                    end
                end
                -- only hit walls using the middle 30% of the semicircle
                if hitWalls and (i >= totalLines*0.35) and (i <= totalLines*0.65) then
                    local lineHitWalls = world:queryLine(self.dim.x, self.dim.y, self.dim.x + vec.x, self.dim.y + vec.y, {'Wall'})
                    if #lineHitWalls > 0 then
                        -- insert all items from lineHitWalls into hitWalls
                        -- note: there will probably be duplicates, but that should be handled by hitbox ID
                        for _,w in ipairs(lineHitWalls) do table.insert(hitWalls, w) end
                    end
                end
                vec:rotateInplace(math.pi/totalLines)
            end
        end

        if dim.shape == "triangle" then
            local dir = player.attackDir:normalized() * self.dim.height
            if self.args.dir then vec = self.args.dir:normalized() * self.dim.height end
            local rightDir = dir:rotated(math.pi/2):normalized()*(self.dim.width/2)
            local leftDir = dir:rotated(math.pi/-2):normalized()*(self.dim.width/2)
            local polygon = {
                self.dim.x + dir.x,
                self.dim.y + dir.y,
                self.dim.x + rightDir.x,
                self.dim.y + rightDir.y,
                self.dim.x + leftDir.x,
                self.dim.y + leftDir.y,
            }
            if hitWalls then hitWalls = world:queryPolygonArea(polygon, {'Wall'}) end
            if hitEnemies then hitEnemies = world:queryPolygonArea(polygon, {'Enemy', 'Enemy2'}) end
            if hitPlayer then hitPlayer = world:queryPolygonArea(polygon, {'Player'}) end
            if hitProps then hitProps = world:queryPolygonArea(polygon, {'Prop'}) end
        end

        if hitEnemies then
            local totalDamageDealt = 0
            for _,e in ipairs(hitEnemies) do
                local ex, ey = e:getPosition()
                if self.burn then e.parent:burn() end
                if self.parentUniqueId and e.parent and self.parentUniqueId == e.parent.uniqueId then
                    -- don't hit the parent
                elseif e.parent.electrified and not allItems['gauntlets'] and self.parentType == "player" then
                    if not self.dead then
                        player:shock()
                        player:setLinearVelocity(0,0)
                        self.dead = true
                    end
                else
                    local argMag = nil
                    local stunMag = nil
                    if self.args and self.args.stunTime then stunMag = self.args.stunTime end
                    if self.args and self.args.mag then argMag = self.args.mag end
                    e.parent:hit(self.damage, {dir = getPlayerToSelfVector(ex, ey), strikeTime = self.strikeTime, stunTime = stunMag, hitboxId = self.id, mag = argMag})
                    if self.deadOnHit then self.dead = true end
                    totalDamageDealt = totalDamageDealt + self.damage

                    -- pushback for player
                    if self.parentType == "player" or self.player then
                        pushbackMult = e.parent.hitKnockbackFactor * -1
                    end
                end
            end

            -- update weapon use tracking
            if self.weaponClass then
                for i,w in ipairs(data.items.weapons) do
                    if w.id == self.weaponClass then
                        data.items.weapons[i].totalDamage = data.items.weapons[i].totalDamage + totalDamageDealt
                    end
                end
            end
        end

        if hitProps then
            for _,p in ipairs(hitProps) do
                if p and not p.dead then p:hit() end
            end
        end

        if hitPlayer and #hitPlayer > 0 and player.state ~= 0.5 then
            player:hurt(self.damage, self.x, self.y)
        end

        if hitWalls and #hitWalls > 0 then
            if self.canSpark then
                local sparkDir = vector(0, 0)
                local dist = 4
                if self.dim.rad then dist = self.dim.rad * 0.8 end
                if self.dim.height then dist = self.dim.height * 0.9 end
                if self.args and self.args.dir then sparkDir = self.args.dir:normalized()*dist end

                local sparkX = self.dim.x + sparkDir.x
                local sparkY = self.dim.y + sparkDir.y
                effects2:spawn("spark", sparkX, sparkY)
                dj.play(sounds.environment.swordCollide, "static", "effect", 0.6)
                self.canSpark = false

                -- pushback for player
                if self.parentType == "player" then
                    pushbackMult = -2
                end
            end

            if self.explosive then
                -- Query for breakable walls
               for _,w in ipairs(hitWalls) do
                   if w.breakable or w.cuttable then
                       w.dead = true
                   end
               end
            end

            for _,w in ipairs(hitWalls) do
                if self.explosive then
                    if w.breakable or w.cuttable then
                        w.dead = true
                    end
                end
                if w.onHit and not self.hitDone then
                    w:onHit(self.id)
                    self.hitDone = true
                end
            end

            if self.deadOnWall then
                self.dead = true
                
                if self.strikeTime then
                    player.strikeTimer = self.strikeTime
                    player.strikeX = self.dim.x
                    player.strikeY = self.dim.y
                end
            end
        end

        if (self.parentType == "player" or self.player) and pushbackMult and player.attack and player.attack.selfKnockback then
            local kbVal = player.attack.selfKnockback
            local newPushVec = player.attackDir:normalized() * kbVal * pushbackMult
            if player.attack.impulseSelfKnockback then
                player:applyLinearImpulse(newPushVec.x, newPushVec.y)
            else
                player:setLinearVelocity(newPushVec.x, newPushVec.y)
            end
        end

        if wep and wep.turnAround then
            if (hitWalls and #hitWalls > 0) and wep.state == 3 then
                wep:turnAround() -- manually sets dead to false
            end
            if (hitEnemies and #hitEnemies > 0) and wep.state == 2 then
                wep:turnAround() -- manually sets dead to false
            end
        end

        if self.dead and self.parentType == "weapon" then
            if wep and wep.crumble then wep:crumble() end
        end

    end

    function hitbox:draw()
        if self.dead == false then
            love.graphics.setColor(1,0.5,1,1)
            love.graphics.circle("line", self.x, self.y, self.rad)
        end
    end

    function hitbox:onDeath()
        if self.parentType == "projectile" then
            local proj = projectiles:findByUniqueId(self.parentVal.uniqueId)
            if proj then proj:die() end
        end
    end

    function hitbox:newId(id)
        print('hitbox id set')
        self.id = id
    end

    -- simple hitbox on creation, for cutting plants
    hitboxes:simple(dim.x, dim.y, 22)

    table.insert(hitboxes, hitbox)
end

function hitboxes:update(dt)
    for _,b in ipairs(hitboxes) do
        b:update(dt)
    end

    local i = #hitboxes
    while i > 0 do
        if hitboxes[i].dead then
            hitboxes[i]:onDeath()
            table.remove(hitboxes, i)
        end
        i = i - 1
    end
end

function hitboxes:draw()
    if self.willDraw then
        for _,b in ipairs(hitboxes) do
            b:draw()
        end
    end
end

function hitboxes:simple(x, y, rad) -- used for interaction with simple objects
    for _,p in ipairs(plants) do
        local radVal = rad
        if distanceBetween(p.x, p.y, x, y) < radVal and p.cuttable then
            local attRad = getRadFromVector(player.attackDir)
            local plantRad = getRadFromVector(getPlayerToSelfVector(p.x, p.y))
            if player.attackDir.x < 0 then
                if attRad < 0 then
                    attRad = attRad + (2*math.pi)
                end
                if plantRad < 0 then
                    plantRad = plantRad + (2*math.pi)
                end
            end
            if plantRad > (attRad - math.pi/2) and plantRad < (attRad + math.pi/2) then
                -- hit!
                p.dead = true
                particleEvent("minGrassBreak", p.x, p.y)
            end
        end
    end
end
