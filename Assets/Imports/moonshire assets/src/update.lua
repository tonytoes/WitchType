function updateAll(dt)

    if gamestate >= 1 then
        local gameTimeAdjust = misc:getAssist("gameSpeed")
        if gameTimeAdjust ~= 0 then
            gameTimeAdjust = gameTimeAdjust / 10
            dt = dt + (dt * gameTimeAdjust)
        end
    end

    --if pause.active == false then
        updateGame(dt)
    --end
    
    pause:update(dt)
    dj.cleanup()
    if gameMap then gameMap:update(dt) end
    checkWindowSize()
    steam:update(dt)

end

function updateGame(dt)
    miscUpdate(dt)
    if globalStun > 0 then return end

    flux.update(dt)

    batonClick(dt)
    world:update(dt)
    player:update(dt)
    weapons:update(dt)
    tileStates:update(dt)
    wallJrs:update(dt)
    walls:update(dt)
    blasts:update(dt)
    effects:update(dt)
    effects2:update(dt)
    waters:update(dt)
    chests:update(dt)
    stars:update(dt)
    grapple:update(dt)
    fireballs:update(dt)
    flames:update(dt)
    loots:update(dt)
    resources:update(dt)
    enemies:update(dt)
    enemies:destroyDead()
    projectiles:update(dt)
    lobs:update(dt)
    rubbles:update(dt)
    trees:update(dt)
    spikes:update(dt)
    portals:update(dt)
    portalHold:update(dt)
    plants:update(dt)
    hitboxes:update(dt)
    props:update(dt)
    offscreen:update(dt)
    soils:update(dt)
    sinks:update(dt)

    transitionUpdate(dt)
    cam:update(dt)
    shake:update(dt)
    shaders:update(dt)
    particles:update(dt)
    particleWorld:update(dt)
    damages:update(dt)
    weather:update(dt)
    menu:update(dt)
    debug:update(dt)
    newui:update(dt)
    dj:update(dt)
    npcs:update(dt)
    updateSpells(dt)
    dialogue:update(dt)
    updateSettings(dt)
    updateDataTimers(dt)
    speedrun:update(dt)
    saveSpots:update(dt)
    background:update(dt)
    parallax:update(dt)
    simplax:update(dt)
    lightSources:update(dt)
    structures:update(dt)
    platforms:update(dt)
    challenges:update(dt)
    shopItems:update(dt)
    jewelry:update(dt)
    answer:update(dt)
    tutorials:update(dt)
    elevators:update(dt)
    hudUpdate(dt)
    music:update(dt)
    cutscene:update(dt)
    cover:update(dt)
    curtain:update(dt)

    client:update(dt)
    
    sm:resetFrame()
    sem:playAllSounds()
end
