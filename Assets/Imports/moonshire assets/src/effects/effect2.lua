effects2 = {}

function effects2:getStats(e)

    if e.id == "explosion" then
        e.sprite = sprites.effects2.explosion
        e.frameSpeeds = 0.055
        e.scorch = 0.4 -- scale of the scorch underneath
        e.shake = 3 -- screenshake on create
        e.fullFlash = true -- full screen flash on create
        e.tempFlash = true -- flash light on create
        e.sound = sounds.effects.explosion

        -- create hitbox
        e.hitboxDim = {shape = "circle", x = e.x, y = e.y, rad = 12}
        e.hitboxArgs = {explosive=true, damage=3, timer=0.14, grow=true, canSpark=false, deadOnHit=false, deadOnWall=false}
    end

    if e.id == "elecExplosion" or e.id == "elecExplosionBig" or e.id == "elecExplosionRod" then
        e.sprite = sprites.effects2.elecExplosion
        e.frameSpeeds = 0.055
        e.scorch = 0.4 -- scale of the scorch underneath
        e.shake = 2 -- screenshake on create
        e.fullFlash = true -- full screen flash on create
        e.tempFlash = true -- flash light on create
        --e.sound = sounds.effects.electricExplode
        e.newSound = sounds.effects.electricExplode

        -- create hitbox
        e.hitboxDim = {shape = "circle", x = e.x, y = e.y, rad = 18}
        e.hitboxArgs = {explosive=true, damage=3, timer=0.14, grow=true, canSpark=false, deadOnHit=false, deadOnWall=false}

        if e.id == "elecExplosionBig" then
            e.scale = 1.25
            e.hitboxDim.rad = 22
        end

        if e.id == "elecExplosionRod" then
            e.hitboxArgs.player = true

            local kbVec = getSelfToPlayerVector(e.x, e.y) * 45
            player:applyLinearImpulse(kbVec.x, kbVec.y)
        end
    end

    if e.id == "magicExplosion" then
        e.sprite = sprites.effects2.magicExplosion
        e.frameSpeeds = 0.06
        e.shake = 2 -- screenshake on create
        e.fullFlash = true -- full screen flash on create
        e.tempFlash = true -- flash light on create
        e.sound = sounds.effects.spawnBig
    end

    if e.id == "fakeBolt" then
        e.sprite = sprites.effects2.attacks.bolt
        e.frameSpeeds = 0.05
        e.frameW = 112
        e.frameH = 32
        e.shake = 1 -- screenshake on create
        e.fullFlash = true -- full screen flash on create
        e.sound = sounds.effects.spawnBig
    end

    if e.id == "scorch" then
        e.sprite = sprites.effects2.scorch
        e.frameSpeeds = {0.08, 5} -- small then big
        e.alpha = 0.3
        e.fade = 1
        e.color = "dark"
    end

    if e.id == "spark" then
        e.sprite = sprites.effects2.spark
        e.frameSpeeds = 0.08
        e.frameW = 28
        e.frameH = 34
        e.rot = math.pi*2*math.random()
        e.scale = 0.8
    end

    if e.id == "zap" then -- small AOE (lightning rod)
        e.sprite = sprites.effects2.attacks.zap
        e.frameSpeeds = 0.08
        e.frameW = 36
        e.frameH = 36
        e.forceRot = math.pi*2*math.random()
        e.scale = 1

        e.hitboxDim = {shape = "circle", x = e.x, y = e.y, rad = 18}
        e.hitboxArgs = {damage=1, timer=0.38, grow=true, canSpark=false, deadOnHit=false, deadOnWall=false, player=true}
        -- NOTE: the player attr means that it's 'connected' to the player, and will cause self knockback
    end

    if e.id == "flameAttack" then
        e.sprite = sprites.effects2.flameAttack
        e.frameSpeeds = 0.06
        e.frameW = 40
        e.frameH = 17
        e.ox = 2
        e.oy = 8.5
        e.rot = math.pi*2*math.random()
        e.scale = 1
        e.proj = "flameAttack"
    end

    if e.id == "enemySpawn" then
        e.sprite = sprites.effects2.enemySpawn2a
        e.frameSpeeds = 0.04
        e.frameW = 160
        e.frameH = 160
        e.followUpEffect = "enemySpawnB"
        e.scale = 0.8
    end

    if e.id == "enemySpawnB" then
        e.sprite = sprites.effects2.enemySpawn2b
        e.frameSpeeds = 0.08
        e.frameW = 160
        e.frameH = 160
        e.fade = 0.6
        e.scale = 0.8
    end

    if e.id == "enemySpawn3" then
        e.sprite = sprites.effects2.enemySpawn3
        e.frameSpeeds = 0.07
        e.frameW = 64
        e.frameH = 64
        e.eventOnFrame = {
            id = "spawnEnemy",
            --flavor = "greySpawnBlast",
            frame = 11
        }
    end

    if e.id == "simpleSpawn" then
        e.sprite = sprites.effects2.simpleSpawn
        e.frameSpeeds = 0.08
        e.frameW = 48
        e.frameH = 56
        e.fade = 0.6
        e.scale = 1
        e.offY = -12
        e.enemyOnAnimEnd = true
    end

    if e.id == "windSlam" then
        e.sprite = sprites.effects2.attacks.windSlam
        e.frameSpeeds = 0.05
        e.frameW = 32
        e.frameH = 32
        e.fade = 0.45
    end

    if e.id == "windSlamBig" then
        e.sprite = sprites.effects2.attacks.windSlamBig
        e.frameSpeeds = 0.05
        e.frameW = 64
        e.frameH = 64
        e.fade = 0.45
        e.scale = 1.2

        -- create hitbox
        e.hitboxDim = {shape = "circle", x = e.x, y = e.y, rad = 35}
        e.hitboxArgs = {timer=0.14, spareEnemies=true, grow=true, canSpark=false, deadOnHit=false, deadOnWall=false}
    end

    if e.id == "greenBlast" then
        e.sprite = sprites.effects2.attacks.greenBlast
        e.frameSpeeds = 0.07
        e.frameW = 96
        e.frameH = 96
        e.fade = 0.45
        e.scale = 1.2
        e.shake = 2 -- screenshake on create

        -- create hitbox
        e.hitboxDim = {shape = "circle", x = e.x, y = e.y, rad = 44}
        e.hitboxArgs = {timer=0.25, spareEnemies=(not e.player), sparePlayer=e.player, grow=true, canSpark=false, deadOnHit=false, deadOnWall=false}
    end

    if e.id == "greySpawnBlast" then
        e.sprite = sprites.effects2.attacks.greyBlast
        e.frameSpeeds = 0.07
        e.frameW = 96
        e.frameH = 96
        e.fade = 0.6
        e.scale = 1
        e.sound = sounds.effects.poisonBlast

        e.eventOnFrame = {
            id = "trueSpawnEnemy",
            frame = 3
        }
    end

    if e.id == "playerLightning" then
        e.sprite = sprites.effects.lightning
        e.frameSpeeds = 0.08
        e.frameW = 64
        e.frameH = 64
        e.offY = -24
        --e.sound = sounds.spells.lightning
        e.fullFlash = true

        -- create hitbox
        e.hitboxDim = {shape = "circle", x = e.x, y = e.y, rad = 16}
        e.hitboxArgs = {explosive=true, damage=3, timer=0.14, sparePlayer=true, grow=true, canSpark=false, deadOnHit=false, deadOnWall=false}
        e.hitboxFrame = 2 -- frame that the hitbox comes out
        e.scorchOnHit = true
        e.shakeOnHit = true
    end

    if e.id == "playerBolt" then
        e.sprite = sprites.effects2.attacks.bolt
        e.frameSpeeds = 0.035
        e.frameW = 112
        e.frameH = 32
        e.ox = 16
        e.oy = 16

        e.dir = vector(math.random(), -2)
        if math.random() > 0.5 then e.dir.x = e.dir.x * -1 end

        e.shake = 1 -- screenshake on create
        e.fullFlash = true -- full screen flash on create
        e.sound = sounds.effects.spawnBig

        -- create hitbox
        e.hitboxDim = {shape = "circle", x = e.x, y = e.y, rad = 16}
        e.hitboxArgs = {explosive=true, damage=2, timer=0.14, sparePlayer=true, grow=true, canSpark=false, deadOnHit=false, deadOnWall=false}
        e.hitboxFrame = 2 -- frame that the hitbox comes out
        e.scorchOnHit = true
    end

    if e.id == "poisonSmoke" then
        e.sprite = sprites.effects2.poisonSmoke
        e.frameSpeeds = 0.08
        e.frameW = 184
        e.frameH = 160
        e.frameColumn = '1-3'
        e.frameRow = '1-3'
    end

    if e.id == "poisonSmokeSmall" then -- acid
        e.sprite = sprites.effects2.poisonSmokeSmall
        e.frameSpeeds = {0.11, 0.08, 0.08, 0.08, 0.06, 0.04, 0.03, 0.02, 0.02}
        e.frameW = 92
        e.frameH = 80
        e.frameColumn = '1-3'
        e.frameRow = '1-3'
        e.scale = 0.9
        e.scorch = 0.75 -- scale of the scorch underneath
        e.shake = 1 -- screenshake on create
        e.sound = sounds.attacks.wetExplode
        e.soundPitch = 1
        e.soundPitchRand = 0.1

        e.hitboxDim = {shape = "circle", x = e.x, y = e.y, rad = 36}
        e.hitboxArgs = {damage=1, timer=0.14, grow=true, canSpark=false, deadOnHit=false, deadOnWall=false}
    end

    if e.id == "poisonGreen" then -- acid
        e.sprite = sprites.effects2.poisonGreen
        e.frameSpeeds = {0.11, 0.08, 0.08, 0.08, 0.06, 0.04, 0.03, 0.02, 0.02}
        e.frameW = 184
        e.frameH = 160
        e.frameColumn = '1-3'
        e.frameRow = '1-3'
        e.scale = 1
        e.scorch = 1 -- scale of the scorch underneath
        e.shake = 2 -- screenshake on create
        e.sound = sounds.attacks.wetExplode
        e.soundPitch = 1
        e.soundPitchRand = 0.1

        e.hitboxDim = {shape = "circle", x = e.x, y = e.y, rad = 72}
        e.hitboxArgs = {damage=1, timer=0.26, grow=true, canSpark=false, deadOnHit=false, deadOnWall=false}
    end

    if e.id == "hyperBeam" then
        e.sprite = sprites.effects2.hyperBeam
        e.frameSpeeds = 0.08
        e.frameW = 320
        e.frameH = 30
        e.frameColumn = 1
        e.frameRow = '1-7'
        e.ox = 10
        e.oy = 15
        e.shake = 3 -- screenshake on create
        e.fullFlash = true -- full screen flash on create
        e.sound = sounds.effects.electricExplode

        local projOffX = 0
        if e.dir and e.dir.x < 0 then e.rot = getRadFromVector(vector(-1, 0)) projOffX = -300 end

        -- create hitbox
        e.hitboxDim = {shape = "rectangle", x = e.x + projOffX, y = e.y - 6, width = 300, height = 12}
        e.hitboxArgs = {damage=1, timer=0.14, canSpark=false, deadOnHit=false, deadOnWall=false}
    end

    if e.id == "spawnMagic" then
        e.sprite = sprites.effects2.spawnMagic
        e.frameSpeeds = 0.08
        e.challengeRewardSpawn = true
        e.followUpEffect = "magicExplosion"
        --e.followUpSound = sounds.effects.spawnBig
        e.followUpArgs = {}
    end

    if e.id == "slice" then -- from sword
        e.sprite = sprites.effects2.attacks.slice
        e.hotSprite = sprites.effects2.attacks.sliceHot
        e.frameSpeeds = 0.055
        e.frameW = 23
        e.frameH = 39
        e.playerComboFlip = true
        e.constPlayerSpawnDist = 12
    end

    if e.id == "sliceBig" then
        e.sprite = sprites.effects2.attacks.sliceBig
        e.hotSprite = sprites.effects2.attacks.sliceBigHot
        e.frameSpeeds = 0.041
        e.frameW = 64
        e.frameH = 64
        e.playerComboFlip = true
        e.constPlayerSpawnDist = 9
    end

    if e.id == "sliceBigGreen" then
        e.sprite = sprites.effects2.attacks.sliceBigGreen
        e.hotSprite = sprites.effects2.attacks.sliceBigHot
        e.frameSpeeds = 0.041
        e.frameW = 64
        e.frameH = 64
        e.playerComboFlip = true
        e.constPlayerSpawnDist = 9
    end

    if e.id == "stab" then
        e.sprite = sprites.effects2.attacks.stab
        e.hotSprite = sprites.effects2.attacks.stabHot
        e.frameSpeeds = 0.062
        e.frameW = 39
        e.frameH = 23
        e.constPlayerSpawnDist = 22
    end

    if e.id == "stabBig" then
        e.sprite = sprites.effects2.attacks.stabBig
        e.hotSprite = sprites.effects2.attacks.stabBigHot
        e.frameSpeeds = 0.046
        e.frameW = 53
        e.frameH = 31
        e.constPlayerSpawnDist = 25
        e.scale = 1.25
    end

    return e
