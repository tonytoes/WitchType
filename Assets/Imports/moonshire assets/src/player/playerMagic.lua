function player:castHeal()
    if not player.hasWeapon then
        dj.play(sounds.weapons.fail, "static", "effect")
        return
    end

    -- sacrifice weapon :(
    player.hadSpellWeapon = true
    swDamage = weapons[weapons:getIndex(player.weaponUniqueId)]:castBreak()

    -- heal
    player:heal(99)
    player.mana = player.maxMana
    effects:spawn("healWind", player:getX(), player:getY())

    player:castMagic()

    shake:standard(1)
end

function player:castMagic()
    if player.mana < player.maxMana then
        --dj.play(sounds.weapons.fail, "static", "effect")
        --return
    end

    player:castLightning()
    --player:castFire()

    flux.to(player, 0.5, {mana = 0}):ease("quadout")
end

function player:castLightning()
    if allItems.lightning then
        local hitCount = 0
        local checkDist = 128
        local coreCount = 0
        for i,e in ipairs(enemies) do
            if distanceBetween(e.physics:getX(), e.physics:getY(), player:getX(), player:getY()) < checkDist and e.physics then
                if e.physics.collision_class ~= 'Ignore' then
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
            sem:playSound(sounds.misc.techStartBig)
        end

        if hitCount > 0 then
            shake:standard(1)
            local range = math.random()/4
            dj.play(sounds.spells.lightning, "static", "effect", 0.8, 1+range)
            spawnBlast(player:getX(), player:getY()+1, 148, "soft", 0.3)
            lightSources:fullFlash(35)
        end
    end
end

function player:castFire()
    if allSpells.fire then
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
end

function player:prepCast()
    if player.inWater or player.spellBuffer > 0 then return end
    if not input:down("magic") and not input:down("pickup") then return end
    if not player.hasWeapon then return end
    if player.state ~= 0 then
        player:addToBuffer("spell")
        return
    end
    if player.state >= 0 and player.state < 1 and not player.chargeAiming then
        player.state = 5
        player:changeAnim("charge")
        player.animTimer = 1
        player.animTracker = 0
        cam:fluxZoom(nil, 1)

        player:setLinearDamping(player.baseDamping/4 )
        player.slippery = true
    end
end

function player:cast()
    if player.inWater then return end

    player.state = 5.1
    player.animTracker = 0.3 -- needed for sword upwards animation
    player:changeAnim("cast")

    cam:fluxUnzoom(0.2)

    if player.castType == 1 then
        player:castMagic()
    elseif player.castType == 2 then
        player:castHeal()
    end
end

function player:castUpdate(dt)

    player:checkDamage()
    player:checkTransition()

    if player.animTimer > 0 then
        player.animTimer = player.animTimer - dt
    end
    if player.animTimer < 0 then
        player.animTimer = 0
        player.state = 0
        player:look(1)
        player.justIdle()
    end
end
