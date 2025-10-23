hud = {}
hud.alpha = 1
hud.drawingDur = false
hud.flashTimer = 0
hud.flashBool = false

hud.blastX = 0
hud.blastY = 0
hud.blastRad = 0
hud.blastAlpha = 0

function drawHUD()
    if debug.active and debug.hideHUD then return nil end
    if background.state == 1 and player.state == 14.5 then hud.alpha = 1 - background.alpha end -- used for the death bg
    if recording == 0 or recording % 2 ~= 0 and recording ~= 2.5 then
        --drawMoons()
        --drawWeapon()
        --drawDurabilityBar()
        drawMoonPanels()
        --drawBossBar()
    end
end

function drawMoonPanel(x, y, p)

    setWhite()
    local panelStr = "moonPanel"
    local typeSpr = sprites.hud.heartSmall
    local wep = nil
    local mainVal = player.health
    local maxVal = player.maxHealth
    if player.hasWeapon then wep = weapons[weapons:getIndex(player.weaponUniqueId)] end

    if p and p == "armor" then
        if not wep then return nil end
        if not wep.maxArmor then return nil end
        typeSpr = sprites.hud.armor
        mainVal = wep.armor
        maxVal = wep.maxArmor
    end

    if maxVal == 2 then
        if mainVal == 1 then panelStr = "moonHalf" end
    end

    if maxVal == 3 then
        if mainVal == 2 then panelStr = "moonQuarter3" end
        if mainVal == 1 then panelStr = "moonQuarter1" end
    end

    if maxVal == 4 then
        if mainVal == 3 then panelStr = "moonQuarter3" end
        if mainVal == 2 then panelStr = "moonHalf" end
        if mainVal == 1 then panelStr = "moonQuarter1" end
    end

    if mainVal == 0 then
        panelStr = "moonEmpty"
        love.graphics.setColor(0.8, 0.8, 0.8, 1)
    end

    local hasArmor = false
    if p and p == "health" then
        panelStr = panelStr .. 'G'
        if wep and wep.maxArmor and wep.armor > 0 then
            hasArmor = true
            love.graphics.setColor(0.8, 0.8, 0.8, 1)
        end
    end

    local panelSpr = sprites.hud[panelStr]
    if not hasArmor and hud.flashBool and p and p == "health" then
        panelSpr = sprites.hud.moonQuarter1R
    end
    love.graphics.draw(panelSpr, x*scale, y*scale, nil, scale, nil, panelSpr:getWidth()/2, panelSpr:getHeight()/2)
    love.graphics.draw(typeSpr, x*scale, (y+5)*scale, nil, scale, nil, typeSpr:getWidth()/2, typeSpr:getHeight()/2)
    love.graphics.setFont(fonts.hud.health)
    love.graphics.setColor(0.1, 0.1, 0.1, 1)
    local totalWidth = 25.5
    if mainVal == 1 then totalWidth = 24.5 end
    love.graphics.printf(mainVal, 0, (y-11.25)*scale, totalWidth*scale, "center")

end

function drawManaBar()
    -- TODO: REMOVE THIS LINE
    if true then return nil end

    local baseSpr = sprites.hud.mana.back
    if player.mana <= 0 then baseSpr = sprites.hud.mana.empty end
    if player.mana >= player.maxMana then baseSpr = sprites.hud.mana.full end
    setWhite()
    love.graphics.draw(baseSpr, 12*scale, 40*scale + barOffY*scale, nil, scale, nil, baseSpr:getWidth()/2, baseSpr:getHeight()/2)

    if player.mana > 0 and player.mana < player.maxMana then
        love.graphics.setColor(178/255, 202/255, 234/255, 1)
        love.graphics.rectangle("fill", 7*scale, 52*scale + barOffY*scale, 10*scale, -24*scale * (player.mana/player.maxMana))
        setWhite()
        local frameSpr = sprites.hud.mana.frame
        love.graphics.draw(frameSpr, 12*scale, 40*scale + barOffY*scale, nil, scale, nil, frameSpr:getWidth()/2, frameSpr:getHeight()/2)
    end
end

