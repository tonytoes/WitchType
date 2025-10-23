function player:setAttackDir()

    if settings.useMouse then
        player.attackDir = toMouseVector(player:getX(), player:getY())
        player:setDirFromVector(player.attackDir)
    else
        local inputX, inputY = input:get 'move'
        if inputX ~= 0 or inputY ~= 0 then
            player.dir = vector(inputX, inputY):normalized()
            player.attackDir = player.dir
            player.lastMoveDir = player.dir
        else
            player.attackDir = vector(player.lastMoveDir.x, player.lastMoveDir.y):normalized()
        end

        inputX, inputY = input:get 'aim'
        if inputX ~= 0 or inputY ~= 0 then
            player.dir = vector(inputX, inputY):normalized() -- maybe comment this out?
            player.attackDir = vector(inputX, inputY):normalized()
        end
    end

end

function player:startAttack(args)
    if player.inWater then return end
    if player.skipAttack then return end

    -- The player can only swing their sword if the player.state is 0 (regular gameplay)
    if player.state ~= 0 then player:addToBuffer("attack") return end
    if player.slashTimer > 0 then return end

    player.dashingSpeed = 0
    if player.dashTween then player.dashTween:stop() end
    player:setAttackDir()
    player.comboCount = player.comboCount + 1
    player.slashCount = player.slashCount + 1
    player.sparked = false
    player.attackId = math.random()

    if args and args.charge then
        player.chargeAttacking = true
        player:setAttack({charge=true})
    else
        player:finishChargeAttack()
        player:setAttack() -- checks for weapon, loads new attack in
    end
    player:setAttackAnim() -- updates player.animations.attack

    if player.attack then
        local at = player.attack.attackType
        if at == "swing" or at == "heavySwing" then player:swing() end
        if at == "stab" then player:stab() end
        if at == "cast" or at == "effectCast" then player:newCast() end
        if at == "shortThrow" then player:shortThrow() end
        if at == "shoot" then player:newShoot() end
        if at == "effect" then player:newEffect() end
        if at == "sequence" then player:sequenceAttack() end
    end
end

