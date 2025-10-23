sm = {} -- sprite manager
sm.sprites = {}
sm.underSprites = {}
sm.floorSprites = {}
sm.topSprites = {}

-- 'sprites' look like this: [yVal, table with a draw() function]

function sm:resetFrame()
    removeTable(sm.sprites)
    removeTable(sm.underSprites)
    removeTable(sm.floorSprites)
    removeTable(sm.topSprites)

    local destTableStr = "underSprites"

    if elevators.moving then
        if elevators.fullyUnder then destTableStr = "underSprites" else destTableStr = "floorSprites" end
    else
        destTableStr = "sprites"
    end

    if gamestate >= 1 then
        table.insert(sm[destTableStr], {playerEyesLayer, player.y+0.1})
        table.insert(sm[destTableStr], {playerHeadLayer, player.y+0.08})
        table.insert(sm[destTableStr], {playerBodyLayer, player.y+0.06})
        table.insert(sm[destTableStr], {playerArmLayer, player.y+0.04})
        table.insert(sm[destTableStr], {playerBellyLayer, player.y+0.02})
        table.insert(sm[destTableStr], {playerFeetLayer, player.y})
    end

    table.insert(sm.sprites, {grapple, grapple.y})
    table.insert(sm.sprites, {grapple.rope, math.min(player:getY()+ player.smOffset+0.1, grapple.y-0.1)})

    for _,t in ipairs(trees) do
        table.insert(sm.sprites, {t, t.y+2+t.smYOff})
        if t.extraLayerSpr then table.insert(sm.sprites, {t.extraLayer, t.y+4}) end
    end

    for _,w in ipairs(walls) do
        if w.draw then table.insert(sm.sprites, {w, w:getY() + w.smOff}) end
    end

    for _,p in ipairs(props) do
        table.insert(sm.sprites, {p, p.y+p.height/2}) -- bottom of the sprite
    end

    for _,s in ipairs(structures) do
        table.insert(sm.floorSprites, {s, s.y+s.layerOff})
    end

    for _,p in ipairs(platforms) do
        table.insert(sm.floorSprites, {p, p.y})
    end

    for _,s in ipairs(sinks) do
        table.insert(sm.sprites, {s, s.y-16})
    end

    for _,s in ipairs(spikes) do
        table.insert(sm.sprites, {s, s.y})
    end

    for _,c in ipairs(chests) do
        table.insert(sm.sprites, {c, c.y+11})
    end

    for _,l in ipairs(loots) do
        table.insert(sm.sprites, {l, l.y+32}) -- prioritized +16
    end

    for _,r in ipairs(resources) do
        table.insert(sm.sprites, {r, r.y+1}) -- prioritized +1
    end

    for _,n in ipairs(npcs) do
        table.insert(sm.sprites, {n, n.y+n.smYOff})
    end

    for _,b in ipairs(lobs) do
        table.insert(sm.sprites, {b, b:getY()})
    end

    for _,r in ipairs(rubbles) do
        table.insert(sm.sprites, {r, r.y+0.5})
    end

    for _,s in ipairs(stars) do
        table.insert(sm.sprites, {s, s.y})
    end

    for _,f in ipairs(fireballs) do
        table.insert(sm.sprites, {f, f.y})
    end
    
    for _,e in ipairs(enemies) do
        local ey = e.physics:getY()
        if e.cutscene then ey = e.cutsceneY end
        if e.state == -3 and (e.animName == "disappear" or e.animName == "appear") then
            ey = e.homeY
        end
        table.insert(sm.sprites, {e, ey+e.smOffset})
        if e.drawTopLayer then  table.insert(sm.topSprites, {e, e.physics:getY()+e.smOffset}) end
    end

    for _,p in ipairs(projectiles) do
        table.insert(sm.sprites, {p, p.y+100}) -- artificially moving forward projectiles so they're more seen
    end

    for _,b in ipairs(blasts) do
        table.insert(sm.sprites, {b, b.y})
    end

    for _,p in ipairs(plants) do
        table.insert(sm.sprites, {p, p.y})
    end

    --[[for _,r in ipairs(rocks) do
        table.insert(sm.sprites, {r, r.y-4})
    end]]

    for _,w in ipairs(weapons) do
        if (w.state < 1 or w.state >= 2) then
            table.insert(sm.sprites, {w, w.y + w.smOffset})
        else
            table.insert(sm[destTableStr], {w, player.y + player.weaponLayer*0.05})
        end
    end

    for _,p in ipairs(saveSpots) do
        table.insert(sm.sprites, {p, p.y})
    end

    for _,p in ipairs(portals) do
        table.insert(sm.sprites, {p, p.y})
    end

    for _,e in ipairs(elevators) do
        if e.fullyUnder then
            table.insert(sm.underSprites, {e, e.y-e.height/2})
        else
            table.insert(sm.floorSprites, {e, e.y-e.height/2})
        end
    end

    for _,s in ipairs(shopItems) do
        table.insert(sm.sprites, {s, s.y-8})
    end

    for _,e in ipairs(effects) do
        if e.layer == 0 then
            local yval = e.y + e.ySprOff
            if e.type == "slice" then yval = player:getY() + player.smOffset-0.1 end
            table.insert(sm.sprites, {e, yval})
        end
    end

    for _,e in ipairs(effects2) do
        if e.layer == 0 then
            local yval = e.y + e.offY
            table.insert(sm.sprites, {e, yval})
        end
    end

end

function sm:draw(tableName)
    local tbl = "sprites"
    if tableName then tbl = tableName end -- ex. 'floorSprites'
    for i,s in spairs(sm[tbl], function(t,a,b) return t[a][2] < t[b][2] end) do
        shaders:color(s[1])
        if tbl == "topSprites" then
            s[1]:drawTopLayer()
        else
            s[1]:draw()
        end
        love.graphics.setShader()
    end
end