function drawMoonPanels()

    local wep = weapons[weapons:getIndex(player.weaponUniqueId)]
    local barOffY = 0
    if cutscene.barsVal > 0 then barOffY = -62 * cutscene.barsVal end

    if wep and wep.maxArmor and wep.armor <= 0 then
        drawMoonPanel(12, 24.5 + barOffY, 'armor')
    end    

    drawMoonPanel(12, 12 + barOffY, 'health')

    if wep and wep.maxArmor and wep.armor > 0 then
        drawMoonPanel(12, 24.5 + barOffY, 'armor')
    end  

    if wep and wep.maxArmor then
        barOffY = barOffY + 12.5
    end

    if wep and player.hasWeapon then
        setWhite()
        if wep.maxAmmo then
            local ammoPanel = sprites.hud.ammoPanel
            local ammoSpr = wep.ammoSpr
            if not ammoSpr then ammoSpr = sprites.hud.ammo.fire end
            local offX = 1
            local offY = 0
            if wep.maxArmor then offY = 12.5 end
            if wep.ammo > 9 then offX = 0 end
            if wep.ammo <= 0 then
                love.graphics.setColor(0.75, 0.75, 0.75, 1)
            else
                setWhite()
            end

            love.graphics.draw(ammoPanel, 12*scale, (30.5+offY)*scale + barOffY*scale, nil, scale, nil, ammoPanel:getWidth()/2, ammoPanel:getHeight()/2)
            love.graphics.draw(ammoSpr, (7+offX)*scale, (30.5+offY)*scale + barOffY*scale, nil, scale*0.85, nil, ammoSpr:getWidth()/2, ammoSpr:getHeight()/2)
            love.graphics.setColor(0.1, 0.1, 0.1, 1)
            totalWidth = 9
            love.graphics.setFont(fonts.hud.ammo)
            love.graphics.printf(wep.ammo, 11*scale, (22.25+offY)*scale + barOffY*scale, totalWidth*scale, "center")

            barOffY = barOffY + 16
        end
    end

    drawManaBar()
end

function drawHearts()
    for i = 0, player.maxHealth-1 do
        local heartSpr = sprites.hud.emptyHeart
        if player.health > i then
            heartSpr = sprites.hud.heart
        end
        love.graphics.draw(heartSpr, 17*scale + (i * 12*scale), 7*scale, nil, scale*0.9, nil, heartSpr:getWidth()/2, heartSpr:getHeight()/2)
    end
end

function drawMoons()
    love.graphics.setColor(1,1,1, hud.alpha)
    local moonCount = math.ceil(player.maxHealth/2)
    for i = 1, moonCount do
        local moonSpr = sprites.hud.moonEmpty
        if player.health%2 == 1 and i*2==player.health+1 then
            moonSpr = sprites.hud.moonHalf
        elseif player.health >= i*2 then
            moonSpr = sprites.hud.moonFull
        end
        love.graphics.draw(moonSpr, 7*scale + ((i-1) * 14*scale), 7*scale, nil, scale, nil, moonSpr:getWidth()/2, moonSpr:getHeight()/2)
    end

    -- draw blast
    if hud.blastAlpha > 0 then
        love.graphics.setColor(1,1,1,hud.blastAlpha)
        love.graphics.circle("fill", hud.blastX, hud.blastY, hud.blastRad)
    end
end

function hudDamage()
    local moonCount = math.ceil(player.health/2)
    hud.blastX = 8*scale + ((moonCount-1) * 14*scale)
    hud.blastY = 8*scale
    hud.blastRad = 6 * scale
    hud.blastAlpha = 0.9
    flux.to(hud, 0.18, {blastRad = 32*scale, blastAlpha = 0}):ease("sineout")
end

function drawBar()
    local barSpr = sprites.hud.playerBar
    local bx = 10
    local by = 1
    local healthVal = player.health
    if player.state == 14.5 or player.state == 14.6 then healthVal = 0 end
    love.graphics.setColor(0.1, 0.1, 0.1, hud.alpha)
    love.graphics.rectangle("fill", (bx+1) * scale, (by+1) * scale, (barSpr:getWidth()-2) * scale, (barSpr:getHeight()-2) * scale)
    love.graphics.setColor(215/255, 59/255, 74/255, hud.alpha)
    local percent = healthVal / player.maxHealth
    if percent > 1 then percent = 1 end if percent < 0 then percent = 0 end
    local offset = 0
    if healthVal < player.maxHealth then offset = 1 end
    love.graphics.rectangle("fill", (bx+2) * scale, (by+2+offset) * scale, ((barSpr:getWidth()-4) * scale) * percent, (barSpr:getHeight()-2-offset) * scale)
    love.graphics.setColor(242/255, 131/255, 142/255, hud.alpha)
    love.graphics.rectangle("fill", (bx+2) * scale, (by+1) * scale, ((barSpr:getWidth()-4-offset) * scale) * percent, (2) * scale)
    love.graphics.setLineWidth(scale)
    local lx = (bx+2) * scale + ((barSpr:getWidth()-4.5) * scale) * percent
    love.graphics.line(lx, (by+2+offset) * scale, lx, (by + barSpr:getHeight() - offset) * scale)
    love.graphics.line((bx+2.5)*scale, (by+2) * scale, (bx+2.5)*scale, (by + barSpr:getHeight()) * scale)
    love.graphics.setColor(1,1,1, hud.alpha)
    love.graphics.draw(barSpr, (bx) * scale, (by) * scale, nil, scale)

    love.graphics.setColor(1,1,1, hud.alpha)
    love.graphics.setFont(fonts.hud.playerHealth)
    love.graphics.printf("/", (bx+2) * scale, (by+1.5) * scale, ((barSpr:getWidth()-4) * scale), "center")
    love.graphics.printf(healthVal, (bx+2) * scale, (by+1.5) * scale, (((barSpr:getWidth()-4)/2-3) * scale), "right")
    love.graphics.printf(player.maxHealth, ((bx+2) * scale) + ((barSpr:getWidth()-4)/2+2.5) * scale, (by+1.5) * scale, 5000, "left")
