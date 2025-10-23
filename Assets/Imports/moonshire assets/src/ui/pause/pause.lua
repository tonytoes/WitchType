pause = {}

function pause:setScale()
    pause.scale = scale*0.95
end

function pause:fullinit()
    pause.hideVal = 0
    pause.x = windowWidth
    pause.y = 8 * scale
    pause.hoverIndex = 0
    pause.hoverText = ""
    pause.titleText = ""
    pause.font = fonts.pause.text
    pause.listenFor = nil
    pause.cursorX = -10
    pause.cursorY = -10
    pause.cursorBtn = nil
    pause.buttons = {}
    pause.panelWidth = 179
    pause.totalTimer = 0
    pause.side = 1
    pause.jewelry = nil -- which piece of jewelry is being worked on
    pause.jewelryIcon = nil -- icon for the jewelry being worked on
    pause.backArrow = false
    pause.cursorAtNewui = false
    pause.prevMouseState = settings.useMouse
    pause:setScale()
    
    -- 0: inactive
    -- 1: items
    -- 2: dyes
    -- 3: settings
    -- 4: controls
    -- 5: keybinds
    -- 6: bind listening
    -- 7: map
    -- 8: gems (not used anymore)
    -- 9: jewelry
    -- 10: multi
    -- 11: invite steam friends
    -- 11.5: waiting for client
    -- 12: join steam friends
    -- 12.5: waiting for host (is this needed?)
    -- 20: debug
    pause.state = 0
    pause.targetState = 1 -- which state to open to when pause menu opens
    
    pause.mapPlayerAnim = anim8.newAnimation(player.grid('1-3', 7), 0.21)
end

function pause:initCursor()
    if settings.useMouse then return end
    pause.cursorX = -10
    pause.cursorY = -10
    if #pause.buttons > 0 then
        pause.cursorAtNewui = false
        pause:findClosestBtn(pause.cursorX, pause.cursorY)
    else
        pause.cursorAtNewui = true
    end
end

function pause:findClosestBtn(posX, posY)
    local closestDist = 99999
    for i,b in ipairs(self.buttons) do
        local dist = distanceBetween(posX, posY, b.x, b.y)
        if dist < closestDist then
            closestDist = dist
            pause.cursorBtn = b
        end
    end
    if pause.cursorBtn then
        pause.cursorX = pause.cursorBtn.x
        pause.cursorY = pause.cursorBtn.y
    end
end

function pause:handleControllerDir(vec)
    if pause.state > 0 and settings.useMouse == false then
        --pause:findClosestBtn(pause.cursorX + vec.x*124, pause.cursorY + vec.y*124)

    end
end

