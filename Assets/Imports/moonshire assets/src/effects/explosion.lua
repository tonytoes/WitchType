function spawnExplosion(x, y, args)
    local dmg = 3
    local selfDmg = 1
    local shakeVal = 2
    if args and args.dmg then dmg = args.dmg end
    if args and args.id == "playerElecBomb" then
        shakeVal = 1
        effects:spawn("electricHit", x, y)
        dj.play(sounds.effects.electricExplode, "static", "effect", 0.65)
        spawnHitbox(dmg, 0.3, {player=true, x=x, y=y, rad=22, grow=true, explosive=true})
        spawnHitbox(selfDmg, 0.2, {player=false, x=x, y=y, rad=8, grow=true, explosive=true})
        effects:spawn("scorch", x, y, {scale=0.75, alpha = 0.5})
    elseif args and args.id == "bomb" then -- standard bomb, hits enemies and the player
        effects:spawn("newExplosion", x, y)
        effects:spawn("scorch", x, y, {scale=0.6, alpha = 0.35})
        dj.play(sounds.effects.explosion, "static", "effect")
        spawnHitbox(dmg, 0.2, {player=true, x=x, y=y, rad=18, grow=true, explosive=true})
        spawnHitbox(selfDmg, 0.2, {player=false, x=x, y=y, rad=10, grow=true, explosive=true})
    else
        effects:spawn("newExplosion", x, y)
        effects:spawn("scorch", x, y, {scale=0.75, alpha = 0.5})
    end
    spawnLightSource(x, y, 35, "tempFlash", nil, nil, {tempTime=0.12})
    lightSources:fullFlash(60, 0.45)
    shake:standard(shakeVal)
end