end

function effects2:spawn(id, x, y, args)
    local effect = {}
    effect.id = id
    effect.uid = "effect2_" .. math.random()
    effect.x = x
    effect.y = y
    effect.args = args
    effect.useAnim = true
    effect.frameCount = 2
    effect.frameSpeeds = 0.1 -- can be table of values for each frame
    effect.offY = 0
    effect.rot = 0
    effect.scaleX = 1
    effect.scaleY = 1
    effect.layer = 0
    effect.frameRow = 1 -- can be a string range too
    effect.alpha = 1
    effect.colorImmune = true -- alpha gets messed up

    -- needed before getting stats
    if args and args.dir then effect.dir = args.dir end
    if args and args.hot then effect.hot = args.hot end
    if args and args.player then effect.player = args.player end
    if args and args.spareEnemies then effect.spareEnemies = args.spareEnemies end
    if args and args.sparePlayer then effect.sparePlayer = args.sparePlayer end

    effect = effects2:getStats(effect)

    if args then
        -- copy over all args properties
        for k,v in pairs(args) do
            effect[k] = v -- even though k is the index, I believe the index should be strings, so this should apply all properties
        end
    end

    if effect.spareEnemies and effect.hitboxArgs then effect.hitboxArgs.spareEnemies = true end
    if (effect.sparePlayer or effect.player) and effect.hitboxArgs then effect.hitboxArgs.sparePlayer = true end
    if effect.fixed and effect.player then
        effect.fixedX = effect.x - player:getX()
        effect.fixedY = effect.y - player:getY()
    end

    if effect.hot and effect.hotSprite then effect.sprite = effect.hotSprite end
    if effect.hot and effect.hitboxArgs then effect.hitboxArgs.burn = true end

    if not effect.sprite then return end
    if not effect.frameW or not effect.frameH then
        effect.frameH = effect.sprite:getHeight()
        local frameCount = effect.sprite:getWidth() / effect.frameH
        effect.frameW = effect.sprite:getWidth() / frameCount
    end

    if not effect.ox then effect.ox = effect.frameW/2 end
    if not effect.oy then effect.oy = effect.frameH/2 end

    if effect.dir and not effect.fixedRot then
        effect.rot = getRotationFromVector(effect.dir)
    end
    if effect.forceRot then effect.rot = effect.forceRot end

    if effect.scale then
        effect.scaleX = effect.scale effect.scaleY = effect.scale
    end

    if effect.sound then
        local vol = 1
        local pitch = 1
        local pitchRand = 0
        if effect.soundVol then vol = effect.soundVol end
        if effect.soundPitch then pitch = effect.soundPitch end
        if effect.soundPitchRand then pitchRand = effect.soundPitchRand end
        pitch = pitch + math.random()*pitchRand*2 - pitchRand
        sem:playSound(effect.sound)
    end

    if effect.newSound then
        sem:playSound(effect.newSound)
    end

    if effect.proj then
        if effect.proj == "flameAttack" then
            projectiles:spawn("invisible", effect.x, effect.y, {dir=effect.dir, rad=7, onFire=true, damage=1, deathTimer=0.2, speed=160, canSpark=false, deadOnHit=false, deadOnWall=false})
        end
    end
    
    if effect.fade then flux.to(effect, effect.fade, {alpha = 0}):ease("quadin") end
    if effect.scorch then effects2:spawn("scorch", effect.x, effect.y, {scale=effect.scorch}) end
    if effect.playerComboFlip and player.comboCount % 2 ~= 0 then effect.scaleY = -1 end
    if effect.shake then shake:standard(effect.shake) end
    if effect.tempFlash then spawnLightSource(x, y, 26, "tempFlash", nil, nil, {tempTime=0.12}) end
    if effect.fullFlash then lightSources:fullFlash(60, 0.45) end

    if effect.hitboxDim then
        if not effect.hitboxFrame then
            effect.hitboxArgs.parentUniqueId = effect.uid
            effect.hitboxArgs.parentType = "effect2"
            spawnHitbox(effect.hitboxDim, effect.hitboxArgs)
            effect.hitboxSpawned = true
            if effect.scorchOnHit then effects:spawn("scorch", effect.x, effect.y) end
            if effect.shakeOnHit then shake:standard(2) end
        end
    end

    if effect.useAnim then
        local totalFrames = effect.sprite:getWidth() / effect.frameW
        if not effect.frameColumn then effect.frameColumn = '1-' .. totalFrames end
        if totalFrames == 1 then effect.frameColumn = 1 end

        effect.grid = anim8.newGrid(effect.frameW, effect.frameH, effect.sprite:getWidth(), effect.sprite:getHeight())
        effect.anim = anim8.newAnimation(effect.grid(effect.frameColumn, effect.frameRow), effect.frameSpeeds, function()
            effect:onAnimComplete()
        end)
    else
        -- no anim, just a regular sprite
    end

    function effect:onAnimComplete()
        self.dead = true
        if self.followUpEffect then
            effects2:spawn(self.followUpEffect, self.x, self.y, self.followUpArgs)
        end
        if self.followUpSound then
            dj.play(self.followUpSound, "static", "effect")
        end
        if self.challengeRewardSpawn then
            cutscene:spawnReward()
        end
        if self.args and self.args.spawnWeapon then
            weapons:spawn(self.args.spawnWeapon, self.x, self.y, {bounceVec=vector(0,0)})
        end
        if self.enemyOnAnimEnd then
            local en = effect.enemy
            if en then
                spawnEnemy(en.x, en.y, en.class, en.args)
            end
        end
    end

    function effect:update(dt)
        if self.anim then self.anim:update(dt) end
        if self.deathTimer then
            self.deathTimer = self.deathTimer - dt
            if self.deathTimer < 0 then self.dead = true return end
        end

        if self.constPlayerSpawnDist then
            local offVec = self.dir:normalized() * self.constPlayerSpawnDist
            self.x = player:getX() + offVec.x
            self.y = player:getY() + offVec.y
        end

        if self.enemyUniqueId then
            local en = enemies:getByUniqueId(self.enemyUniqueId)
            if en and en.physics and en.attack then
                local offVal = 0
                if en.attack.hitEffectOff then offVal = en.attack.hitEffectOff end
                local offVec = en.attackDir:normalized() * offVal
                self.rot = getRotationFromVector(en.attackDir)
                self.x = en.physics:getX() + offVec.x
                self.y = en.physics:getY() + offVec.y

                if offVec.x < 0 then self.scaleY = -1 else self.scaleY = 1 end
            end
        end

        if effect.hitboxDim and not effect.hitboxSpawned then
            if effect.hitboxFrame then
                if self.anim then
                    if self.anim.position == effect.hitboxFrame then
                        spawnHitbox(effect.hitboxDim, effect.hitboxArgs)
                        if effect.scorchOnHit then effects:spawn("scorch", effect.x, effect.y) end
                        if effect.shakeOnHit then shake:standard(2) end
                        effect.hitboxSpawned = true
                    end
                end
            end
        end

        if effect.fixed and effect.player then
            effect.x = effect.fixedX + player:getX()
            effect.y = effect.fixedY + player:getY()
        end

        if effect.eventOnFrame and not effect.eventOnFrame.dead then
            if effect.anim and effect.anim.position == effect.eventOnFrame.frame then
                if effect.eventOnFrame.id == "spawnEffect" then
                    effects2:spawn(effect.eventOnFrame.flavor, effect.x, effect.y, effect.eventOnFrame.args)
                end
                if effect.eventOnFrame.id == "spawnEnemy" then
                    if effect.args and effect.args.enemy then
                        local en = effect.args.enemy
                        effects2:spawn('greySpawnBlast', en.x, en.y+1, {enemy=en})
                    end
                end
                if effect.eventOnFrame.id == "trueSpawnEnemy" then
                    if effect.args and effect.args.enemy then
                        local en = effect.args.enemy
                        spawnEnemy(en.x, en.y, en.class, en.args)
                    end
                end
                effect.eventOnFrame.dead = true
            end
        end
    end

    function effect:draw()
        love.graphics.setColor(1, 1, 1, self.alpha)
        if self.color and self.color == "dark" then love.graphics.setColor(0.1, 0.1, 0.1, self.alpha) end
        if self.anim then            
            self.anim:draw(self.sprite, self.x, self.y + self.offY, self.rot, self.scaleX, self.scaleY, self.ox, self.oy)
        else
            love.graphics.draw(self.sprite, self.x, self.y + self.offY, self.rot, self.scaleX, self.scaleY, self.ox, self.oy)
        end
    end

    table.insert(effects2, effect)
end

function effects2:update(dt)
    for i,e in ipairs(effects2) do
        e:update(dt)
    end

    local i = #effects2
    while i > 0 do
        if effects2[i].dead then table.remove(effects2, i) end
        i = i - 1
    end
end

function effects2:getByUid(uid)
    for _,e in ipairs(effects2) do
        if e.uid == uid then return e end
    end
end
