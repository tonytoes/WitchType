function destroyAll()
    colliderTableDestroy(walls)
    colliderTableDestroy(props)
    colliderTableDestroy(transitions)

    removeTable(wallJrs)
    removeTable(entrances)
    removeTable(tileStates)
    removeTable(loots)
    removeTable(effects)
    removeTable(npcs)
    removeTable(chests)
    removeTable(triggers)
    removeTable(trees)
    removeTable(waters)
    removeTable(arrows)
    removeTable(structures)
    plants:removeAll()
    removeTable(rocks)
    removeTable(spikes)
    removeTable(portals)
    removeTable(portalHold)
    removeTable(saveSpots)
    removeTable(lightSources)
    removeTable(platforms)
    removeTable(elevators)
    removeTable(projectiles)
    removeTable(challenges)
    removeTable(shopItems)
    removeTable(tutorials)
    removeTable(pins)
    removeTable(soils)
    removeTable(sinks)
    removeTable(resources)
    --simplax:clear() need to keep this active for game over -> reload

    -- Remove enemies
    for i=#enemies,1,-1 do
        if enemies[i].physics ~= nil then
            enemies[i].physics:destroy()
        end
        table.remove(enemies, i)
    end

    if gamestate < 1 then
        removeTable(weapons)
    else
        -- Remove weapons NOT in use
        for i=#weapons,1,-1 do
            if weapons[i].state == 1 or weapons[i].state >= 3 then
                -- this weapon is in use, and the lightsources have been destroyed. Re-create it if necessary.
                if weapons[i].light then weapons[i]:light() end
            else
                table.remove(weapons, i)
            end
        end
    end

    for i,r in ipairs(rubbles) do r.dead = true end
end

-- Used for tables of colliders
function colliderTableDestroy(tableList)
    local i = #tableList
    while i > 0 do
        if tableList[i] ~= nil then
            tableList[i]:destroy()
        end
        table.remove(tableList, i)
        i = i - 1
    end
end

-- Used for tables of standard non-collider tables
function removeTable(tableList)
    if tableList then
        local i = #tableList
        while i > 0 do
            table.remove(tableList, i)
            i = i - 1
        end
    end
end
