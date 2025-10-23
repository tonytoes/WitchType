Camera = require "libraries/hump/camera"
cam = Camera(0, 0, scale)
cam.smoother = Camera.smooth.damped(8)
cam.scaleAdjust = 0
cam.tween = nil
cam.focus = nil
cam.attDist = 0

function cam:update(dt)

    local camX, camY = player:getPosition()
    if player.state == 14 and player.camOffY ~= 0 then
        camY = camY + player.camOffY
    end

    -- if this is nil, use player's position. Otherwise...
    if cam.focus == "playerDialogue" then
        -- focus is between the player and the focus position
        local midpt = midpoint(player:getX(), player:getY(), player.focusX, player.focusY)
        camX = midpt.x
        camY = midpt.y + 6
    elseif cam.focus == "playerItemGet" then
        camX = player:getX()
        camY = player:getY() + 6
    elseif cam.focus == "focusFocus" then
        -- focus is on the focus position
        camX = player.focusX
        camY = player.focusY
    elseif cam.focus == "pause" then
        -- focus is on the focus position
        local xOff = 72 * pause.side
        camX = player:getX() + xOff
        camY = player:getY()
    else
        local lookVec = vector(0, 0)
        local maxDist = 999

        -- follow player, look at attDir if charging
        if player.chargeAiming or player.chargeAttacking or player.attLookFactor > 0 or (player.state == 2 and boomerangHeldCheck()) then
            maxDist = 24
            lookVec = player.attackDir:normalized()
            if player.chargeAttacking then
                cam.attDist = maxDist
            elseif player.attLookFactor > player.mainHold then
                cam.attDist = ((player.attLookFactor - player.chargeThresh) * 120)
            elseif player.magicHold > 0 then --player.sideHold > 0 then
                cam.attDist = ((player.magicHold - player.chargeThresh) * 120)
            end
            cam.smoother = Camera.smooth.damped(8)
        --[[elseif player.state >= 50 then
            maxDist = 24
            cam.attDist = cam.attDist + 80*dt
            lookVec = player.attackDir:normalized()
            cam.smoother = Camera.smooth.damped(3)
        else
            maxDist = 24
            cam.attDist = cam.attDist + 80*dt
            lookVec = player.lastMoveDir:normalized()
            if not player.walking then cam.attDist = cam.attDist - 160*dt end
            cam.smoother = Camera.smooth.damped(3)

            if curtain.state > 0 then
                cam.smoother = Camera.smooth.damped(16)
            end]]
        end

        if cam.attDist > maxDist then cam.attDist = maxDist end
        
        if cam.attDist < 0 then
            cam.attDist = 0
        end

        lookVec = lookVec * cam.attDist

        camX = player:getX() + lookVec.x
        camY = player:getY() + lookVec.y + player.camOffY
    end

    if gamestate < 1 then
        cam.fixedX = -1
        cam.fixedY = -1
        cam:zoomTo(scale*mainMenuScaleFactor)
        cam:lookAt(0, 0)
        return nil
    end

    if cam.scaleAdjust ~= 0 then
        cam:zoomTo(scale+cam.scaleAdjust)
    end

    camX, camY = cam:getBorderPosition(camX, camY)

    -- if there's a pin, this overwrites everything
    if pin then camX = pin.x camY = pin.y end

    cam:lockPosition(camX, camY)
  
    -- cam.x and cam.y keep track of where the camera is located
    -- the lookAt value may be moved if a screenshake is happening, so these
    -- values know where the camera should be, regardless of lookAt
    cam.x, cam.y = cam:position()
    
end

function cam:getBorderPosition(tryX, tryY)
    local camX = tryX
    local camY = tryY

    -- This section prevents the camera from viewing outside the background
    -- First, get width/height of the game window, divided by the game scale
    local w = love.graphics.getWidth() / scale
    local h = love.graphics.getHeight() / scale

    -- Get width/height of background
    local mapW = gameMap.width * gameMap.tilewidth
    local mapH = gameMap.height * gameMap.tileheight

    -- Left border
    if camX < w/2 then
        camX = w/2
    end

    -- Top border
    if camY < h/2 then
        camY = h/2
    end

    -- Right border
    if camX > (mapW - w/2) then
        camX = (mapW - w/2)
    end
    -- Bottom border
    if camY > (mapH - h/2) then
        camY = (mapH - h/2)
    end

    return camX, camY
end

function cam:fluxZoom(focusVal, time, args)
    local scVl = 1.5
    if focusVal then
        cam.focus = focusVal
        if focusVal == "playerDialogue" then scVl = 2 end
    else
        cam.focus = nil
    end

    if args and args.scale then scVl = args.scale end

    local totalTime = 0.5
    if time then totalTime = time end
    if self.tween then self.tween:stop() end
    self.tween = flux.to(cam, totalTime, {scaleAdjust = scVl}):ease("sineout")
end

function cam:fluxUnzoom(time)
    cam.focus = nil
    cam.smoother = Camera.smooth.damped(8)
    local totalTime = 0.5
    if time then totalTime = time end
    if self.tween then self.tween:stop() end
    self.tween = flux.to(cam, totalTime, {scaleAdjust = 0}):ease("sineout")
end
