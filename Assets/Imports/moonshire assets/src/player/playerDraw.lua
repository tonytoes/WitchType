function player:draw(layerId)
    if debug.hidePlayer then return nil end

    -- during cutscene (like elevators) directly tie shadow to the player
    if elevators.moving and (layerId == "body") then
        drawPlayerShadow()
        setWhite()
    end

    if player.state >= 14 and player.state < 15 then return end
    if player.stunTimer > 0 then
        love.graphics.setColor(223/255,106/255,106/255,1)
    elseif player.damagedTimer > 0 then
        local alpha = 0.8
        if player.state == 0.5 then alpha = 0.85 end
        if player.damagedBool < 0 then
            alpha = 0.55
            if player.state == 0.5 then alpha = 0.65 end
        end
        love.graphics.setColor(1,1,1,alpha)
    else
        love.graphics.setColor(1,1,1,1)
    end

    local px = player.x
    local py = player.y

    if player.stunTimer > 0 then love.graphics.setShader(shaders.whiteout) end

    player.scaleX = player.dir.x
    if player.dir.x ~= 0 then
        if player.scaleX < 0 then player.scaleX = -1 elseif player.scaleX > 0 then player.scaleX = 1 end
        player.lastScaleX = player.scaleX
    else
        player.scaleX = player.lastScaleX
    end

    local animSpr = sprites.player.full
    if layerId then animSpr = sprites.player[layerId] end
    if not animSpr then print('no sprite for layer: ' .. layerId) end
    player.anim:draw(animSpr, px, py, nil, player.scaleX, 1, player.width/2, player.height-2)

    love.graphics.setShader()

    if layerId == "body" then
        if player.shockTimer > 0 then
            local shockVec = vector(player.lastMoveX, player.lastMoveY):rotated(math.pi/2):normalized() * player.shockOffVal
            px = px + shockVec.x
            py = py + shockVec.y
        end
    
        if player.resource.state > 0 then
            local xOff = 0
            love.graphics.setColor(1,1,1, player.resource.alpha)
            if player.resource.spr then
                if player.resource.count > 1 then xOff = -5.5 end
                love.graphics.draw(player.resource.spr, px + xOff, py - 9 + player.resource.y, nil, 1, 1, player.resource.spr:getWidth()/2, player.resource.spr:getHeight()/2)
                if player.resource.count > 1 then
                    love.graphics.setFont(fonts.resourceCount)
                    love.graphics.setColor(0,0,0, player.resource.alpha)
                    love.graphics.print(player.resource.count, px - xOff/2, py - 16 + player.resource.y)
                    love.graphics.setColor(1,1,1, player.resource.alpha)
                    love.graphics.print(player.resource.count, px - xOff/2, py - 17 + player.resource.y)
                end
            end
            setWhite()
        end

        if player.shockTimer > 0 then
            player.electricAnim:draw(player.electricSheet, player:getX(), player:getY(), player.electricRot, 1, 1, 8, 8)
        end
        player:itemGetDraw()
    end
end

-- This function is for when the player walks, it has a bounce to the animation
-- the weaponY is the offset of the weapon sprite to match the bounce
function player:setWeaponOffset()
    player.weaponX = 0
    player.weaponY = 0

    if player.animStr == "walk" then
        if (player.anim.position == 3 or player.anim.position == 6) then
            player.weaponY = 1
        end

        if player.animUrg > 0 then  -- looking upwards
            if (player.anim.position == 3) then
                --player.weaponX = 0
            end
            if (player.anim.position == 6) then
                --player.weaponX = 0
            end
        end
    end

    if player.animStr == "stop" then
        if (player.anim.position == 1 or player.anim.position == 2) then
            player.weaponY = 1
        end
    end

    if player.chargeAiming then
        if player.attackDir.y < player.lookUpThreshold then
            player.weaponLayer = -1
            player.weaponY = player.weaponY - 1
        else
            player.weaponLayer = 1
        end
    else
        if player.lastMoveDir.y < player.lookUpThreshold then
            player.weaponLayer = -1
            player.weaponY = player.weaponY - 1
        else
            player.weaponLayer = 1
        end
    end
end

function player:itemGetDraw()
    if not player.itemGetId then
        return
    end
    local x_ = player:getX()
    local y_ = player:getY()
    local scale_ = player.itemGetScale
    local alpha_ = player.itemGetAlpha
    local yOff_ = player.itemGetOffY
    love.graphics.setColor(1, 1, 1, alpha_)
    drawLoot(player.itemGetId, x_, y_+yOff_, scale_)
    love.graphics.setColor(1, 1, 1, 1)
end

function player:drawAiming()
    --[[if player.chargeAiming then
        local aimScale = 1
        local aimRot = getRadFromVector(player.attackDir)
        local dist = sprites.playerAim:getWidth() + 5
        love.graphics.draw(sprites.playerAim, player:getX(), player:getY(), aimRot, aimScale, aimScale*0.75, 0, sprites.playerAim:getHeight()/2)
        
        local csrSpr = sprites.playerAimCursor
        love.graphics.draw(csrSpr, player:getX() + player.attackDir.x*dist, player:getY() + player.attackDir.y*dist, player.throwAimCursorRot, 0.85, nil, csrSpr:getWidth()/2, csrSpr:getHeight()/2)
    end]]
    if player.chargeAiming then
        local aimScale = 1.15
        local aimRot = getRadFromVector(player.attackDir)
        local xtra = 0 if math.ceil(player.throwAimCursorExtra) % 2 == 0 then xtra = 2 end
        local dist = 16 + xtra
        local csrSpr = sprites.playerAimCursor2
        love.graphics.draw(csrSpr, player:getX() + player.attackDir.x*dist, player:getY() + player.attackDir.y*dist, aimRot, aimScale, nil, csrSpr:getWidth()/2, csrSpr:getHeight()/2)        
    end
end

function player:drawGivenSprites(x, y, layerSprites)
    if not layerSprites then return end

    local extraFactor = 1 if gamestate < 1 then extraFactor = mainMenuScaleFactor end
    local partList = { "whiteBase", "feet", "belly", "arm", "body", "head", "eyes" }
    for i, part in ipairs(partList) do
        local spr = layerSprites[part]
        if spr then player.fakeAnim:draw(spr, x, y, nil, scale * extraFactor, scale * extraFactor, player.width/2, player.height-2) end
    end
end

playerEyesLayer = {}
playerEyesLayer.colorImmune = true
playerEyesLayer.draw = function() player:draw("eyes") end

playerHeadLayer = {}
playerHeadLayer.colorImmune = true
playerHeadLayer.draw = function() player:draw("head") end

playerBodyLayer = {}
playerBodyLayer.colorImmune = true
playerBodyLayer.draw = function() player:draw("body") end

playerArmLayer = {}
playerArmLayer.holding = false
playerArmLayer.colorImmune = true
playerArmLayer.draw = function()
    if player.hasWeapon and boomerangHeldCheck() then
        playerArmLayer.holding = true
    else
        playerArmLayer.holding = false
    end

    if playerArmLayer.holding then player:draw("armHold") else player:draw("arm") end
end

playerBellyLayer = {}
playerBellyLayer.colorImmune = true
playerBellyLayer.draw = function() player:draw("belly") end

playerFeetLayer = {}
playerFeetLayer.colorImmune = true
playerFeetLayer.draw = function() player:draw("feet") end
