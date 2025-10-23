function player:update(dt)

    if player.mainHold > 0.3 and player.state == 0 then
        --player.castType = 1
        --player.sideHold = 0
        --player:prepCast()
    end
    if player.sideHold > 0.3 and player.state == 0 then
        player.castType = 2
        player.mainHold = 0
        player.magicHold = 0
        player:prepCast()
    end
    if player.magicHold > 0.3 and (player.state == 0 or player.state == 0.5) then
        player.castType = 1
        player.mainHold = 0
        player.sideHold = 0
        player:prepCast()
    end

    love.mouse.setVisible( settings.useMouse )
    if player.health <= 0 and player.state < 14 then
        player:die()
        return
    end

    if player.sideDoubleTapDt > 0 then player.sideDoubleTapDt = player.sideDoubleTapDt - dt end
    if player.sideDoubleTapDt < 0 then player.sideDoubleTapDt = 0 end

    if player.attLookFactor > 0 then player.attLookFactor = player.attLookFactor - dt end
    if player.attLookFactor < 0 then player.attLookFactor = 0 end

    if player.spellBuffer > 0 then player.spellBuffer = player.spellBuffer - dt end
    if player.spellBuffer < 0 then player.spellBuffer = 0 end

    player.platformId = 0
    if player.state ~= 4.2 then
        player.platformId = getPlatform(player:getX(), player:getY(), 2)
    end

    if player.holding == "jelly" then
        self.electricAnim:update(dt)
    end
    
    player.skipAttack = false -- used for interacting with things

    player:setWeaponOffset()
    lightSources:adjustPlayerLight()
    
    if player.shockTimer > 0 then
        player.shockTimer = player.shockTimer - dt
        player.shockAnimTimer = player.shockAnimTimer + dt

        if player.shockAnimTimer > 0.05 then
            player.shockOffVal = player.shockOffVal * -1
            player.shockAnimTimer = 0
        end

        self.electricAnim:update(dt)

        return
    end
    if player.shockTimer < 0 then
        player.shockTimer = 0
        player.shockAnimTimer = 0
        player:hurt(1, nil, nil, {electric=true})
    end

    -- used for charge attacks
    if boomerangHeldCheck() and player.mainHold > player.chargeThresh then
        if not player.chargeAiming then
            --sem:playSound(sounds.player.charge)
            player.chargeAiming = true
            local zoomFac = player.chargeZoomFactor
            player.throwAimCursorExtra = 0
            cam:fluxZoom(nil, 0.5, {scale=zoomFac})
        end
        player.throwAimCursorRot = player.throwAimCursorRot + dt*6
    else
        player:cancelCharge()
    end

    if player.state ~= 13 then
        -- Player enter/exit water logic
        local newWater = inWater(player:getX(), player:getY(), 6)
        if player.platformId > 0 then player.inWater = false newWater = false end
        if player.inWater ~= newWater then
            player.inWater = newWater
            player.state = 0 -- Maybe dangerous?
            if allItems["swim"] then player.drownTimer = 0 else player.drownTimer = player.maxSwimTime end -- 1.5 secnd
            if player.inWater then
                player:cancelCharge()
                if gameMap.isSky then
                    player:justIdle()
                    player:fall()
                else -- regular water
                    player:justIdle()
                    local range = math.random()/4
                    dj.play(sounds.player.splash, "static", "effect", 1, 1+range)
                    particleEvent("splash", player:getX(), player:getY())
                end
            end
        end
        local onClimbable = inWater(player:getX(), player:getY(), 3, "climb")
        if player.climbing and not onClimbable then
            player.climbing = false
        elseif onClimbable and not player.climbing then
            player.climbing = true
            player:setLinearVelocity(0, 0)
        end
    end

    -- water movement logic
    if player.inWater then
        if player.hasWeapon then
            local wep = weapons[weapons:getIndex(player.weaponUniqueId)]
            wep:extinguish()
        end

        player.speed = 40
        local pvx, pvy = player:getLinearVelocity()
        pvx = math.abs(pvx)
        pvy = math.abs(pvy)
        if pvx > 6 or pvy > 6 then
            player.rippleTimer = player.rippleTimer - dt
            if player.rippleTimer < 0 then
                player.rippleTimer = 0.3
                effects:spawn("ripple", player:getX(), player:getY()+4)
            end
        end
    else
        player.speed = player.baseSpeed
    end

    if gamestate ~= 1 then return end

    if player.holdingAnim then player.holdingAnim:update(dt) end

    if player.stunTimer > 0 then
        player:clearBuffer()
        player.stunTimer = player.stunTimer - dt
    end
    if player.stunTimer < 0 then
        player.stunTimer = 0
        if player.state == 10 then
            player.state = 0
            player:setLinearVelocity(0, 0)
        end
    end
    
    if player.damagedTimer > 0 then
        player.damagedTimer = player.damagedTimer - dt
        player.damagedFlashTime = player.damagedFlashTime - dt
        if player.damagedFlashTime < 0 then
            player.damagedFlashTime = 0.05
            player.damagedBool = player.damagedBool * -1
        end
    end
    if player.damagedTimer < 0 then
        player.damagedTimer = 0
        --world:collisionClear()
        world:collisionEventsClear()
    end

    if player.rollDelayTimer > 0 then
        player.rollDelayTimer = player.rollDelayTimer - dt
    end

    if player.postBuffer > 0 then
        player.postBuffer = player.postBuffer - dt
    end

    if player.swordHitboxTimer > 0 then
        player.swordHitboxTimer = player.swordHitboxTimer - dt
    end

    if player.tinyTimer > 0 then
        player.tinyTimer = player.tinyTimer - dt
    end

    if player.reloadTimer > 0 then
        player.reloadTimer = player.reloadTimer - dt
    end
    if player.reloadTimer < 0 then player.reloadTimer = 0 end

    if player.slashTimer > 0 then
        player.slashTimer = player.slashTimer - dt
    end
    if player.slashTimer < 0 then
        player.slashCount = 0
        player.slashTimer = 0
    end

    if player.drownTimer > 0 then
        player.drownTimer = player.drownTimer - dt
        if player.inWater == false then
            player.drownTimer = 0
        end
    end
    if player.drownTimer < 0 then
        player.drownTimer = 0
        if not allItems["swim"] then
            if player.state ~= 14 and player ~= 14.5 and player ~= 14.6 then
                player:drown()
            else
                player:respawnWater()
            end
        end
    end

    if player.state ~= 0 then player:cancelCharge() end
    if not (player.state >= 51 and player.state < 60) then
        player:finishChargeAttack()
    end

    if player.state == 0 then

        player.dashingSpeed = 0 -- used for attacking, should be 0 otherwise
        player:setLinearDamping(player.baseDamping)
        player.slippery = false
        if player.inWater then player:setLinearDamping(player.baseDamping/2) player.slippery = true end

        player.slashCount = 0 -- slash count only increases during sword state
        player.animCounter = 0 -- same here :3
        player.throwingWeapon = false

        if pause.state > 0 then return end
    
        player:move(dt)
        player:checkDamage()
        player:checkTransition()

        player.sequence = nil
        player.sequenceIndex = -1

        if player.chargeAiming then
            player.throwAimCursorExtra = player.throwAimCursorExtra + 3*dt
            player:setAttackDir()
            if player.walking then
                player:changeAnim("walk")
            else
                player:changeAnim("idle")
            end
        end

        player.combo = 0

    elseif player.state == 0.5 then -- rolling

        player:rollUpdate(dt)

    elseif player.state == 0.6 then -- recoil

        player.anim:update(dt)

        player.animTimer = player.animTimer - dt
        player:checkDamage()

        if player.animTimer < 0 then
            player.state = 0
        end

    elseif player.state >= 1 and player.state < 2 then -- sword

        --player:swordUpdate(dt)
    
    elseif player.state == 2 then -- throwing weapon

        player.animTracker = player.animTracker + dt

        if player.animTimer > 0 then
            player.animTimer = player.animTimer - dt
        end
        if player.animTimer < 0 then
            player.animTimer = 0

            local wep = weapons[weapons:getIndex(player.weaponUniqueId)]

            if wep.shooty and not player.throwingWeapon then
                if wep.useDur and wep.dur <= 0 then return end
                wep:shoot()
                weapons:hurtCurrentWeapon()
            elseif wep.throw then
                wep:throw()
            end
        end

    elseif (player.state >= 5 and player.state < 6) and player.state ~= 5.05 then -- casting spell

        player.animTracker = player.animTracker + dt
        player:castUpdate(dt)
        if allGems.sapphire and player.damagedTimer < 1 then
            player.damagedTimer = 1
        end
    
    elseif player.state == 5.05 then

        player.animTracker = player.animTracker + dt
        if player.animTracker < 0.22 then
            player.anim:update(dt)
        end

        local mainAction = input:get 'mainAction'
        if mainAction > 0 then
            -- still holding down the button
        else
            player:cast()
        end

    elseif player.state == 12 then -- transition
        player:setLinearVelocity(0, 0)
        player:resetAnimation()
    elseif player.state == 13 then
        if player.cutsceneParent then
            if player.cutsceneParent:startswith("elevator_") then
                for _,e in ipairs(elevators) do
                    -- get the content after the _
                    local eleName = player.cutsceneParent:sub(10)
                    if e.id == eleName then
                        player.cutsceneX = e.x
                        player.cutsceneY = e.y
                    end
                end
                player:setPosition(player.cutsceneX, player.cutsceneY)
            end
        end
        --player:setPosition(player.cutsceneX, player.cutsceneY)
    elseif player.state == 13.5 then
        player:changeAnim("walk")
        player:setPosition(player.cutsceneX, player.cutsceneY)
    elseif player.state == 15 then
        player:checkDamage()
        player:checkTransition()

        if player.animTimer > 0 then
            player.animTimer = player.animTimer - dt
        end
        if player.animTimer < 0 then
            player.animTimer = 0
            player:attemptPickup()
        end

    elseif player.state == 51 then

        player.anim:update(dt)

        if player.dashingSpeed then
            player:applyForce(((player.attackDir:normalized())*player.dashingSpeed):unpack())
        end

    elseif player.state >= 51 and player.state < 60 then

        player:checkDamage()

    end

    player:updateAnim(dt)
    player:processBuffer(dt)
    player:checkForFrameTrigger()

    if player.strikeTimer > 0 then
        player.strikeTimer = player.strikeTimer - dt
    end
    if player.strikeTimer < 0 then
        player.strikeTimer = 0
        effects2:spawn("playerLightning", player.strikeX, player.strikeY)
    end

    if player.resource.state == 1 then
        player.resource.timer = player.resource.timer - dt
        if player.resource.timer < 0 then
            player.resource.state = 2
            player.resource.timer = 0
            if player.resource.tween then player.resource.tween:stop() end
            player.resource.tween = flux.to(player.resource, player.resource.tweenTime, {y = 0, alpha = 0}):ease("sinein"):oncomplete(function()
                player.resource.state = 0
                player.resource.count = 0
            end)
        end
    end

    if player.mana < 0 then player.mana = 0 end
    if player.mana > player.maxMana then player.mana = player.maxMana end

    if player.climbing then player.lastMoveDir = vector(0, -1) end

    player.x = player:getX()
    player.y = player:getY() + player.physHeight/2

end

function player:updateAnim(dt)

    if player.state ~= 5.05 then
        if player.chargeAiming or player.climbing then
            player.animModifier = 0.65
        else
            player.animModifier = 1
        end

        -- feel free to speed this up with player.animModifier
        player.anim:update(dt * player.animModifier)
    end

end

function player:checkForFrameTrigger()
    if not self.animTriggerFrame then return end
    if self.anim and self.anim.position == self.animTriggerFrame then
        if self.state == 51 then -- windup
            player:doAttack()
        end
    end
end