function pause:moveCursor2(dir)
    if settings.useMouse then return nil end
    if self.state == 0 then return nil end
    if #pause.buttons == 0 and #newui.buttons==0 then return nil end
    if pause.cursorAtNewui then return nil end
    local moveVec = getVecFromDirStr(dir)
    local destBtn = nil
    local destNewuiBtn = nil

    if dir == "left" then
        dirVec = vector(-1, 0)
        if pause.hoverIndex == -3 then -- hovering over the top
            pause:shift(-1)
            return nil
        end
    elseif dir == "right" then
        dirVec = vector(1, 0)
        if pause.hoverIndex == -3 then -- hovering over the top
            pause:shift(1)
            return nil
        end
    end

    local lowestY = 9999999
    for _,b in ipairs(pause.buttons) do
        if b.y < lowestY then lowestY = b.y end
    end

    if dir == "up" and (pause.cursorY - lowestY) < 4*pause.scale then
        pause.hoverIndex = -3
        local centerX = pause.x + pause.panelWidth/2 * pause.scale
        pause.cursorX = pause.x + pause.panelWidth/2 * pause.scale + 1
        pause.cursorY = pause.y + 13.5*pause.scale
        sem:playSound(sounds.ui.hoverChange)
        return nil
    end

    -- DYES
    if pause.hoverIndex == -3 and dir == "down" and (pause.state == 1 or pause.state == 2) then
        local btn = pause.buttons[1]
        if btn then
            pause.cursorX = btn.x
            pause.cursorY = btn.y
            return nil
        end
    end

    -- Settings
    --[[if dir == "down" and pause.hoverIndex == -3 and pause.state == 3 then
        pause.hoverIndex = 0
        pause.cursorX = -100
        pause.cursorY = -100
        pause.cursorAtNewui = true
        for _,b in ipairs(newui.buttons) do
            if not b.hover then
                destNewuiBtn = b
                break
            end
        end
        return nil
    end]]

    for g=1,2 do -- only j extend on 2
        for i=1,64 do -- extend outward looking for buttons
            for j=1,12 do -- perpendicular checks for buttons
                if not destBtn and not destNewuiBtn then
                    local checkDist = 5*pause.scale
                    local lookVec = moveVec * (i * checkDist*0.75)

                    local offVec = moveVec:rotated(math.pi/2) * (j/2 * checkDist)
                    if j % 2 == 0 then offVec = offVec * -1 end

                    if g==1 then offVec = offVec/2 end -- ONLY DOING THIS WITH PAUSE

                    -- if moving left or right, don't check the y offset
                    if dir == "left" or dir == "right" then offVec = vector(0,0) end

                    local checkX = self.cursorX + lookVec.x + offVec.x
                    local checkY = self.cursorY + lookVec.y + offVec.y
                    for _,b in ipairs(pause.buttons) do
                        if not b.hover and distanceBetween(checkX, checkY, b.x, b.y) < checkDist then
                            destBtn = b
                            break
                        end
                    end
                    if not destBtn and newui.state > 0 then
                        for _,b in ipairs(newui.buttons) do
                            if not b.hover and distanceBetween(checkX, checkY, b.x, b.y) < checkDist then
                                destNewuiBtn = b
                                break
                            end
                        end
                    end
                end
            end
        end
    end

    local finalDestBtn = destBtn
    if not destBtn then finalDestBtn = destNewuiBtn end
    if finalDestBtn then
        destX = finalDestBtn.x
        destY = finalDestBtn.y

        pause.cursorX = destX
        pause.cursorY = destY

        if destNewuiBtn then
            pause.cursorAtNewui = true
            pause.cursorX = -10
            pause.cursorY = -10
            newui.cursorX = destX
            newui.cursorY = destY
        end
    end
end

function pause:moveCursor(dir)
    if settings.useMouse then return nil end
    if pause.state <= 0 then return nil end
    if pause.moving then return nil end

    local destX = -10
    local destY = -10
    local closestBtn = nil
    local closestDist = 9999
    local dirVec = vector(1, 0)
    local moveCursor = false

    if dir == "down" then
        dirVec = vector(0, 1)
    elseif dir == "up" then
        dirVec = vector(0, -1)
    elseif dir == "left" then
        dirVec = vector(-1, 0)
        if pause.hoverIndex == -3 then -- hovering over the top
            pause:shift(-1)
            return nil
        end
    elseif dir == "right" then
        dirVec = vector(1, 0)
        if pause.hoverIndex == -3 then -- hovering over the top
            pause:shift(1)
            return nil
        end
    end

    dirVec = dirVec * 4*pause.scale
    local lowestY = 9999999
    for _,b in ipairs(pause.buttons) do
        if b.y < lowestY then lowestY = b.y end
        if b.hover then
            -- button is already hovered, don't do anything
        else
            local dist = distanceBetween(pause.cursorX + dirVec.x, pause.cursorY + dirVec.y, b.x, b.y)
            local useBtn = false
            if dist < closestDist then
                if dir == "down" then
                    if b.y > pause.cursorY and (math.abs(b.y - pause.cursorY) > math.abs(b.x - pause.cursorX)) then useBtn = true end
                elseif dir == "up" then
                    if b.y < pause.cursorY and (math.abs(b.y - pause.cursorY) > math.abs(b.x - pause.cursorX)) then useBtn = true end
                elseif dir == "left" then
                    if b.x < pause.cursorX and (math.abs(b.y - pause.cursorY) < math.abs(b.x - pause.cursorX)) then useBtn = true end
                elseif dir == "right" then
                    if b.x > pause.cursorX and (math.abs(b.y - pause.cursorY) < math.abs(b.x - pause.cursorX)) then useBtn = true end
                end
                if useBtn then
                    closestDist = dist
                    closestBtn = b
                    moveCursor = true
                end
            end
        end
    end

    if dir == "up" and math.abs(pause.cursorY - lowestY) < 4*pause.scale then
        pause.hoverIndex = -3
        local centerX = pause.x + pause.panelWidth/2 * pause.scale
        pause.cursorX = pause.x + pause.panelWidth/2 * pause.scale + 1
        pause.cursorY = pause.y + 13.5*pause.scale
        sem:playSound(sounds.ui.hoverChange)
        return nil
    end

    -- Settings
    if dir == "down" and pause.hoverIndex == -3 and pause.state == 3 then
        pause.hoverIndex = 0
        pause.cursorX = -100
        pause.cursorY = -100
        return nil
    end

    -- Gems
    if dir == "down" and pause.hoverIndex == -3 and pause.state == 8 then
        pause.hoverIndex = 1
        local button = pause.buttons[pause.hoverIndex]
        if button then
            pause.cursorX = button.x
            pause.cursorY = button.y
        end
        return nil
    end

    if closestBtn then
        if moveCursor then
            destX = closestBtn.x
            destY = closestBtn.y

            pause.cursorX = destX
            pause.cursorY = destY
        end
    end
