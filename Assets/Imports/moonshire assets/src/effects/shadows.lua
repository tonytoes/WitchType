function drawNewShadows()
    love.graphics.setColor(0.2, 0.2, 0.2, 0.5) -- color of shadows

    local spr = sprites.shadows.roundS
    if not elevators.moving then drawPlayerShadow() end

    for _,n in ipairs(npcs) do
        spr = getShadowFromSpr(n.shadowSpr)
        if n.visible then
            love.graphics.draw(spr, n.x + n.shadowX*n.scaleX, n.y + n.shadowY, nil, 1, nil, spr:getWidth()/2, spr:getHeight()/2)
        end
    end

    for _,p in ipairs(props) do
        spr = getShadowFromSpr(p.shadowSpr)
        if p.visible then
            love.graphics.draw(spr, p.x + p.shadowX, p.y + p.shadowY, nil, p.shadowScale, nil, spr:getWidth()/2, spr:getHeight()/2)
        end
    end

    for _,e in ipairs(enemies) do
        if e.drawShadow and e.shadowState == 1 then
            local px, py = e.physics:getPosition()
            if e.state == -3 and (e.animName == "disappear" or e.animName == "appear") then
                px = e.homeX py = e.homeY
            end
            if e.cutscene then px = e.cutsceneX py = e.cutsceneY end
            spr = getShadowFromSpr(e.shadowSpr)
            love.graphics.draw(spr, px+e.shadowOffX, py+e.shadowY, nil, e.shadowScale * e.shadowScaleFactor, nil, spr:getWidth()/2, spr:getHeight()/2)
        end
    end

    for _,b in ipairs(lobs) do
        spr = getShadowFromSpr(b.shadowSpr)
        if b.visible then
            love.graphics.draw(spr, b:getX(), b:getY(), nil, b.shadowScale, nil, spr:getWidth()/2, spr:getHeight()/2)
        end
    end

    for _,b in ipairs(rubbles) do
        spr = getShadowFromSpr(b.shadowSpr)
        if b.visible then
            love.graphics.draw(spr, b.x, b.y+b.shadowY, nil, b.shadowScale, nil, spr:getWidth()/2, spr:getHeight()/2)
        end
    end

    for _,b in ipairs(resources) do
        spr = getShadowFromSpr(b.shadowSpr)
        love.graphics.draw(spr, b.x, b.y+b.shadowY, nil, b.shadowSc, nil, spr:getWidth()/2, spr:getHeight()/2)
    end

    -- COLOR CHANGE
    for _,b in ipairs(plants) do
        love.graphics.setColor(0.2, 0.2, 0.2, 0.2) -- color of shadows
        spr = getShadowFromSpr(b.shadowSpr)
        if b.showShadow then
            love.graphics.draw(spr, b.x, b.y+b.shadowY, nil, b.shadowW, b.shadowH, spr:getWidth()/2, spr:getHeight()/2)
        end
    end

    setWhite()
end

function drawPlayerShadow()
    if debug.hidePlayer then return nil end
    local spr = sprites.shadows.roundS
    local px, py = player:getPosition()
    if player.inWater ~= true and player.state ~= 14 and player.state ~= 14.6 then
        love.graphics.setColor(0.2, 0.2, 0.2, 0.5) -- color of shadows
        love.graphics.draw(spr, px, py+3.5, nil, nil, nil, spr:getWidth()/2, spr:getHeight()/2)
    end
end

function getShadowFromSpr(spr)

    if type(spr) == "string" then
        return sprites.shadows[spr]
    else
        return spr
    end

end

function drawShadows()

    setWhite()
    local spr = sprites.effects.shadows.tree
    for _,t in ipairs(trees) do
        spr = t.shadowSpr
        if spr then
            local sc = 1
            if t.shadowSc then sc = t.shadowSc*t.scaleX end
            love.graphics.draw(spr, t.x, t.y+t.shadowYOff, nil, sc, nil, spr:getWidth()/2, spr:getHeight()/2)
        end
    end

    spr = sprites.effects.boomerangShadow
    for _,s in ipairs(stars) do
        love.graphics.draw(spr, s.x, s.y+s.shadowHeight, nil, 1, nil, spr:getWidth()/2, spr:getHeight()/2)
    end

    spr = sprites.effects.boomerangShadow
    for _,f in ipairs(fireballs) do
        love.graphics.draw(spr, f.x, f.y+6, nil, 0.8, nil, spr:getWidth()/2, spr:getHeight()/2)
    end

    spr = sprites.effects.boomerangShadow
    for _,f in ipairs(projectiles) do
        if f.visible and f.drawShadow and f.hasShadow then
            love.graphics.draw(spr, f.x, f.y+6, nil, 0.8, nil, spr:getWidth()/2, spr:getHeight()/2)
        end
    end

    spr = sprites.effects.shadows.plant
    for _,p in ipairs(loots) do
        love.graphics.draw(spr, p.x, p.y + p.shadowY, nil, 0.75, nil, spr:getWidth()/2, spr:getHeight()/2)
    end

    for _,w in ipairs(weapons) do        
        if w.shadowVisible then
            spr = w.shadowSpr
            if w.state == 0 or w.state == 0.5 then
                love.graphics.draw(spr, w.x, w.y + w.shadowY, nil, nil, nil, spr:getWidth()/2, spr:getHeight()/2)
            elseif w.state >= 2 then
                spr = w.throwShadowSpr
                local scl = 1
                if w.throwDir.x < 0 then scl = -1 end
                if w.class == "simple" or w.throwShadowLocked then
                    love.graphics.draw(spr, w.x, w.y + w.throwShadowY, 0, nil, nil, spr:getWidth()/2, spr:getHeight()/2)
                else
                    love.graphics.draw(spr, w.x, w.y + w.throwShadowY, w.rot, nil, nil, spr:getWidth()/2, spr:getHeight()/2)
                end
            end
        end
    end

    spr = sprites.effects.boomerangShadow
    for _,r in ipairs(shopItems) do
        spr = r.shadowSpr
        love.graphics.draw(spr, r.x, r.y+r.shadowY, nil, 1, 1, spr:getWidth()/2, spr:getHeight()/2)
    end

    spr = sprites.effects.shadows.portal
    for _,p in ipairs(portals) do
        love.graphics.draw(spr, p.x, p.y+4, nil, 1, nil, spr:getWidth()/2, spr:getHeight()/2)
    end

    if player.chargeAiming then
        player:drawAiming()
    end

end