function player:doAttack() -- hitbox comes out, or main action occurs
    -- create hitbox
    local px = player.x
    local py = player.y
    local dim = nil

    if player.attack then
        local curWep = weapons[weapons:getIndex(player.weaponUniqueId)]
        if not curWep then curWep = weapons[weapons:getIndex(player.defaultWeaponUniqueId)] end
        if not curWep then
            -- for some reason, there is no default weapon. This is probably a bug, so respawning the default here
            weapons:spawn("sword", -1000, -1000, {default=true})
            curWep = weapons[weapons:getIndex(player.defaultWeaponUniqueId)]
        end

        local flvr = player.attack.flavor

        if curWep:checkAndUseAmmo() == false then
            -- out of ammo
            self.state = 52 -- but then does nothing haha
            return nil
        end

        if curWep.recalcLight then curWep:recalcLight() end

        if player.attack.attackType == "cast" then
            spawnBlast(player:getX(), player:getY(), 44, nil, 0.22)
        end

        if player.attack.attackType == "effectCast" then
            effects2:spawn(flvr, player:getX(), player:getY(), {dir=player.attackDir, player=true, hot=curWep.hot})
        else
            self.state = 52 -- slashing state
            if flvr == "smallSlash" then
                dim = {shape = "semicircle", x = px, y = py, rad = 22}
                effects2:spawn("slice", player:getX(), player:getY(), {dir=player.attackDir, hot=curWep.hot})
            elseif flvr == "bigSlash" then
                dim = {shape = "semiellipse", x = px, y = py, rad = 40}
                local sliceAnim = "sliceBig"
                if player.attack and player.attack.effectName then sliceAnim = player.attack.effectName end
                effects2:spawn(sliceAnim, player:getX(), player:getY(), {dir=player.attackDir, hot=curWep.hot})
            elseif flvr == "smallStab" then
                dim = {shape = "triangle", x = px, y = py, width = 18, height = 40}
                effects2:spawn("stab", player:getX(), player:getY(), {dir=player.attackDir, hot=curWep.hot})
            elseif flvr == "bigStab" then
                dim = {shape = "triangle", x = px, y = py, width = 22, height = 56}
                effects2:spawn("stabBig", player:getX(), player:getY(), {dir=player.attackDir, hot=curWep.hot})
            elseif flvr == "noStab" then
                dim = {shape = "triangle", x = px, y = py, width = 4, height = 14}
            elseif flvr == "elecBomb" then
                spawnLob("playerFanElecBomb", player:getX() + player.attackDir.x * 3, player:getY() + (player.attackDir.y * 3), player.attackDir)
            elseif flvr == "elecBomb2" then
                spawnLob("playerFanElecBomb2", player:getX() + player.attackDir.x * 3, player:getY() + (player.attackDir.y * 3), player.attackDir)
            elseif flvr == "lightning" then -- specifically for the lightning rod
                local hit = false
                for i,e in ipairs(enemies) do
                    if e.physics then
                        local dist = distanceBetween(e.physics:getX(), e.physics:getY(), player:getX(), player:getY())
                        if dist < 96 then
                            --enemies[i].strikeTimer = -1
                            hit = true
                        end
                    end
                end

                dj.play(sounds.spells.lightning, "static", "effect", 0.5, 0.75 + math.random()*0.5)
                if hit and false then -- FORCE else
                    -- strike timer takes care of spawning the lightning
                else
                    local spawnVec = player.attackDir:normalized() * 32
                    effects2:spawn("playerLightning", player:getX() + spawnVec.x, player:getY() + spawnVec.y)
                end
            elseif flvr == "boomerang" then
                if curWep and curWep.shortThrow then curWep:shortThrow() end
            elseif flvr:startswith("effect_") then
                local eff = flvr:sub(8)
                local attDist = 0 if player.attack.spawnDist then attDist = player.attack.spawnDist end
                effects2:spawn(eff, player:getX() + player.attackDir.x * attDist, player:getY() + player.attackDir.y * attDist, {dir=player.attackDir, player=true, fixed=true, hot=curWep.hot})
            end
        end

        if player.attack.attackType == "shoot" then
            self.state = 52
            local spawnVec = player.attackDir
            if player.attack.spawnDist then spawnVec = player.attackDir:normalized() * player.attack.spawnDist end
            projectiles:spawn(flvr, player:getX() + spawnVec.x, player:getY() + spawnVec.y, {dir=player.attackDir, player=true, speed=player.attack.projSpeed, hot=curWep.hot})
        end

        if player.attack.attackType == "effect" then
            self.state = 52
            local spawnVec = player.attackDir
            if player.attack.spawnDist then spawnVec = player.attackDir:normalized() * player.attack.spawnDist end
            effects2:spawn(flvr, player:getX() + spawnVec.x, player:getY() + spawnVec.y, {dir=player.attackDir, player=true, hot=curWep.hot})
        end

        if dim and not player.attack.fake then
            local stunTime = 0.12
            local shouldBurn = curWep.hot
            if player.attack.burn and not curWep.hot then
                shouldBurn = curWep.onFire
            end
            if player.attack.stunTime then stunTime = player.attack.stunTime end
            local xtraPower = misc:getAssist("weaponDamage")
            if player.attack.power then xtraPower = xtraPower + player.attack.power end
            if xtraPower < 1 then xtraPower = 1 end
            spawnHitbox(dim, {parentType="player", damage=xtraPower, sparePlayer=true, dir=player.attackDir, stunTime=stunTime, mag=player.attack.mag, elecImmune=curWep.elecImmune, weaponClass=curWep.id, burn=shouldBurn})
        end

        if player.attack.sound then
            local vol = 1
            local pitch = 1
            local basePitch = 1
            if player.attack.soundVolume then vol = player.attack.soundVolume end
            if player.attack.soundPitch then basePitch = player.attack.soundPitch end
            if player.attack.soundPitchRandom then
                pitch = (basePitch - player.attack.soundPitchRandom) + (math.random() * player.attack.soundPitchRandom*2)
            end
            dj.play(sounds.weapons[player.attack.sound], "static", "effect", vol, pitch)
        end

        if player.attack.addedProj then
            local spawnVec = player.attackDir
            local addedArgs = player.attack.addedProjArgs
            local sg = nil
            local sga = nil
            local spec = false
            if addedArgs and addedArgs.spawnDist then spawnVec = player.attackDir:normalized() * addedArgs.spawnDist end
            if addedArgs and addedArgs.shotgun then sg = addedArgs.shotgun end
            if addedArgs and addedArgs.shotgunAngle then sga = addedArgs.shotgunAngle end
            if addedArgs and addedArgs.special then spec = addedArgs.special end
            projectiles:spawn(player.attack.addedProj, player:getX() + spawnVec.x, player:getY() + spawnVec.y, {dir=player.attackDir, player=true, shotgun=sg, shotgunAngle=sga, special=spec, hot=curWep.hot})
        end
        
        if curWep.maxCharges then
            local cost = 1
            if curWep.chargeCost then cost = curWep.chargeCost end
            curWep.charges = curWep.charges - cost
            if curWep.charges < 0 then curWep.charges = 0 end
            curWep:removeCharges(cost)
            curWep:setChargeTimer()
        end
    end
end

function player:swing()
    if not data.states.misc["tutorial-sword"] then data.states.misc["tutorial-sword"] = 1 end
    player.state = 51 -- windup state
    player.lastMoveDir = player.attackDir
    player:attackDash()
end

function player:stab()
    player.state = 51 -- windup state
    player.lastMoveDir = player.attackDir
    player:attackDash()
end

function player:newCast()
    player.state = 51
    player.lastMoveDir = player.attackDir
    player:attackDash()
end

function player:shortThrow()
    player.state = 51
    player.lastMoveDir = player.attackDir
    player:attackDash()
end

function player:newShoot()
    player.state = 51
    player.lastMoveDir = player.attackDir
    player:attackDash()
end

function player:newEffect()
    player.state = 51
    player.lastMoveDir = player.attackDir
    player:attackDash()
end