end

function pause:toggle()
    if self.state == 0 then
        self:start()
    else
        self:stop()
    end
end

function pause:init()
    pause:setScale()
    pause.x = windowWidth
    pause.y = 0 * pause.scale

    if pause.side == -1 then
        pause.x = -1 * pause.panelWidth * pause.scale
    end

    pause:initButtons()
    pause:initCursor()
end

function pause:start()
    if pause.moving then return nil end
    pause.state = pause.targetState
    pause.side = 1
    pause.jewelry = ""
    pause.moving = true

    if math.abs( player:getX() - gameMap.pixelWidth ) < 140 then
        pause.side = -1
    end

    pause:init()
    initFonts()
    player.state = 13
    player:justStop()
    pause.totalTimer = 0

    cam:fluxZoom("pause", 0.4)
    dj.play(sounds.ui.menuOpen, "static", "effect")

    local pnlwdth = pause.panelWidth * pause.scale
    local destX = windowWidth - pnlwdth - 0*pause.scale
    if pause.side == -1 then
        destX = 30*pause.scale
    end
    flux.to(pause, 0.4, {x = destX}):ease("quadout"):oncomplete(function()
        pause.moving = false
        pause:initButtons()
        pause:initCursor()
    end)
end

function pause:stop()
    if pause.state <= 0 then return end
    if pause.moving then return nil end

    local hide = pause.hideVal
    if pause.state >= 3 then
        hide = hide * 2
        pause.state = 3.5
    else
        pause.moving = true
    end

    player.state = 0

    newui:stop()
    cam:fluxUnzoom()
    dj.play(sounds.ui.menuClose, "static", "effect")

    local destX = windowWidth
    if pause.side == -1 then
        destX = -1 * pause.panelWidth * pause.scale
    end
    flux.to(pause, 0.4, {x = destX}):ease("quadout"):oncomplete(function()
        pause.moving = false
        pause.state = 0
    end)
end

function pause:quickStop()
    pause.state = 0
    removeTable(pause.buttons)
    cam:fluxUnzoom()
end

function pause:stopForSettings()
    pause.state = 0
    removeTable(pause.buttons)
end

function pause:backArrowPressed()
    if self.state == 8 then
        pause.state = 1
        pause:initButtons()
    elseif self.state == 10 then
        pause.state = 1
        pause:initButtons()
        newui:stop()
    elseif self.state == 11 or self.state == 12 then
        if newui.confirmArgs then -- back out of confirm
            newui:start(newui.id, {back=true})
        else
            pause.state = 10
            newui:start("multi", {back=true})
        end
    elseif self.state == 11.5 or self.state == 12.5 then
        pause.state = 1
        pause:initButtons()
        newui:stop()
    elseif newui.state > 0 then
        if newui.confirmArgs then -- backing out of a confirm
            newui:start(newui.id, {back=true})
        else -- going back to prevId
            newui:start(newui.prevId, {back=true})
        end
    end
end

