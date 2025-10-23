-- NOTE:
-- GO TO PlayerMagic.lua for the new spell system
-- THIS STUFF IS OLD

function castHeal()
    if not player.hasWeapon then
        dj.play(sounds.weapons.fail, "static", "effect")
        return
    end

    -- sacrifice weapon :(
    player.hadSpellWeapon = true
    swDamage = weapons[weapons:getIndex(player.weaponUniqueId)]:castBreak()

    -- heal
    player:heal(99) -- now doing a full heal HERE
    player.mana = player.maxMana
    effects:spawn("healWind", player:getX(), player:getY())

    -- TODO: EVENTUALLY MOVE THIS
    castMagic()

    shake:standard(1)
end

function castMagic()
    --[[if player.mana < player.maxMana then
        dj.play(sounds.weapons.fail, "static", "effect")
        return
    end]]

    local shakeAmt = 0

    if allItems["lightning"] then
        local hitCount = 0
        local checkDist = 128
        local coreCount = 0
        for i,e in ipairs(enemies) do
            if distanceBetween(e.physics:getX(), e.physics:getY(), player:getX(), player:getY()) < checkDist and e.physics then
                if e.physics.collision_class ~= 'Ignore' then
                    --effects:spawn("lightning", e.physics:getX(), e.physics:getY()+6)
                    --e:hit(3, vector(0,0), 0.2)
                    effects2:spawn("playerLightning", e.physics:getX(), e.physics:getY())
                    hitCount = hitCount + 1
                end
            end
        end
        for i,e in ipairs(trees) do
            if e.conductor and distanceBetween(e.x, e.y, player:getX(), player:getY()) < checkDist then
                effects2:spawn("playerLightning", e.x, e.y-3)
                hitCount = hitCount + 1
                if e.name == "newCore" then
                    coreCount = coreCount + 1
                end
            end
        end

        if coreCount >= 4 and not data.states.misc["newCoreActive"] then
            -- cores have been activated
            data.states.misc["newCoreActive"] = true
            player.focusX = player:getX()
            player.focusY = player:getY()
            cutscene:start("quickLook", {lookAtX=player:getX(), lookAtY=player:getY(), lookDur=8})
            cover:start("coreActivated")
            sem:playSound(sounds.misc.techStartBig, {volume=0.4})
        end

        if hitCount > 0 then
            shakeAmt = 1
            local range = math.random()/4
            sem:playSound(sounds.spells.lightning, {volume=0.5, pitchRand=range})
            spawnBlast(player:getX(), player:getY()+1, 148, "soft", 0.3)
            lightSources:fullFlash(35)
        end

        -- TODO: search for conductor WALLS, only if nothing else is found
        if hitCount < 1 then
            local dist = 34
            effects:spawn("lightning", player:getX() - dist, player:getY()+6)
            effects:spawn("lightning", player:getX() + dist, player:getY()+6)
            effects:spawn("lightning", player:getX(), player:getY()-dist+6)
            effects:spawn("lightning", player:getX(), player:getY()+dist+6)
        end
    end

    --[[
    if allItems["lightning"] then
        local hitCount = 0
        local checkDist = 128
        local distList = {}
        for i,e in ipairs(enemies) do
            local eDist = distanceBetween(e.physics:getX(), e.physics:getY(), player:getX(), player:getY())
            if eDist < checkDist and e.physics and e.physics.collision_class ~= 'Ignore' then
                table.insert(distList, {dist=eDist, x=e.physics:getX(), y=e.physics:getY(), en=e})
            end
        end

        if #distList > 0 then
            -- sort the distList by dist value
            table.sort(distList, function(a,b) return a.dist < b.dist end)
            local totalBolts = 3
            local iMain = 1
            local iTmp = 1
            
            while iMain <= totalBolts do
                local time = 0.01 + (iMain-1)*0.2
                misc:addLightning(distList[iTmp].x, distList[iTmp].y, time, distList[iTmp].en)
                iMain = iMain + 1
                iTmp = iTmp + 1
                if iTmp > #distList then iTmp = 1 end
            end

            spawnBlast(player:getX(), player:getY()+1, 148, "soft", 0.3)
        else

        end
    end]]

    --if allItems["fire"] then
    if false then
        if player.hasWeapon then
            local wepInd = weapons:getIndex(player.weaponUniqueId)
            local wep = weapons[wepInd]
            if wep then wep:heat() end
            
            local spawnVec = vector(1, 0)
            for i=1,72 do
                effects:spawn("steamBlast", player:getX(), player:getY(), {dir=vector(spawnVec.x, spawnVec.y)})
                spawnVec = spawnVec:rotated(math.pi/36)
            end
        end
    end

    if shakeAmt == 0 then
        shake:standard(1)
    elseif shakeAmt == 1 then
        shake:standard(2)
    end

    flux.to(player, 0.5, {mana = 0}):ease("quadout")
end

-- old, no longer used
function castSpell()
    --[[if spellId == 101 then -- Fire
        local fireRadius = 44
        local fireRadiusSmall = 26
        --player:setLinearVelocity(0, 0)
        effects:spawn("fireRing", player:getX(), player:getY())
        --spawnBlast(player:getX(), player:getY(), 48, "scorch", 0.4)
        local range = math.random()/4
        dj.play(sounds.spells.fire, "static", "effect", 1, 1+range)

        aoeDamage(player:getX(), player:getY(), fireRadius/2, 6, 120, spellId)

        data.loadouts[data.loadout].spellTimer = 6
        data.loadouts[data.loadout].spellMaxTimer = 6

        shake:start(0.1, 1.5, 0.025)
        spawnBlast(player:getX(), player:getY()+1, 148, "softer", 0.3)
    end

    if spellId == 102 then -- Ice
        player:setLinearVelocity(0, 0)
        effects:spawn("iceBlast", player:getX(), player:getY()+5)

        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(1,0)})
        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(1,1)})
        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(0,1)})
        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(-1,1)})
        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(-1,0)})
        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(-1,-1)})
        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(0,-1)})
        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(1,-1)})
        
        local rotFactor = math.pi/8
        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(1,0):rotated(rotFactor)})
        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(1,1):rotated(rotFactor)})
        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(0,1):rotated(rotFactor)})
        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(-1,1):rotated(rotFactor)})
        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(-1,0):rotated(rotFactor)})
        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(-1,-1):rotated(rotFactor)})
        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(0,-1):rotated(rotFactor)})
        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(1,-1):rotated(rotFactor)})

        --[[ TOO MANY LOL
        rotFactor = math.pi/16
        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(1,0):rotated(rotFactor)})
        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(1,1):rotated(rotFactor)})
        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(0,1):rotated(rotFactor)})
        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(-1,1):rotated(rotFactor)})
        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(-1,0):rotated(rotFactor)})
        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(-1,-1):rotated(rotFactor)})
        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(0,-1):rotated(rotFactor)})
        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(1,-1):rotated(rotFactor)})

        rotFactor = math.pi/-16
        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(1,0):rotated(rotFactor)})
        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(1,1):rotated(rotFactor)})
        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(0,1):rotated(rotFactor)})
        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(-1,1):rotated(rotFactor)})
        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(-1,0):rotated(rotFactor)})
        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(-1,-1):rotated(rotFactor)})
        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(0,-1):rotated(rotFactor)})
        spawnFireball(player:getX(), player:getY(), {spell="shard", vec=vector(1,-1):rotated(rotFactor)})

        local range = math.random()/4
        dj.play(sounds.spells.iceShards, "static", "effect", 1, 1+range)

        data.loadouts[data.loadout].spellTimer = 8
        data.loadouts[data.loadout].spellMaxTimer = 8

        shake:start(0.1, 1.5, 0.025)
        spawnBlast(player:getX(), player:getY()+1, 148, "softer", 0.3)
        
    end]]

end

function aoeDamage(x, y, rad, dam, mag, spellId)
    -- Query for cuttable walls
    local walls = world:queryCircleArea(x, y, rad, {'Wall', 'Ground'})
    for _,w in ipairs(walls) do
        if w.cuttable then
            w.dead = true
        end
    end

    local hitEnemies = world:queryCircleArea(x, y, rad, {'Enemy', 'Enemy2'})
    local stunTime = 0.12
    if mag == 269 then stunTime = 0.26 end -- Fire
    for _,e in ipairs(hitEnemies) do
        e.parent:hit(dam, getPlayerToSelfVector(e.parent.physics:getX(), e.parent.physics:getY()), stunTime, nil, nil, mag)

        if spellId == 101 then -- fire
            e.parent:burn()
        end
    end
end

function updateSpells(dt)

end