end

function drawDurabilityBar()
    hud.drawingDur = false
    if player.hasWeapon == false then return nil end

    local wep = weapons[weapons:getIndex(player.weaponUniqueId)]
    if not wep then return nil end
    if wep.useDur == false then return nil end

    local barSpr = sprites.hud.playerBar2
    local bx = 1
    local by = 15

    local durVal = wep.dur
    if durVal < 0 then durVal = 0 end

    love.graphics.setColor(0.1, 0.1, 0.1, hud.alpha)
    love.graphics.rectangle("fill", (bx+1) * scale, (by+1) * scale, (barSpr:getWidth()-2) * scale, (barSpr:getHeight()-2) * scale)
    love.graphics.setColor(250/255, 201/255, 91/255, hud.alpha)

    local percent = durVal / wep.maxDur
    if percent > 1 then percent = 1 end if percent < 0 then percent = 0 end
    local offset = 0
    if durVal < wep.maxDur then offset = 1 end

    if durVal > 0 then
        love.graphics.rectangle("fill", (bx+2) * scale, (by+2+offset) * scale, ((barSpr:getWidth()-4) * scale) * percent, (barSpr:getHeight()-2-offset) * scale)
        love.graphics.setColor(250, 212/255, 127/255, hud.alpha)
        love.graphics.rectangle("fill", (bx+2) * scale, (by+1) * scale, ((barSpr:getWidth()-3-offset) * scale) * percent, (2) * scale)
        love.graphics.setLineWidth(scale)
        local lx = (bx+2) * scale + ((barSpr:getWidth()-4.5) * scale) * percent
        --love.graphics.line(lx, (by+1+offset) * scale, lx, (by + barSpr:getHeight() - offset) * scale)
        --love.graphics.line((bx+2.5)*scale, (by+2) * scale, (bx+2.5)*scale, (by + barSpr:getHeight()) * scale)
    end

    love.graphics.setColor(1,1,1, hud.alpha)
    love.graphics.draw(barSpr, (bx) * scale, (by) * scale, nil, scale)

    hud.drawingDur = true
end

function drawWeapon()
    love.graphics.setColor(1,1,1, hud.alpha)
    local spr = sprites.weapons.swordGlow
    love.graphics.draw(spr, 18 * scale, 16 * scale, nil, scale, nil, spr:getWidth()/2, spr:getHeight()/2)
end

function drawBossBar()
    local isBoss = false
    local en = nil
    for i,e in ipairs(enemies) do
        if e.boss and e.state ~= 5 and e.state ~= 6 then -- waiting and waking states
            isBoss = true
            en = e
        end
    end

    if isBoss == false then
        return nil
    end

    local spr = sprites.hud.bossBar
    local barX = windowWidth/2
    local barY = windowHeight/1.032
    local barW = spr:getWidth() * scale
    local barH = spr:getHeight() * scale
    love.graphics.setColor(0.1, 0.1, 0.1, hud.alpha)
    love.graphics.rectangle("fill", barX - barW/2 + scale, barY - barH/2 + scale, barW - scale*2, barH - scale*2)
    love.graphics.setColor(215/255, 59/255, 74/255, hud.alpha)
    local percent = en.health / en.maxHealth
    if percent > 1 then percent = 1 end if percent < 0 then percent = 0 end
    love.graphics.rectangle("fill", barX - barW/2 + scale, barY - barH/2 + scale, (barW - scale*2) * percent, barH - scale*2)
    love.graphics.setColor(1,1,1, hud.alpha)
    love.graphics.draw(spr, barX, barY, nil, scale, nil, spr:getWidth()/2, spr:getHeight()/2)
    love.graphics.setFont(fonts.hud.bossTitle)
    love.graphics.printf("BOSS", barX - 3000, barY - 12*scale, 6000, "center")
end

function drawMoney()
    local mx = love.graphics.getWidth() - 23*scale
    local my = love.graphics.getHeight() - 10*scale
    local tx = love.graphics.getWidth() - 12*scale
    local ty = love.graphics.getHeight() - 11*scale
    setWhite()
    love.graphics.draw(sprites.hud.coin, mx, my, nil, 1.5*scale)
    love.graphics.setFont(fonts.coins)
    love.graphics.print(data.money, tx, ty)
end

function hudUpdate(dt)
    if gamestate < 3 and player.state == 0 and hud.alpha < 1 then -- idk what this is for, using for intro fade in
        hud.alpha = hud.alpha + dt
    end

    local wep = weapons[weapons:getIndex(player.weaponUniqueId)]
    local inDanger = player.health <= 1 and player.health > 0
    if wep and wep.maxArmor and wep.armor > 0 then
        inDanger = false
    end

    if inDanger then
        hud.flashTimer = hud.flashTimer + dt
        if hud.flashTimer > 0.35 then
            hud.flashTimer = 0
            hud.flashBool = not hud.flashBool
        end
    else
        hud.flashTimer = 1 -- prepped for next time going to 1 health
        hud.flashBool = false
    end
end