function pause:handleClick()
    if pause.moving then return nil end
    if self.state > 0 then
        if self.hoverIndex > 0 then
            local button = self.buttons[self.hoverIndex]
            button:click()
        elseif self.hoverIndex == -1 then
            if pause.backArrow then
                pause:backArrowPressed()
            else
                pause:shift(-1)
            end
        elseif self.hoverIndex == -2 then
            pause:shift(1)
        elseif self.hoverIndex == -3 then -- controller hovering over the top
            if pause.backArrow then
                pause:backArrowPressed()
            else
                pause:shift(1)
            end
        end
    end
end

function pause:shift(shiftVal)
    if not shiftVal then shiftVal = 1 end

    if self.state == 10 then
        self.state = 1
    elseif debug.active then

        if shiftVal > 0 then
            if self.state == 1 then
                self.state = 2
            elseif self.state == 2 then
                self.state = 3
            elseif self.state == 3 then
                self.state = 20
            elseif self.state == 20 then
                self.state = 1
            end
        else
            if self.state == 1 then
                self.state = 20
            elseif self.state == 2 then
                self.state = 1
            elseif self.state == 3 then
                self.state = 2
            elseif self.state == 20 then
                self.state = 3
            end
        end

        self.targetState = self.state

    else

        if shiftVal > 0 then
            if self.state == 1 then
                self.state = 2
            elseif self.state == 2 then
                self.state = 3
            elseif self.state == 3 then
                self.state = 1
            end
        else
            if self.state == 1 then
                self.state = 3
            elseif self.state == 2 then
                self.state = 1
            elseif self.state == 3 then
                self.state = 2
            end
        end

        self.targetState = self.state

    end

    sem:playSound(sounds.ui.menuShift, {volume=1})
    pause.cursorAtNewui = false
    pause:initButtons()
    if pause.hoverIndex ~= -3 then pause:initCursor() end
end

function pause:update(dt)
    pause.hoverIndex = 0
    if self.buttons then
        for _,b in ipairs(self.buttons) do
            b:update(dt)
        end
    end

    if pause.hoverIndex == 0 then
        -- check if mouse is on top of the title
        local mx, my = love.mouse.getPosition()
        if settings.useMouse == false then
            -- if using a controller, artificially set the cursor over the correct button
            mx = pause.cursorX
            my = pause.cursorY
        end
        local rectWidth = 96 * pause.scale
        if inRectangle(mx, my, pause.x + pause.panelWidth/2*pause.scale - rectWidth/2, 10*pause.scale, rectWidth/2, 14*pause.scale) then
            -- left half of the title
            pause.hoverIndex = -1
        elseif inRectangle(mx, my, pause.x + pause.panelWidth/2*pause.scale, 10*pause.scale, rectWidth/2, 14*pause.scale) then
            -- right half of the title
            pause.hoverIndex = -2
        end

        if settings.useMouse == false and pause.hoverIndex < 0 then
            pause.hoverIndex = -3 -- generally hovering over the top
        end
    end

    if pause.hoverIndex <= 0 then
        pause.hoverText = ""
        pause.font = fonts.pause.text

        if pause.state == 2 then -- Dyes
            pause.hoverText = lcl.system.dyes.noHover
        end
    end

    if pause.state == 7 then -- map
        pause.mapPlayerAnim:update(dt)
    end

    if self.state > 0 then
        self.totalTimer = self.totalTimer + dt*2
    end

    if not settings.useMouse and pause.prevMouseState == true then
        local btn = pause.buttons[1]
        if btn then -- warp cursor to some part of the newui
            pause.cursorX = btn.x
            pause.cursorY = btn.y
        end
    end
    pause.prevMouseState = settings.useMouse
end

