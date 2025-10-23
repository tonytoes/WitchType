function player:move(dt)

    local inputX, inputY = input:get 'move'
    player.dir = vector(inputX, inputY):normalized()

    if player.dir.x ~= 0 or player.dir.y ~= 0 then
        player.lastMoveDir = player.dir
    end

    if player.walking then
        if data.states.tutorials then data.states.tutorials.walk = true end
        if player.inWater then
            player:changeAnim("swim")
        else
            player:changeAnim("walk")
        end
    end

    local spdVal = player.speed + (player.speed * (misc:getAssist("movementSpeed")/10))
    if player.chargeAiming or player.climbing then spdVal = player.speed * 0.32 end
    local vec = player.dir * spdVal
    if not player.inWater then
        if vec.x ~= 0 or vec.y ~= 0 then
            player:setLinearVelocity(vec.x, vec.y)
        end
    else
        vec:normalizeInplace()
        vec = vec*45
        if vec.x ~= 0 or vec.y ~= 0 then
            player:applyForce(vec.x, vec.y)
        end
    end

    if player.walking and not player.inWater then
        player.dustTimer = player.dustTimer - dt
        if player.dustTimer < 0 then
            player.dustTimer = 0.32
            effects:spawn("walkDust", player:getX(), player:getY()+4, {dir = vec:normalized()})

            local stepVal = math.random(3, 4)
            local range = math.random()/4
            dj.play(sounds.player.step[stepVal], "static", "effect", 1, 1.25 + range)
        end
    else
        player.dustTimer = 0
    end

    if player.dir.x == 0 and player.dir.y == 0 then
        if player.walking then
            player.walking = false
            player:justStop()
        end
    else
        player.walking = true
    end

    -- Slide into water (don't slide up)
    if not player.inWater and player.platformId == 0 then
        local px, py = player:getPosition()
        local checkRad = 4
        local checkDist = 12
        local slideSpeed = 20
        local fx = 0
        local fy = 0
        if inWater(px, py, checkRad, true) then
            -- standing on a solid surface, no sliding
        else
            if inWater(px + checkDist, py, checkRad) then
                --player:setX(px + slideSpeed*dt)
                fx = 100
            elseif inWater(px - checkDist, py, checkRad) then
                fx = -100
            elseif inWater(px, py + checkDist, checkRad) then
                fy = 100
            elseif inWater(px + checkDist*0.8, py + checkDist*0.8, checkRad) then
                fx = 80
                fy = 80
            elseif inWater(px - checkDist*0.8, py + checkDist*0.8, checkRad) then
                fx = -80
                fy = 80
            end
            player:applyForce(fx, fy)

            -- New respawn point if drown/burn/fall
            if fx == 0 and fy == 0 then
                player.notSlidingX = px
                player.notSlidingY = py
            end
        end
    end

    if player.chargeAiming then
        player.dir = player.attackDir
    end

end

function player:cancelCharge()
    if player.chargeAiming then
        player.chargeAiming = false
        player.mainHold = 0
        player.sideHold = 0
        player.magicHold = 0
        if not player.chargeAttacking then
            cam:fluxUnzoom(0.5)
        end
    end
end

function player:finishChargeAttack()
    if player.chargeAttacking then
        player.chargeAttacking = false
        --player.mainHold = 0
        --player.sideHold = 0
        --player.magicHold = 0
        player.attLookFactor = 1 -- 1 second, goes to 0
        cam:fluxUnzoom(0.5)
    end
end

-- TODO: I think you are still invincible while standing up from a roll
-- maybe that's okay?
function player:roll()
    if player.inWater then return end
    if (player.state ~= 0 and player.state ~= 5) or player.rollDelayTimer > 0 then
        player:addToBuffer("roll")
        return
    end

    player:cancelSpell() -- if casting, cancel spell

    --if pause.active then player:justIdle() return end

    local inputX, inputY = input:get 'move'
    player.dir = vector(inputX, inputY):normalized()

    if player.dir.x == 0 and player.dir.y == 0 then return end -- must have some direction to roll

    player:cancelCharge()

    player.state = 0.5
    player.animTimer = 2
    player.notSlidingX = player:getX()
    player.notSlidingY = player:getY()
    --if player.damagedTimer < player.rollInvincibilityTime then player.damagedTimer = player.rollInvincibilityTime end

    player:changeAnim("roll")
    player:setLinearDamping(2)
    player.slippery = true
    local dirVec = player.dir:normalized()*((player.speed*2) + (player.speed*2 * (misc:getAssist("movementSpeed")/10)))
    player:setLinearVelocity(dirVec.x, dirVec.y)
    player.rollVec = dirVec

    local range = math.random()/5
    dj.play(sounds.player.roll, "static", "effect", 1, 1+range)
    effects:spawn("walkDust", player:getX(), player:getY()+6, {dir = dirVec, scale = 0.8})
    effects:spawn("walkDust", player:getX(), player:getY()+6, {dir = dirVec:rotated(math.pi/8), scale = 0.6})
    effects:spawn("walkDust", player:getX(), player:getY()+6, {dir = dirVec:rotated(math.pi/-8), scale = 0.6})
    effects:spawn("walkDust", player:getX(), player:getY()+6, {dir = dirVec:rotated(math.pi/4), scale = 0.6})
    effects:spawn("walkDust", player:getX(), player:getY()+6, {dir = dirVec:rotated(math.pi/-4), scale = 0.6})
end

function player:finishRollAnim()
    player:resetToNormal()
    player.rollDelayTimer = player.rollDelayMax
end

function player:rollUpdate(dt)

    player:checkTransition()

    if player.inWater then
        player.animTimer = -1
    end

    local mainAction = input:get 'mainAction'
    if mainAction > 0 then
        --player.holdMain = player.holdMain + dt
    end

    player.animTimer = player.animTimer - dt
    if player.animTimer < 0 then
        player.state = 0
        player.animTimer = 0
        player.rollDelayTimer = player.rollDelayMax
        
        --[[
        if mainAction > 0 and player.holdMain > 0.12 then
            player:prepCast()
        end

        if spellAction > 0 and player.holdSpell > 0.12 then
            player:prepCast()
        end]]
    end

    if player:enter('Wall') then
        local vx, vy = player:getLinearVelocity()
        local newVec = player.rollVec:rotated(math.pi)/4

        local w = player:getEnterCollisionData('Wall')
        if w and w.collider.danger > 0 then
            player:hurt(w.collider.danger, w.collider:getX(), w.collider:getY())
        end
        if w and w.collider.onHit then w.collider:onHit() end

        player:justStop()
        player:setLinearVelocity(newVec:unpack())
        player.state = 0.6
        player.animTimer = 0.3
        player.walking = false
        shake:standard(1)
        dj.play(sounds.player.recoil, "static", "effect")
    end

    if player:enter('Prop') then
        local w = player:getEnterCollisionData('Prop')
        if w.collider and not w.collider.dead then w.collider:hit() end
    end

end