function player:sequenceAttack()
    if player.attack and player.attack.sequenceList then
        player.sequenceIndex = 0
        player.sequence = copy(player.attack.sequenceList)
        player:startAttack() -- also calls setAttack, which brings the sequence index to 1
    end
end

function player:attackDash()

    -- default dash
    player.animTimer = 0.075
    player.dashSpeed = 12
    player:setLinearDamping(player.baseDamping/2)

    if player.attack then
        local px, py = player:getPosition()
        local boostMult = 1 -- used for BOTH boosts and dashes

        if player.attack.snapDist and player.attack.snapMult then
            -- check in front of player for enemies
            local dist = player.attack.snapDist
            local distCheckResults = {}
            for i=1,3 do
                for j=1,7 do
                    local checkVec = player.attackDir:normalized() * dist/4
                    if i==2 then checkVec = player.attackDir:normalized() * (dist*0.75) end
                    if i==3 then checkVec = player.attackDir:normalized() * dist end
                    if j==2 then checkVec:rotateInplace(math.pi/32) end
                    if j==3 then checkVec:rotateInplace(math.pi/12) end
                    if j==4 then checkVec:rotateInplace(math.pi/-32) end
                    if j==5 then checkVec:rotateInplace(math.pi/-12) end
                    if j==6 then checkVec:rotateInplace(math.pi/6) end
                    if j==7 then checkVec:rotateInplace(math.pi/-6) end
                    local en = world:queryLine(px, py, px + checkVec.x, py + checkVec.y, {'Enemy', 'Enemy2'})
                    if #en>0 then distCheckResults[i] = true end
                end
            end

            if distCheckResults[1] then -- no boost
                boostMult = 0
            elseif distCheckResults[2] then
                boostMult = 1
            elseif distCheckResults[3] then
                boostMult = player.attack.snapMult
            end
        end

        if player.attack.boost then
            local boostAmt = player.attack.boost * boostMult
            player:applyLinearImpulse((player.attackDir*boostAmt):unpack())
        elseif player.attack.maxDashSpeed and player.attack.tweenTime then
            if player.dashTween then player.dashTween:stop() player.dashTween = nil end
            if player.attack.startDashSpeed then
                player.dashingSpeed = player.attack.startDashSpeed
            else
                player.dashingSpeed = 0
            end
            player.dashingSpeed = 0
            local easeType = "quadin" if player.attack.easingType then easeType = player.attack.easingType end
            player.dashTween = flux.to(player, player.attack.tweenTime, {dashingSpeed = (player.attack.maxDashSpeed * boostMult)}):ease(easeType)
        end
    end

end

function player:setAttack(args)
    if self.sequence and self.sequenceIndex >= 0 then
        self.sequenceIndex = self.sequenceIndex + 1 -- index starts at 0, so this brings us to 1 to start
        if self.sequenceIndex > #self.sequence then
            self.sequenceIndex = -1
            self.sequence = nil
            self:setAttack()
            return
        end
        self.attack = self.sequence[self.sequenceIndex]
        return
    end
    local curWep = weapons[weapons:getIndex(player.weaponUniqueId)]
    if not curWep then curWep = weapons[weapons:getIndex(player.defaultWeaponUniqueId)] end
    if curWep then
        if args and args.charge and curWep.chargeAttack then
            player.attack = curWep.chargeAttack
        elseif (curWep.maxCharges and curWep.charges <= 0) and curWep.chargelessAttack then
            player.attack = curWep.chargelessAttack
        elseif curWep.attack then
            player.attack = curWep.attack
        elseif curWep.attackListChargeMap then -- chargeless attack gets triggered above
            player.attack = curWep.attackListChargeMap[math.floor(curWep.charges)]
        else
            if not curWep.attackList then
                curWep:drop()
                curWep = weapons[weapons:getIndex(player.defaultWeaponUniqueId)]
            end
            if curWep and curWep.attackList then
                player.combo = player.combo + 1 -- if player wasn't attacking, combo was 0, now it's 1
                if player.combo > #curWep.attackList then player.combo = 1 end
                player.attack = curWep.attackList[player.combo]
            end
        end
    end

    if player.attack.needsFire and not curWep.onFire and not curWep.hot and curWep.chargelessAttack then
        player.attack = curWep.chargelessAttack
    end
end

function player:startPickup()
    if player.inWater then return end
    if player.state ~= 0 and player.state ~= 0.5 then player:addToBuffer("pickup") return end
    if player.hasWeapon and boomerangHeldCheck() then player:dropWeapon() end -- drop weapon immediately
    player.state = 15
    player:changeAnim("pickup")
    player.animTimer = 0.12
end

function player:attemptPickup()

    for _,w in ipairs(weapons) do
        if w.glow then
            if w.electrified and not allItems['gauntlets'] then
                player:shock(1)
                player:setLinearVelocity(0,0)
                return
            end
            if player.hasWeapon then player:dropWeapon() end
            w:interact()
        end
    end

end

function player:throwWeapon()
    player.throwingWeapon = true
    player.state = 2
    player.animTracker = 0
    player:setAttackDir()

    player:changeAnim("attack")
    player:applyLinearImpulse((player.attackDir*10):unpack())

    player.animTimer = 0.12
end