function pause:draw()
    local pauseSc = pause.scale
    local centerX = pause.x + pause.panelWidth/2 * pauseSc
    if self.state > 0 and self.state ~= 7 then
        setWhite()
        local panelSpr = sprites.pause.vertItems

        if self.state == 1 then
            self.titleText = lcl.system.pause.items
            panelSpr = sprites.pause.vertItems
        elseif self.state == 2 then
            self.titleText = lcl.system.pause.dyes
            panelSpr = sprites.pause.vertDyes
        elseif self.state == 3 then
            self.titleText = lcl.system.pause.settings
            panelSpr = sprites.pause.vertBlank
        elseif self.state == 4 then
            self.titleText = "" -- "Controls"
        elseif self.state == 5 then
            self.titleText = "" -- "Keybinds"
        elseif self.state == 6 then
            self.titleText = "" -- "Listening"
        elseif self.state == 7 then
            self.titleText = "" -- "Map"
        elseif self.state == 8 then
            self.titleText = "" -- "Gems"
            if pause.jewelry then
                if pause.jewelry == "ring" then
                    self.titleText = "" -- "Ring"
                elseif pause.jewelry == "necklace" then
                    self.titleText = "" -- "Necklace"
                end
            end
            --panelSpr = sprites.pause.vertGems
        elseif self.state == 9 then
            self.titleText = lcl.system.pause.jewelry
            local pauseJewelryInd = 0
            if pauseJewelryInd then
                if sprites.pause["vertJewelry" .. pauseJewelryInd] then
                    panelSpr = sprites.pause["vertJewelry" .. pauseJewelryInd]
                end
            end
        elseif self.state == 10 then -- multi
            self.titleText = lcl.system.multiplayer.title
            panelSpr = sprites.pause.vertBlank
        elseif self.state == 11 or self.state == 11.5 then -- multi
            self.titleText = lcl.system.multiplayer.steamFriendList
            panelSpr = sprites.pause.vertBlank
        elseif self.state == 12 or self.state == 12.5 then -- multi
            self.titleText = lcl.system.multiplayer.joinTitle
            panelSpr = sprites.pause.vertBlank
        elseif self.state == 20 then
            self.titleText = lcl.system.debug.title
            panelSpr = sprites.pause.vertBlank
        end

        love.graphics.draw(panelSpr, pause.x, pause.y, nil, pauseSc, nil, 0, 0)

        love.graphics.setFont(fonts.pause.title)
        love.graphics.printf(self.titleText, pause.x, pause.y + 5.5*pauseSc, pause.panelWidth*pauseSc, "center")

        if pause.state >= 1 and pause.state <= 99 then
            local gapSize = 54*pauseSc --string.len(self.titleText) * 9 * pauseSc
            local extraGap = 0 if math.floor(self.totalTimer) % 2 == 0 then extraGap = 2*pauseSc end
            local leftArrowSpr = sprites.pause.arrow if pause.hoverIndex == -1 then leftArrowSpr = sprites.pause.arrowHover end
            local rightArrowSpr = sprites.pause.arrow if pause.hoverIndex == -2 then rightArrowSpr = sprites.pause.arrowHover end
            if pause.hoverIndex == -3 then -- controller hovering over the top
                leftArrowSpr = sprites.pause.arrowHover
                rightArrowSpr = sprites.pause.arrowHover
            end
            if pause.backArrow then gapSize = 88*pauseSc end
            love.graphics.draw(leftArrowSpr, centerX - gapSize/2 - extraGap, pause.y + 13.5*pauseSc, nil, pauseSc * -1, nil, sprites.pause.arrow:getWidth()/2, sprites.pause.arrow:getHeight()/2)
            if not pause.backArrow then
                love.graphics.draw(rightArrowSpr, centerX + gapSize/2 + extraGap, pause.y + 13.5*pauseSc, nil, pauseSc, nil, sprites.pause.arrow:getWidth()/2, sprites.pause.arrow:getHeight()/2)
            end
        end
    end

    for _,b in ipairs(self.buttons) do
        b:draw()
    end

    -- now using the newui for settings
    -- pauseSettings:draw()

    love.graphics.setFont(pause.font)
    local offY = 0
    if pause.font == fonts.pause.smallText then offY = -1*pauseSc end
    local hoverTextY = pause.y + 105*pauseSc + offY
    if pause.state == 2 then hoverTextY = pause.y + 108*pauseSc + offY end -- dyes ('apply to text')
    if pause.state == 8 then hoverTextY = pause.y + 78*pauseSc + offY end
    love.graphics.printf(pause.hoverText, pause.x, hoverTextY, pause.panelWidth*pauseSc, "center")

    if pause.state == 7 then -- map
        local mapOffX = 0*pauseSc
        local mapOffY = 8*pauseSc

        setWhite()
        love.graphics.draw(sprites.ui.fullPaperMap, pause.x + mapOffX, mapOffY, nil, pauseSc*0.68, nil, sprites.ui.fullPaperMap:getWidth()/2, 0)

        local playerMapX = 0
        local playerMapY = -100*pauseSc -- offscreen by default
        if loadedMap == "1_meadow" then playerMapX = 82*pauseSc playerMapY = 72*pauseSc end
        if loadedMap == "2_forest" then playerMapX = 90*pauseSc playerMapY = 96*pauseSc end
        if loadedMap == "3_town" then playerMapX = 36*pauseSc playerMapY = 100*pauseSc end
        if loadedMap == "4_camp" then playerMapX = 0*pauseSc playerMapY = 94*pauseSc end
        if loadedMap == "6_ruins" then playerMapX = -36*pauseSc playerMapY = 80*pauseSc end
        if loadedMap == "7_port" then playerMapX = 32*pauseSc playerMapY = 123*pauseSc end
        love.graphics.draw(sprites.playerShadow, pause.x + mapOffX + playerMapX, playerMapY + 3.75*pauseSc, nil, pauseSc/2.5, nil, sprites.playerShadow:getWidth()/2, sprites.playerShadow:getHeight()/2)
        pause.mapPlayerAnim:draw(sprites.playerSheet, pause.x + mapOffX + playerMapX, playerMapY, nil, -1 * pauseSc/2, pauseSc/2, 9, 10.5)
    end

    if pause.state == 8 then -- gems (no longer used)
        local jewelryTitle = ""
        local jewelryDesc = ""
        if pause.jewelry then pause.jewelryIcon = sprites.items.icons[pause.jewelry] end
        if self.hoverIndex > 0 then
            local button = self.buttons[self.hoverIndex]
            if button.gem then
                local newJewelry = pause.jewelry .. '_' .. button.id
                local lt = loots.all[newJewelry]
                if lt then
                    jewelryTitle = lt.title
                    jewelryDesc = lt.desc
                    pause.jewelryIcon = lt.spr
                end
            elseif button.jewelry then
                if data.jewelry[pause.jewelry] then
                    local curJewelry = pause.jewelry .. '_' .. data.jewelry[pause.jewelry]
                    local lt = loots.all[curJewelry]
                    if lt then
                        jewelryTitle = lt.title
                        jewelryDesc = lt.desc
                        pause.jewelryIcon = lt.spr
                    end
                end
            end
        elseif data.jewelry[pause.jewelry] then -- a gem is equipped
            local curJewelry = pause.jewelry .. '_' .. data.jewelry[pause.jewelry]
            local lt = loots.all[curJewelry]
            if lt then
                jewelryTitle = lt.title
                jewelryDesc = lt.desc
                pause.jewelryIcon = lt.spr
            end
        end

        if jewelryTitle == "" and jewelryDesc == "" then
            jewelryTitle = lcl.system.jewelry.chooseGem
            jewelryDesc = ""
            if #data.items.gems <= 0 then jewelryTitle = lcl.system.jewelry.noGems jewelryDesc = lcl.system.jewelry.howTo end
        end
        love.graphics.setFont(fonts.pause.jewelryTitle)
        love.graphics.printf(jewelryTitle, pause.x + (pause.panelWidth*pauseSc)*0.1, pause.y+97*pauseSc+offY, pause.panelWidth*pauseSc*0.8, "center")
        love.graphics.setFont(fonts.pause.jewelryDesc)
        love.graphics.printf(jewelryDesc, pause.x + (pause.panelWidth*pauseSc)*0.1, pause.y+132*pauseSc+offY, pause.panelWidth*pauseSc*0.8, "center")
    end

    if pause.state == 10 then -- multi
        love.graphics.setFont(fonts.pause.multiTitle)
        love.graphics.printf(lcl.system.multiplayer.onlineSteam, pause.x + (pause.panelWidth*pauseSc)*0.1, pause.y+28*pauseSc+offY, pause.panelWidth*pauseSc*0.8, "center")
        love.graphics.printf(lcl.system.multiplayer.offlineLocal, pause.x + (pause.panelWidth*pauseSc)*0.1, pause.y+76*pauseSc+offY, pause.panelWidth*pauseSc*0.8, "center")
    end

    if pause.state == 11 or pause.state == 12 then
        love.graphics.setFont(fonts.pause.messageSm)
        if steam.state == 5 then
            love.graphics.printf(lcl.system.multiplayer.loadingFriends, pause.x + (pause.panelWidth*pauseSc)*0.1, pause.y+28*pauseSc+offY, pause.panelWidth*pauseSc*0.8, "center")
        elseif steam.state == 6 then
            if steam.friendCount ~= nil and steam.friendCount == 0 then
                love.graphics.printf(lcl.system.multiplayer.noFriends, pause.x + (pause.panelWidth*pauseSc)*0.1, pause.y+28*pauseSc+offY, pause.panelWidth*pauseSc*0.8, "center")
            end
        end
    end

    if pause.state == 11 and newui.confirmArgs then
        local friendId = ""
        local friendName = ""
        if newui.confirmArgs.id then friendId = newui.confirmArgs.id end
        if newui.confirmArgs.text then friendName = newui.confirmArgs.text end
        love.graphics.setFont(fonts.pause.message)
        love.graphics.printf(lcl.system.multiplayer.inviteConfirm:gsub("{a}", friendName), pause.x + (pause.panelWidth*pauseSc)*0.1, pause.y+28*pauseSc+offY, pause.panelWidth*pauseSc*0.8, "center")
    end

    if pause.state == 11.5 then
        love.graphics.setFont(fonts.pause.message)
        local message = ""
        if steam.state == 11 then
            message = lcl.system.multiplayer.sendingInvite
        elseif steam.state == 12 then
            message = lcl.system.multiplayer.creatingSocket
        elseif steam.state == 13 then
            message = lcl.system.multiplayer.sentAndWaiting .."\n" .. steam.friend.text
        elseif steam.state == 14 then
            message = lcl.system.multiplayer.connectionSuccess
        end
        love.graphics.printf(message, pause.x + (pause.panelWidth*pauseSc)*0.1, pause.y+28*pauseSc+offY, pause.panelWidth*pauseSc*0.8, "center")
        if steam.state == 13 then
            love.graphics.setFont(fonts.pause.messageSm)
            --love.graphics.printf("You can close this menu and play normally while waiting.", pause.x + (pause.panelWidth*pauseSc)*0.1, pause.y+55*pauseSc+offY, pause.panelWidth*pauseSc*0.8, "center")
        end
    end

    if pause.state == 12 and newui.confirmArgs then
        local friendId = ""
        local friendName = ""
        if newui.confirmArgs.id then friendId = newui.confirmArgs.id end
        if newui.confirmArgs.text then friendName = newui.confirmArgs.text end
        love.graphics.setFont(fonts.pause.message)
        love.graphics.printf(lcl.system.multiplayer.joinConfirm .. "\n" .. friendName, pause.x + (pause.panelWidth*pauseSc)*0.1, pause.y+28*pauseSc+offY, pause.panelWidth*pauseSc*0.8, "center")
    end

    if pause.state == 12.5 then
        love.graphics.setFont(fonts.pause.message)
        local message = ""
        if steam.state == 21 then
            message = lcl.system.multiplayer.connectingWith .. "\n" .. steam.friend.text
        elseif steam.state == 22 then
            message = lcl.system.multiplayer.connectionSuccess
        elseif steam.state == 1 then
            message = lcl.system.multiplayer.joinFailed
        end
        love.graphics.printf(message, pause.x + (pause.panelWidth*pauseSc)*0.1, pause.y+28*pauseSc+offY, pause.panelWidth*pauseSc*0.8, "center")
    end

    local offLeft = 4
    local dots = nil
    if self.state == 1 then dots = {true, false, false} end
    if self.state == 2 then dots = {false, true, false} end
    if self.state == 3 then dots = {false, false, true} end
    if debug.active then
        if self.state == 1 then dots = {true, false, false, false} end
        if self.state == 2 then dots = {false, true, false, false} end
        if self.state == 3 then dots = {false, false, true, false} end
        if self.state == 20 then dots = {false, false, false, true} end
        offLeft = 6
    end
    if dots then
        for i,d in ipairs(dots) do
            local dotspr = sprites.pause.dotOff
            if d then dotspr = sprites.pause.dotOn end
            love.graphics.draw(dotspr, centerX - offLeft*pauseSc + (i-1)*4*pauseSc, pause.y + 19*pauseSc, nil, pauseSc, nil, dotspr:getWidth()/2, dotspr:getHeight()/2)
        end
    end
end
