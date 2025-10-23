effects = {}

function effects:spawn(type, x, y, args)

    local effect = {}
    effect.x = x
    effect.y = y
    effect.rot = 0
    effect.dead = false
    effect.scaleX = 1
    effect.scaleY = 1
    effect.layer = 0
    effect.type = type
    effect.shadow = nil
    effect.ySprOff = 0
    effect.colorImmune = true

    effect.uniqueId = math.random()
    if args and args.uniqueId then effect.uniqueId = args.uniqueId end

    function effect:draw() -- default draw for anims
        if self.anim then
            if self.alpha then love.graphics.setColor(1,1,1,self.alpha) end
            self.anim:draw(self.spriteSheet, self.x, self.y + self.ySprOff, self.rot, self.scaleX, self.scaleY, self.width/2, self.height/2)
        end
    end

    if type == "slice" or type == "distSlice" then
        effect.spriteSheet = sprites.effects.sliceAnim
        if type == "distSlice" then effect.spriteSheet = sprites.effects.sliceAnimDist end
        effect.width = 23
        effect.height = 39
        effect.grid = anim8.newGrid(23, 39, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-2', 1), 0.04, function() effect.dead = true end)
        effect.rot = 0
        effect.layer = 0
        effect.alpha = 1

        if args then
            effect.rot = math.atan2(args.y, args.x)
            if player.comboCount % 2 == 0 then
                effect.scaleY = -1
            end
        end

        effect.x = effect.x + args.x*11
        effect.y = effect.y + args.y*11
    end

    if type == "bigSlice" then
        effect.spriteSheet = sprites.effects.sliceBigAnim
        effect.width = 64
        effect.height = 64
        effect.grid = anim8.newGrid(64, 64, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-4', 1), 0.03, function() effect.dead = true end)
        effect.rot = 0
        effect.layer = 0
        effect.alpha = 1

        if args then
            effect.rot = math.atan2(args.y, args.x)
            if player.comboCount % 2 == 0 then
                effect.scaleY = -1
            end
            -- the animation is a bit crooked downwards. Need to rotate it a bit
            effect.rot = effect.rot + math.pi/-8*effect.scaleY
        end

        effect.x = effect.x + args.x*15
        effect.y = effect.y + args.y*15
    end

    if type == "stab" then
        effect.spriteSheet = sprites.effects.stabAnim
        effect.width = 39
        effect.height = 23
        effect.grid = anim8.newGrid(39, 23, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-2', 1), 0.06, function() effect.dead = true end)
        effect.rot = 0
        effect.layer = 0

        if args then
            effect.rot = math.atan2(args.y, args.x)
        end

        effect.x = effect.x + args.x*20
        effect.y = effect.y + args.y*20
    end

    if type == "explosion" then
        effect.spriteSheet = sprites.effects.explosion
        effect.width = 32
        effect.height = 32
        effect.scaleX = 1.25
        effect.scaleY = 1.25
        effect.grid = anim8.newGrid(32, 32, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-11', 1), 0.08, function() effect.dead = true end)
        --effect.anim = anim8.newAnimation(effect.grid('1-10', 1), 0.06, function() effect.dead = true end)
    end

    if type == "newExplosion" then
        effect.spriteSheet = sprites.effects.explosion4
        effect.width = 96
        effect.height = 96
        effect.scaleX = 1.25
        effect.scaleY = 1.25
        effect.grid = anim8.newGrid(96, 96, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-10', 1), 0.055, function() effect.dead = true end)
    end

    if type == "electricHit" then
        effect.spriteSheet = sprites.effects.electricHit
        effect.width = 72
        effect.height = 53
        effect.scaleX = 1
        effect.scaleY = 1
        effect.rot = math.random() * math.pi * 2

        effect.grid = anim8.newGrid(72, 53, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-9', 1), 0.07, function() effect.dead = true end)
    end

    if type == "smallTinyShock" then
        effect.spriteSheet = sprites.effects.smallCharge
        effect.width = 16
        effect.height = 16
        effect.scaleX = 0.8
        effect.scaleY = 0.8
        effect.rot = math.random() * math.pi * 2

        effect.grid = anim8.newGrid(16, 16, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('5-9', 1), 0.07, function() effect.dead = true end)
    end

    if type == "smallTinyPoisonSmoke" then
        effect.spriteSheet = sprites.effects.smoke.smallTinyPoison
        effect.width = 16
        effect.height = 16
        effect.scaleX = 1
        effect.scaleY = 1
        effect.rot = math.random() * math.pi * 2

        effect.alpha = 1
        flux.to(effect, 0.3, {alpha = 0}):ease("quadin")

        effect.grid = anim8.newGrid(16, 16, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-4', 1), 0.075, function() effect.dead = true end)
    end

    if type == "poisonSmoke" then
        effect.spriteSheet = sprites.effects.poisonSmoke
        effect.width = 184
        effect.height = 160
        effect.scaleX = 1
        effect.scaleY = 1
        effect.alpha = 1
        effect.grid = anim8.newGrid(184, 160, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-3', '1-3'), 0.1, function() effect.dead = true end)
        flux.to(effect, 1, {alpha = 0}):ease("quadin")
    end

    if type == "flameAttack" then
        effect.spriteSheet = sprites.effects.flameAttack
        effect.width = 40
        effect.height = 17
        effect.scaleX = 1
        effect.scaleY = 1
        effect.alpha = 1
        effect.rot = getRadFromVector(player.attackDir)
        effect.grid = anim8.newGrid(40, 17, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-9', 1), 0.07, function() effect.dead = true end)
        flux.to(effect, 1.4, {alpha = 0}):ease("quadin")

        spawnLightSource(effect.x + player.attackDir.x*34, effect.y + player.attackDir.y*20, 24, "tempFlash")

        function effect:draw()
            setWhite()
            self.anim:draw(self.spriteSheet, self.x, self.y, self.rot, self.scaleX, self.scaleY, 0, self.height/2)
        end
    end

    if type == "shrinkingShadow" then
        effect.sprite = sprites.effects.shadows.giant
        effect.layer = -1
        effect.scaleX = 1
        effect.scaleY = 1
        effect.alpha = 1
        flux.to(effect, 1, {scaleX = 0, scaleY = 0}):ease("sinein"):oncomplete(function()
            effect.dead = true
        end)
        function effect:draw()
            setWhite()
            love.graphics.draw(self.sprite, self.x, self.y, nil, self.scaleX, self.scaleY, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
        end
    end

    if type == "itemFall" then
        effect.sprite = sprites.effects.shadows.medium
        effect.layer = -1
        effect.scaleX = 0.5
        effect.scaleY = 0.5
        effect.alpha = 1
        dj.play(sounds.effects.smallFall, "static", "effect", 1)
        flux.to(effect, 0.5, {scaleX = 0, scaleY = 0}):ease("sinein"):oncomplete(function()
            effect.dead = true
        end)

        function effect:draw()
            setWhite()
            love.graphics.draw(self.sprite, self.x, self.y, nil, self.scaleX, self.scaleY, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
        end
    end

    if type == "tinyFall" then
        effect.sprite = sprites.effects.shadows.small
        effect.layer = -1
        effect.scaleX = 0.5
        effect.scaleY = 0.5
        effect.alpha = 1
        flux.to(effect, 0.5, {scaleX = 0, scaleY = 0}):ease("sinein"):oncomplete(function()
            effect.dead = true
        end)

        function effect:draw()
            setWhite()
            love.graphics.draw(self.sprite, self.x, self.y, nil, self.scaleX, self.scaleY, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
        end
    end

    if type == "shock" then
        effect.spriteSheet = sprites.effects.shock
        effect.width = 99
        effect.height = 32
        effect.scaleX = 0.9
        effect.scaleY = 0.9
        effect.grid = anim8.newGrid(99, 32, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid(1, '1-5'), 0.075, function() effect.dead = true end)
        effect.dir = vector(1,0)
        if args and args.dir then effect.dir = args.dir end
        effect.rot = getRotationFromVector(effect.dir)
        effect.layer = 1

        --dj.play(sounds.effects.electricBurst, "static", "effect", 0.75)
        sem:playSound(sounds.effects.electricBurst, {volume=0.75})
        projectiles:spawn("invisible", effect.x, effect.y, {dir = effect.dir, speed = 450, damage = 1, rad = 4, deathTimer = 0.18, spareEnemies=true})

        function effect:draw()
            setWhite()
            self.anim:draw(self.spriteSheet, self.x, self.y, self.rot, self.scaleX, self.scaleY, 0, self.height/2)
        end
    end

    if type == "rockSpike" then
        effect.spriteSheet = sprites.effects.rockSpike
        effect.width = 74
        effect.height = 26
        effect.scaleX = 1
        effect.scaleY = 1
        if args and args.scaleX then effect.scaleX = args.scaleX end
        effect.grid = anim8.newGrid(74, 26, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-4', 1), {0.06, 0.06, 0.4, 0.1}, function() effect.dead = true end)
    end

    if type == "exclamation" then
        effect.layer = 2
        effect.scale = 0.8
        effect.alpha = 1

        local totalTime = 0.25

        flux.to(effect, totalTime, {scale = 1.4, y = effect.y-4}):ease("quadout"):oncomplete(function() effect.dead = true end)
        flux.to(effect, totalTime, {alpha = 0}):ease("quartin"):oncomplete(function() effect.dead = true end)
        
        function effect:draw(dt)
            love.graphics.setColor(1,1,1, self.alpha)
            local spr = sprites.ui.exclamation
            love.graphics.draw(spr, self.x, self.y, nil, self.scale, self.scale, spr:getWidth()/2, spr:getHeight())
        end
    end

    if type == "startPortal" then
        effect.spriteSheet = sprites.effects.portal3
        effect.width = 96
        effect.height = 96
        effect.scaleX = 0.01
        effect.scaleY = nil
        effect.grid = anim8.newGrid(96, 96, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-7', 1), 0.12)
        dj.play(sounds.effects.portalOpen, "static", "effect", 1)
        flux.to(effect, 1.6, {scaleX = 1}):ease("backout"):oncomplete(function()
            dj.play(sounds.effects.portalClose, "static", "effect", 1)
            effects:spawn("playerPortalIn", effect.x, effect.y)
            flux.to(effect, 1.6, {scaleX = 0.01}):ease("backin"):oncomplete(function()
                effect.dead = true
            end)
        end)
        spawnBlast(effect.x, effect.y, 164, nil, 0.5)
        effects:spawn("startPortalShadow", effect.x, effect.y + 36)
    end

    if type == "startPortalShadow" then
        effect.spriteSheet = sprites.effects.shadows.storyPortal
        effect.width = 22
        effect.height = 5
        effect.scaleX = 0.01
        effect.scaleY = 0.5
        effect.grid = anim8.newGrid(22, 5, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid(1, 1), 1)
        effect.alpha = 1
        flux.to(effect, 1.5, {scaleX = 1, scaleY = 1}):ease("backout"):oncomplete(function()
            flux.to(effect, 1.5, {scaleX = 0.01, scaleY = 0.5}):ease("backin"):oncomplete(function()
                effect.dead = true
            end)
        end)
    end

    if type == "playerPortalIn" then
        effect.spriteSheet = sprites.playerRedIcon
        effect.width = 15
        effect.height = 18
        effect.scaleX = 0.01
        effect.scaleY = 0.01
        effect.grid = anim8.newGrid(15, 18, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid(1, 1), 1)
        --effect.anim = anim8.newAnimation(effect.grid('1-10', 1), 0.06, function() effect.dead = true end)
        --dj.play(sounds.items.explosion, "static", "effect")
        local newY = player:getY()
        flux.to(effect, 0.75, {scaleX = 1, scaleY = 1, y = newY}):ease("quadout"):oncomplete(function()
            effect.dead = true
            player.state = 0
            player:setPosition(effect.x, effect.y)
            player:justIdle()
            player:justStop()
        end)

        effect.width = 16
        effect.height = 24.25
    end

    if type == "playerLaunch" then
        effect.spriteSheet = sprites.playerSheet
        effect.width = 18
        effect.height = 21
        effect.grid = anim8.newGrid(18, 21, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid(1, 13), 0.9)
        --dj.play(sounds.effects.portalOpen, "static", "effect", 0.6)
        effect.ySprOff = 0
        effect.animState = 0
        effect.layer = 2
        effect.scaleX = player.lastScaleX
        effect.scaleY = 1

        effect.ySprOff = -4

        local totalTime = 1

        flux.to(effect, totalTime, {rot = -2*math.pi*0.95*effect.scaleX}):ease("sineout")
        flux.to(effect, totalTime/2, {ySprOff = -32}):ease("quadout"):oncomplete(function()
            player:setLinearVelocity(0, 0)
            flux.to(effect, totalTime/2, {ySprOff = 0}):ease("quadin"):oncomplete(function()
                player.state = 14.6
                effect.ySprOff = -4
                --effect.dead = true
                -- change to dead spr
                effect.rot = 0
                effect.animState = 1
                effect.anim = anim8.newAnimation(effect.grid(3, 13), 0.9)

                shake:standard(2)
                --background:set("void")
                --parallax:createLayer("gameOver", 1, 1, 1, 0)
                simplax:createLayer("gameOver")

                dj.play(sounds.player.dieLand, "static", "effect", 1)
                local dirVec = vector(1, 0)
                local dx = effect.x - 5
                local dy = effect.y + 8
                effects:spawn("walkDust", dx, dy, {dir = dirVec, scale = 0.8})
                effects:spawn("walkDust", dx, dy, {dir = dirVec:rotated(math.pi/8), scale = 0.6})
                effects:spawn("walkDust", dx, dy, {dir = dirVec:rotated(math.pi/-8), scale = 0.6})
                effects:spawn("walkDust", dx, dy, {dir = dirVec:rotated(math.pi/4), scale = 0.6})
                effects:spawn("walkDust", dx, dy, {dir = dirVec:rotated(math.pi/-4), scale = 0.6})

                dx = effect.x + 4
                dirVec = vector(-1, 0)
                effects:spawn("walkDust", dx, dy, {dir = dirVec, scale = 0.8})
                effects:spawn("walkDust", dx, dy, {dir = dirVec:rotated(math.pi/8), scale = 0.6})
                effects:spawn("walkDust", dx, dy, {dir = dirVec:rotated(math.pi/-8), scale = 0.6})
                effects:spawn("walkDust", dx, dy, {dir = dirVec:rotated(math.pi/4), scale = 0.6})
                effects:spawn("walkDust", dx, dy, {dir = dirVec:rotated(math.pi/-4), scale = 0.6})

                local camX, camY = cam:position()
                flux.to(effect, 0.5, {x = camX, y = camY}):ease("sineout"):oncomplete(function()
                    player:setPosition(effect.x, effect.y)
                end)
            end)
        end)

        function effect:update(dt)
            if self.animState == 1 then
                self.rot = 0
                --self.x = player:getX()
                --self.y = player:getY()
            else
                self.x = player:getX()
                self.y = player:getY()
            end
        end

        spawnBlast(effect.x, effect.y, 64, nil, 0.5)
    end

    if type == "playerRevive" then
        player:look(1)
        effect.spriteSheet = sprites.playerSheet
        effect.width = 18
        effect.height = 21
        effect.grid = anim8.newGrid(18, 21, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid(4,13, 5,13, 4,13, 5,13, 6,13, 7,13), {0.85, 1.25, 0.18, 1.75, 0.4, 0.4}, function()
            cam:fluxUnzoom(1)
            cam.smoother = Camera.smooth.damped(8)
            effect.dead = true
            player.state = 0
        end)
        --dj.play(sounds.effects.portalOpen, "static", "effect", 0.6)
        effect.ySprOff = 0
        effect.animState = 0
        effect.layer = 2
        effect.scaleX = player.lastScaleX
        effect.scaleY = 1
        effect.shadowX = effect.x
        effect.shadowY = effect.y + 4

        effect.ySprOff = -4
        effect.bgFadeTimer = 1.5

        function effect:update(dt)
            if self.bgFadeTimer > 0 then
                self.bgFadeTimer = self.bgFadeTimer - dt
                if self.bgFadeTimer <= 0 then
                    simplax:fadeAll()
                end
            end

            self.anim:update(dt)
        end

        function effect:draw()
            love.graphics.setColor(0.1, 0.1, 0.1, 1)
            love.graphics.draw(sprites.shadows.roundS, self.shadowX, self.shadowY, nil, nil, nil, sprites.shadows.roundS:getWidth()/2, sprites.shadows.roundS:getHeight()/2)
            setWhite()
            self.anim:draw(self.spriteSheet, self.x, self.y + self.ySprOff, self.rot, self.scaleX, self.scaleY, self.width/2, self.height/2)
        end
    end

    if type == "playerFall" then
        if player.state == 14.5 then -- dying
            return
        end

        effect.spriteSheet = sprites.playerSheet
        effect.width = 18
        effect.height = 21
        effect.grid = anim8.newGrid(18, 21, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid(1, 13), 0.9)
        --dj.play(sounds.effects.portalOpen, "static", "effect", 0.6)
        effect.ySprOff = 0
        effect.animState = 0
        effect.layer = 2
        effect.scaleX = player.lastScaleX
        effect.scaleY = 1

        local totalTime = 1

        flux.to(effect, totalTime, {scaleX = 0}):ease("sinein")
        flux.to(effect, totalTime, {rot = -2*math.pi}):ease("linear"):oncomplete(function()
            if gameMap.isSky and effect.dead == false then
                --player.specialStart = 1 -- fall entrance
                --curtain:call('6_ruins', 616, 472, 'down')
                player:respawnWater()
            end
            effect.dead = true
        end)
        
        function effect:update(dt)
            effect.scaleY = effect.scaleX
            if player.platformId > 0 or player.health <= 0 then
                effect.dead = true
                player.state = 0
            end
        end
    end

    if type == "playerFallEntrance" then
        effect.spriteSheet = sprites.playerSheet
        effect.width = 18
        effect.height = 21
        effect.grid = anim8.newGrid(18, 21, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid(1, 13), 0.9)
        --dj.play(sounds.effects.portalOpen, "static", "effect", 0.6)
        effect.ySprOff = -148
        effect.animState = 0
        effect.layer = 2
        effect.scaleX = player.lastScaleX
        effect.scaleY = 1

        local totalTime = 1

        flux.to(effect, totalTime, {ySprOff = 0}):ease("sinein")
        flux.to(effect, totalTime, {rot = -2*math.pi}):ease("linear"):oncomplete(function()
            effect.dead = true
            player.state = 0
            player:hurt(player.health-1)
            player:justStop()
        end)

        function effect:update(dt)
            if self.dead then return end
            player.state = 14
        end
    end

    -- specifically the game over text
    if type == "text" then
        effect.text = args.text
        effect.ySprOff = 0
        effect.layer = 2
        effect.alpha = 0
        effect.tempTimer = 2

        effect.gameover = false
        if args.gameover then effect.gameover = args.gameover end
        effect.showExtraText = false

        local totalTime = args.time
        flux.to(effect, totalTime, {ySprOff = -20}):ease("quadout")
        flux.to(effect, totalTime, {alpha = 1}):ease("quadout")

        function effect:update(dt)
            if self.gameover then
                self.tempTimer = self.tempTimer - dt
                if self.tempTimer < 0 then
                    self.showExtraText = (not self.showExtraText)
                    self.tempTimer = 0.5
                    gamestate = 3.1 -- any button can be clicked
                end
            end
        end

        function effect:draw()
            love.graphics.setColor(1,1,1, self.alpha)
            love.graphics.setFont(fonts.savedMessage)
            love.graphics.printf(self.text, self.x-100, self.y+self.ySprOff, 200, "center")

            if self.showExtraText then
                local spr = sprites.ui.text.continue
                -- Press any button to continue
                love.graphics.draw(sprites.ui.text.continue, self.x, self.y + 26, nil, 0.12, nil, spr:getWidth()/2, spr:getHeight()/2)
            end
        end
    end

    -- tutorial text
    if type == "tutorial" then
        effect.text = args.text
        effect.ySprOff = 0
        effect.layer = 2
        effect.alpha = 0

        local totalTime = 0.3
        flux.to(effect, totalTime, {ySprOff = -4}):ease("quadout")
        flux.to(effect, totalTime, {alpha = 1}):ease("quadout")

        if args and args.exitTimer then effect.exitTimer = args.exitTimer end

        function effect:update(dt)
            if self.exitTimer then
                if self.exitTimer > 0 then self.exitTimer = self.exitTimer - dt end
                if self.exitTimer < 0 then self:trigger() self.exitTimer = 0 end
            end
        end

        function effect:draw()
            love.graphics.setColor(1,1,1, self.alpha)
            love.graphics.setFont(fonts.tutorial)
            love.graphics.printf(self.text, self.x-200, self.y+self.ySprOff, 400, "center")
        end

        function effect:trigger()
            flux.to(effect, 0.5, {alpha = 0}):ease("linear")
        end
    end

    if type == "spinSlice" then
        effect.spriteSheet = sprites.effects.spinSlice
        effect.width = 64
        effect.height = 64
        effect.scaleX = 1
        effect.scaleY = 1
        effect.grid = anim8.newGrid(64, 64, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-8', 1), 0.03, function() effect.dead = true end)
        --effect.anim = anim8.newAnimation(effect.grid('1-10', 1), 0.06, function() effect.dead = true end)
        --dj.play(sounds.items.explosion, "static", "effect")
    end

    if type == "heal" then
        effect.spriteSheet = sprites.effects.heal
        effect.width = 34
        effect.height = 45
        effect.scaleX = 1
        effect.scaleY = 1
        effect.layer = 1
        effect.grid = anim8.newGrid(34, 45, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-10', 1), 0.082, function() effect.dead = true end)

        local rng = math.random() * 0.1
        dj.play(sounds.spells.heal, "static", "effect", 1, 0.95+rng)

        function effect:update(dt)
            effect.anim:update(dt)
            effect.x = player:getX()
            effect.y = player:getY()
        end
    end

    if type == "minorHeal" then
        effect.spriteSheet = sprites.effects.heal
        effect.width = 34
        effect.height = 45
        effect.alpha = 0.75
        effect.scaleX = 0.85
        effect.scaleY = 0.85
        effect.layer = 1
        effect.grid = anim8.newGrid(34, 45, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-10', 1), 0.082, function() effect.dead = true end)

        local rng = math.random() * 0.1
        dj.play(sounds.spells.minorHeal, "static", "effect", 1, 0.95+rng)

        function effect:update(dt)
            effect.anim:update(dt)
            effect.x = player:getX()
            effect.y = player:getY()
        end
    end

    if type == "healWind" then
        effect.spriteSheet = sprites.effects.healWind
        effect.width = 64
        effect.height = 64
        effect.scaleX = player.lastScaleX
        effect.scaleY = 1
        effect.layer = 1
        effect.grid = anim8.newGrid(64, 64, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-6', 1), 0.06, function()
            effect.dead = true
            effects:spawn("heal", player:getX(), player:getY())
        end)

        tutorials:endById("heal")

        spawnLightSource(effect.x, effect.y, 32, "tempFlash", nil, nil, {tempTime=0.45})

        function effect:update(dt)
            --effect.anim:update(dt)
            effect.x = player:getX()
            effect.y = player:getY()
        end
    end

    if type == "lightning" then
        effect.spriteSheet = sprites.effects.lightning
        effect.width = 64
        effect.height = 64
        effect.scaleX = 1
        effect.scaleY = 1
        effect.grid = anim8.newGrid(64, 64, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-8', 1), 0.065, function() effect.dead = true end)

        effects:spawn("scorch", effect.x+1, effect.y-3, {scale=0.25, alpha = 0.4, modifier = 3})

        effect.spawnTimer = 0.3
        if args and args.spawnSpirit then -- spawn cloudSpirit
            function effect:update(dt)
                if effect.spawnTimer > 0 then
                    effect.spawnTimer = effect.spawnTimer - dt
                end
                if effect.spawnTimer < 0 then
                    effect.spawnTimer = 0
                    spawnEnemy(effect.x, effect.y, "cloudSpirit", {aggro=true, helper=true})
                end
            end
        end

        -- NOTE: currently assumes it's an enemy attack
        effect.spawnTimer = 0.065 -- spawn hitbox
        if args and args.enemyAttack then
            function effect:update(dt)
                if effect.spawnTimer > 0 then
                    effect.spawnTimer = effect.spawnTimer - dt
                end
                if effect.spawnTimer < 0 then
                    effect.spawnTimer = 0
                    --spawnHitbox(1, 0.2, {x=self.x, y=self.y, rad=6})
                    --spawnHitbox({x=self.x, y=self.y, rad=6}, {spareEnemies=true})
                    -- create hitbox
                    spawnHitbox({shape = "circle", x = self.x, y = self.y-5, rad = 6, spareEnemies=true})
                end
            end
        end

        function effect:draw()
            setWhite()
            effect.anim:draw(self.spriteSheet, self.x, self.y, self.rot, self.scaleX, nil, self.width/2, self.height)
        end
    end

    if type == "barLightning" then
        effect.spriteSheet = sprites.effects.barLightning
        effect.width = 112
        effect.height = 32
        effect.scaleX = 1
        effect.scaleY = 1
        effect.grid = anim8.newGrid(112, 32, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.dmgTimer = 0.5

        local variance = math.random() * 0.02
        effect.anim = anim8.newAnimation(effect.grid('1-12', 1), 0.07 + variance, function() effect.scaleX = effect.scaleX * -1 if math.random() > 0.5 then effect.scaleY = effect.scaleY * -1 end end)

        if args then
            if args.rot then effect.rot = args.rot end
            if args.scale then effect.scaleX = args.scale effect.scaleY = args.scale end
            if args.blockade then effect.blockade = args.blockade end
            if args.vertical then effect.rot = math.pi/2 end
        end

        function effect:update(dt)
            self.dmgTimer = self.dmgTimer - dt
            if self.dmgTimer < 0 then
                local extendVec = vector(1,0):rotated(self.rot)
                for i=0,4 do
                    local newVec = extendVec*i*10
                    --spawnHitbox(5, 0.6, {x=self.x+newVec.x, y=self.y+newVec.y, rad=6})
                    if i > 0 then
                        newVec = extendVec*i*-10
                        --spawnHitbox(5, 0.6, {x=self.x+newVec.x, y=self.y+newVec.y, rad=6})
                    end
                end
            end
        end

        function effect:retreat()
            self.dead = true
        end

        function effect:draw()
            setWhite()
            effect.anim:draw(self.spriteSheet, self.x, self.y, self.rot, self.scaleX, self.scaleY, self.width/2, self.height/2)
        end
    end

    if type == "groundIce1" or type == "groundIce2" or type == "groundIce3" then
        effect.spriteSheet = sprites.effects[type]
        effect.width = 32
        effect.height = 32
        effect.scaleX = 1
        effect.scaleY = 1
        if math.random() < 0.5 then effect.scaleX = -1 end
        effect.grid = anim8.newGrid(32, 32, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-10', 1), 0.08, function() effect.dead = true end)
    end

    if type == "iceBlast" then
        effect.spriteSheet = sprites.effects.iceBlast
        effect.layer = -1
        effect.width = 51
        effect.height = 32
        effect.scaleX = 1
        effect.scaleY = 1
        --if math.random() < 0.5 then effect.scaleX = -1 end
        effect.grid = anim8.newGrid(51, 32, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-4', 1), 0.08, function() effect.dead = true end)
    end

    if type == "fireRing" then
        effect.spriteSheet = sprites.effects.fireRing
        effect.width = 96
        effect.height = 96
        effect.scaleX = 1
        effect.scaleY = 1
        --if math.random() < 0.5 then effect.scaleX = -1 end
        effect.grid = anim8.newGrid(96, 96, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-10', 1), 0.08, function() effect.dead = true end)

        function effect:update(dt)

        end
    end

    if type == "sink" then
        effect.spriteSheet = sprites.environment.sink
        effect.y = effect.y - 0.1
        effect.width = 16
        effect.height = 16
        effect.scaleX = 0.85
        effect.scaleY = 0.85
        effect.layer = -1
        effect.alpha = 0
        effect.timer = 2
        flux.to(effect, 0.25, {alpha = 0.9}):ease("quadout"):oncomplete(function()
            flux.to(effect, 0.6, {alpha = 0}):ease("quintin")
        end)
        effect.grid = anim8.newGrid(16, 16, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-4', 1), 0.1)
    end

    if type == "ripple" then
        effect.spriteSheet = sprites.effects.ripple
        effect.width = 16
        effect.height = 16
        effect.scaleX = 1
        effect.scaleY = 1
        effect.layer = -1
        effect.grid = anim8.newGrid(16, 16, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-6', 1), 0.075, function() effect.dead = true end)
    end

    if type == "hudFlash" then
        effect.spriteSheet = sprites.hud.flash
        effect.width = 21
        effect.height = 21
        effect.scaleX = 1
        effect.scaleY = 1
        effect.layer = -1
        effect.grid = anim8.newGrid(21, 21, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-3', 1), 0.08, function() effect.dead = true end)
    end

    if type == "rainRipple" then
        effect.spriteSheet = sprites.effects.rainRipple
        effect.width = 8
        effect.height = 8
        effect.scaleX = 1
        effect.scaleY = 1
        effect.alpha = 0.8
        effect.grid = anim8.newGrid(8, 8, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-6', 1), 0.05, function() effect.dead = true end)
    end

    if type == "spark" then
        effect.spriteSheet = sprites.effects.spark
        effect.width = 28
        effect.height = 34
        effect.scaleX = 0.7
        effect.scaleY = 0.7
        effect.rot = math.random(0, 3) + math.random()
        effect.grid = anim8.newGrid(28, 34, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-3', 1), 0.06, function() effect.dead = true end)
    end

    if type == "scorch" then
        effect.sprite = sprites.effects.scorch
        effect.width = 32
        effect.height = 32
        effect.scaleX = 0.6
        effect.scaleY = 0.6
        effect.alpha = 0
        effect.timer = 3
        effect.layer = -1
        effect.targetAlpha = 0.8
        effect.set = false
        effect.modifier = 1

        if args then
            if args.scale then effect.scaleX = args.scale effect.scaleY = args.scale end
            if args.alpha then effect.targetAlpha = args.alpha end
            if args.modifier then effect.modifier = args.modifier end
        end

        function effect:update(dt)
            --self.scaleX = self.scaleX - (dt/10)
            --self.alpha = self.timer / 2
            if self.alpha < 0 then
                self.alpha = self.alpha - dt
            else
                self.alpha = self.alpha - dt / self.modifier
            end

            if self.alpha < -0.1 then
                if self.set == false then
                    self.set = true
                    self.alpha = self.targetAlpha
                else
                    self.dead = true
                end
            end
        end

        function effect:draw()
            love.graphics.setColor(0.2, 0.2, 0.2, self.alpha)
            love.graphics.draw(self.sprite, self.x, self.y, nil, self.scaleX, nil, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
            love.graphics.setColor(1,1,1,1)
        end
    end

    if type == "skyElevatorRise" or type == "cloudElevatorRise" then
        effect.sprite = sprites.environment.elevatorActive
        effect.width = 48
        effect.height = 48
        effect.layer = -2

        if type == "cloudElevatorRise" then
            effect.sprite = sprites.environment.elevatorCloudActive
            dj.play(sounds.misc.elevatorRise2, "static", "effect", 0.8)
            flux.to(effect, 1, {y = y-178}):ease("sinein"):oncomplete(function()
                curtain:call("d_cloud_boss", 968, 744, "up")
                dj.fade(1)
            end)
        end

        if type == "skyElevatorRise" then
            dj.play(sounds.misc.elevatorRise, "static", "effect", 0.6)
            local destY = y + 14
            flux.to(effect, 1.8, {y = destY}):ease("sineinout"):oncomplete(function()
                dj.play(sounds.misc.elevatorRise2, "static", "effect", 0.8)
                flux.to(effect, 1, {y = destY-178}):ease("sinein"):oncomplete(function()
                    player.specialStart = 2 -- elevator rise
                    curtain:call("d_cloud", 1096, 776, "up")
                end)
            end)
        end

        function effect:draw()
            setWhite()
            love.graphics.draw(self.sprite, self.x, self.y, nil, 1, nil, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
            --player:drawPhantom(self.x, self.y)
        end
    end

    if type == "skyElevatorArrive" then
        player:setPosition(effect.x, effect.y)

        effect.sprite = sprites.environment.elevatorActive
        effect.width = 48
        effect.height = 48
        effect.layer = -2

        local mult = 1
        if args and args.mult then mult = args.mult end

        local destY = y
        effect.y = effect.y + 208*mult
        player.state = 14

        flux.to(effect, 2, {y = destY}):ease("quadout"):oncomplete(function()
            effect.dead = true
            player.state = 0
            shake:standard(2)
            dj.play(sounds.misc.elevatorStop, "static", "effect", 1)
            --spawnStructure('elevatorFromSky', effect.x, effect.y)
        end)

        function effect:update(dt)
            if self.dead == false then
                player.state = 14
            end
        end

        function effect:draw()
            setWhite()
            love.graphics.draw(self.sprite, self.x, self.y, nil, 1, nil, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
            --player:drawPhantom(self.x, self.y)
        end
    end

    if type == "skyElevatorDescend" then
        effect.sprite = sprites.environment.elevatorActive
        effect.width = 48
        effect.height = 48
        effect.layer = -2

        local destY = y + 148

        dj.play(sounds.misc.elevatorFall, "static", "effect", 0.8)

        flux.to(effect, 1.2, {y = destY}):ease("sinein"):oncomplete(function()
            player.specialStart = 3 -- elevator descend
            curtain:call("6_ruins", 584, 344, "down")
        end)

        function effect:draw()
            setWhite()
            love.graphics.draw(self.sprite, self.x, self.y, nil, 1, nil, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
            --player:drawPhantom(self.x, self.y)
        end
    end

    if type == "triangleScorch" then
        effect.sprite = sprites.effects.triangleScorch
        effect.scaleX = 0.01
        effect.scaleY = 0.01
        effect.alpha = 0.35
        effect.timer = 1.8
        effect.layer = -1
        effect.rot = 0
        effect.state = 1
        effect.y = effect.y + 2

        if args then
            effect.rot = math.atan2(args.y, args.x)
        end

        flux.to(effect, 0.5, {scaleX = 0.12}):ease("linear"):oncomplete(function()
            flux.to(effect, 1.2, {alpha = 0}):ease("quadout")
            --flux.to(effect, 0.5, {scaleX = 0}):ease("linear")
            effect.state = 2
        end)
        flux.to(effect, 0.5, {scaleY = 0.12}):ease("linear")

        function effect:update(dt)
            --self.scaleX = self.scaleX - (dt/10)
            --self.alpha = self.timer / 2
        end

        function effect:draw()
            love.graphics.setColor(0.2, 0.2, 0.2, self.alpha)
            love.graphics.draw(self.sprite, self.x, self.y, self.rot, self.scaleX, self.scaleY, 0, self.sprite:getHeight()/2)
            love.graphics.setColor(1,1,1,1)
        end
    end

    if type == "wave" then
        effect.spriteSheet = sprites.environment.wave
        effect.width = 16
        effect.height = 16
        effect.scaleX = 0.7
        effect.scaleY = 0.7
        effect.layer = -1
        effect.grid = anim8.newGrid(16, 16, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-17', 1), 0.07, function() effect.dead = true end)
    end

    if type == "smallSmoke" then
        effect.y = effect.y - 16
        effect.spriteSheet = sprites.effects.smoke.small
        effect.width = 32
        effect.height = 32
        effect.scaleX = 1
        effect.scaleY = 1
        --effect.layer = -1
        effect.grid = anim8.newGrid(32, 32, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-8', 1), 0.12)
    end

    if type == "chimney" then
        effect.spriteSheet = sprites.effects.smoke.chimney
        effect.width = 32
        effect.height = 32
        effect.scaleX = 1
        effect.scaleY = 1
        effect.layer = 1
        effect.alpha = 0
        effect.x = effect.x
        effect.y = effect.y - 7
        effect.grid = anim8.newGrid(32, 32, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-6', 1), 0.16, function() effect.dead = true end)
        flux.to(effect, 0.1, {alpha = 1}):ease("quadout"):oncomplete(function() flux.to(effect, 0.9, {alpha = 0}):ease("expoin") end)

        function effect:update(dt)
            self.y = self.y - (dt * 15)
        end
    end

    if type == "chimneySource" then
        effect.animTimer = 1.6

        function effect:update(dt)
            self.animTimer = self.animTimer - dt
            if self.animTimer < 0 then
                effects:spawn("chimney", self.x, self.y)
                self.animTimer = 0.6
            end
        end

        function effect:draw(dt)
        end
    end

    if type == "sunflowerGrow" then
        effect.sprite = sprites.environment.sunflower
        effect.width = 15
        effect.height = 31
        effect.scaleX = 0
        effect.scaleY = 0
        effect.ox = 7.5
        effect.oy = 31
        flux.to(effect, 1.5, {scaleX = 1, scaleY = 1}):ease("elasticout"):oncomplete(
            function() effect.dead = true spawnSaveSpot("effectFlower", effect.x, effect.y-2.25) end
        )
        function effect:draw()
            setWhite()
            love.graphics.draw(self.sprite, self.x, self.y, self.rot, self.scaleX, self.scaleY, self.ox, self.oy)
            love.graphics.setColor(1,1,1,1)
        end
        sem:playSound(sounds.effects.flowerGrow)
    end

    if type == "leavesElevatorGrow" then
        effect.sprite = sprites.elevators.leaves
        effect.width = 32
        effect.height = 32
        effect.scaleX = 0
        effect.scaleY = 0
        effect.ox = 16
        effect.oy = 18
        effect.layer = -2
        flux.to(effect, 0.8, {scaleX = 1, scaleY = 1}):ease("quadout"):oncomplete(
            function() effect.dead = true elevators:spawn("eyerisToCave", x, y-2) end
        )
        function effect:draw()
            setWhite()
            love.graphics.draw(self.sprite, self.x, self.y, self.rot, self.scaleX, self.scaleY, self.ox, self.oy)
            love.graphics.setColor(1,1,1,1)
        end
        sem:playSound(sounds.effects.flowerGrow)
    end

    if type == "momFlowerGrow" then
        effect.sprite = sprites.attacks.momFlower
        effect.width = 16
        effect.height = 17
        effect.scaleX = 0
        effect.scaleY = 0
        effect.ox = 6.5
        effect.oy = 14
        flux.to(effect, 1.2, {scaleX = 1, scaleY = 1}):ease("elasticout"):oncomplete(
            function() effect.dead = true effects2:spawn("poisonSmokeSmall", effect.x, effect.y-2) end
        )
        function effect:draw()
            setWhite()
            love.graphics.draw(self.sprite, self.x, self.y, self.rot, self.scaleX, self.scaleY, self.ox, self.oy)
            love.graphics.setColor(1,1,1,1)
        end
        sem:playSound(sounds.effects.flowerGrow, {volume=1, pitchRand=0.2})
    end

    if type == "sparkle" then
        effect.spriteSheet = sprites.effects.sparkle
        effect.width = 16
        effect.height = 16
        effect.scaleX = 0.85
        effect.scaleY = 0.85
        --effect.layer = -1
        effect.grid = anim8.newGrid(16, 16, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-4', 1), {0.065, 0.065, 0.065, 0.04}, function() effect.dead = true end)
    end

    if type == "magicExplosion" then
        effect.spriteSheet = sprites.effects.magicExplosion
        effect.width = 64
        effect.height = 64
        effect.grid = anim8.newGrid(64, 64, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-8', 1), 0.072, function() effect.dead = true end)
    end

    if type == "enemySpawn" then
        effect.spriteSheet = sprites.effects.enemySpawn
        effect.width = 48
        effect.height = 56
        effect.scaleX = 1
        effect.scaleY = 1

        -- move effect up to compensate for offset
        effect.y = effect.y - 16

        spawnLightSource(effect.x, effect.y+12, 40, "tempFlash", nil, nil, {tempTime=0.3})

        local en = args.enemy
        effect.grid = anim8.newGrid(48, 56, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-4', 1), 0.07, function()
            spawnEnemy(en.x, en.y, en.class, en.args)
            spawnBlast(en.x, en.y, 48, nil, 0.2)
            effect.dead = true
        end)
    end

    if type == "spawnMagic" then -- spawns cutscene reward
        effect.spriteSheet = sprites.effects.spawnMagic
        effect.width = 64
        effect.height = 64
        effect.scaleX = 1
        effect.scaleY = 1

        effect.grid = anim8.newGrid(64, 64, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-9', 1), 0.065, function()
            cutscene:spawnReward()
            effects:spawn("magicExplosion", effect.x, effect.y)
            effect.dead = true
        end)
    end

    if type == "spikeVine" or type == "spikeVineBlockade" then
        effect.spriteSheet = sprites.effects2.attacks.spikeVine
        effect.width = 24
        effect.height = 30
        effect.scaleX = 1
        effect.scaleY = 1
        if type == "spikeVineBlockade" then
            effect.blockade = true
        end

        --offset the y just because
        effect.y = effect.y - 12

        effect.grid = anim8.newGrid(24, 30, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())

        function effect:retreat()
            effect.anim = anim8.newAnimation(effect.grid(4,1, 5,1, 6,1, 3,1, 1,1), {0.12, 0.18, 0.1, 0.08, 0.08}, function()
                effect.dead = true
            end)
        end

        effect.anim = anim8.newAnimation(effect.grid(1,1, 2,1, 3,1, 2,1, 3,1), 0.08, function()
            -- spawn hitboxes here TODO
            if effect.blockade then -- neverending
                effect.anim = anim8.newAnimation(effect.grid('4-6',1), {0.15 + (math.random()*0.02), 0.25 + (math.random()*0.02), 0.18 + (math.random()*0.02)})
            else
                effect:retreat()
            end
        end)
    end

    if type == "arrowTrail" then
        effect.width = 6
        effect.height = 3
        effect.alpha = 0.2
        effect.timer = 0.6
        --effect.layer = -1

        function effect:update(dt)
            self.alpha = self.alpha - dt
        end

        function effect:draw()
            love.graphics.setColor(1, 1, 1, self.alpha)
            love.graphics.rectangle("fill", self.x-(self.width/2), self.y-(self.height/2), self.width, self.height)
            love.graphics.setColor(1,1,1,1)
        end
    end

    if type == "arrowBuried" then
        if args then
            effect.rot = args.rot
            effect.vec = args.vec:rotated(math.pi)
        end
        effect.alpha = 1
        effect.timer = 1.2
        effect.layer = -1
        effect.sprite = sprites.items.arrowBuried
        effect.sy = 1
        if effect.vec:rotated(math.pi).x < 0 then effect.sy = -1 end

        flux.to(effect, 0.2, {alpha = 0}):ease("quintin")

        local dustTime = 0.4
        local factor = 0.16
        local offVec = effect.vec:rotated(math.pi) * 3
        effects:spawn("walkDust", effect.x + offVec.x, effect.y + offVec.y, {dir = effect.vec, scale = 0.5, time = dustTime, alphaFactor = factor})
        effects:spawn("walkDust", effect.x + offVec.x, effect.y + offVec.y, {dir = effect.vec:rotated(math.pi/8), scale = 0.5, time = dustTime, alphaFactor = factor})
        effects:spawn("walkDust", effect.x + offVec.x, effect.y + offVec.y, {dir = effect.vec:rotated(math.pi/-8), scale = 0.5, time = dustTime, alphaFactor = factor})

        if args == "up" or args == "down" then
            effect.width = 3
            effect.height = 6
        end

        function effect:update(dt)
            --self.alpha = self.alpha - dt
        end

        function effect:draw()
            love.graphics.setColor(1, 1, 1, self.alpha)
            love.graphics.draw(self.sprite, self.x, self.y, self.rot, nil, self.sy, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
            love.graphics.setColor(1,1,1,1)
        end
    end

    if type:find("Death") then
        effect.alpha = 1
        effect.timer = 0.75
        effect.layer = -1

        function effect:update(dt)
            self.alpha = self.alpha - dt*1.5
        end
    end

    if type == "eyeDeath" then
        effect.sprite = sprites.enemies.eyeDead1

        if args and args.form == 2 then
            effect.sprite = sprites.enemies.eyeDead2
        elseif args and args.form == 3 then
            effect.sprite = sprites.enemies.eyeDead3
        end

        function effect:draw()
            love.graphics.setColor(1, 1, 1, self.alpha)
            love.graphics.draw(sprites.enemies.eyeShadow, self.x, self.y+7, nil, nil, nil, sprites.enemies.eyeShadow:getWidth()/2, sprites.enemies.eyeShadow:getHeight()/2)
            love.graphics.draw(self.sprite, self.x, self.y, nil, nil, nil, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
            love.graphics.setColor(1,1,1,1)
        end
    end

    if type == "batDeath" then
        effect.sprite = sprites.enemies.batDead
        effect.scaleX = args.scaleX

        function effect:draw()
            love.graphics.setColor(1, 1, 1, self.alpha)
            love.graphics.draw(sprites.enemies.shadow, self.x, self.y+7, nil, nil, nil, sprites.enemies.shadow:getWidth()/2, sprites.enemies.shadow:getHeight()/2)
            love.graphics.draw(self.sprite, self.x, self.y, nil, self.scaleX, 1, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
            love.graphics.setColor(1,1,1,1)
        end
    end

    if type == "batEntrance" then
        effect.spriteSheet = sprites.enemies.bat
        effect.width = 16
        effect.height = 16
        effect.scaleX = 1
        effect.scaleY = 1
        effect.alpha = 0
        if x > player:getX() then effect.scaleX = -1 end
        effect.grid = anim8.newGrid(16, 16, effect.spriteSheet:getWidth(), effect.spriteSheet:getHeight())
        effect.anim = anim8.newAnimation(effect.grid('1-2', 1), 1.08)
        effect.shadowX = effect.x
        effect.shadowY = effect.y+10

        local finalY = effect.y
        effect.y = effect.y - 24
        flux.to(effect, 0.3, {alpha = 1}):ease("sineout")
        flux.to(effect, 0.3, {y = finalY}):ease("sineout"):oncomplete(function() effect.dead = true spawnEnemy(effect.x-5.5, effect.y-4.5, "bat") end)

        function effect:draw()
            love.graphics.setColor(1,1,1,self.alpha)
            love.graphics.draw(sprites.enemies.shadow, self.shadowX, self.shadowY, nil, nil, nil, sprites.enemies.shadow:getWidth()/2, sprites.enemies.shadow:getHeight()/2)
            self.anim:draw(self.spriteSheet, self.x, self.y, self.rot, self.scaleX, self.scaleY, self.width/2, self.height/2)
        end
    end

    if type == "fuseSmoke" then
        effect.rad = 1
        effect.alpha = 0.2
        effect.timer = 0.75
        effect.sprite = sprites.effects.fuseSmoke
        effect.scaleX = 0.25
        
        -- Define the path that the smoke rises
        local vec = vector(0, -1)
        local pos = math.random()
        if pos > 0.5 then pos = 1 else pos = -1 end
        local mag = math.random()/4

        effect.vec = vec:rotateInplace(mag * pos)

        function effect:update(dt)
            local speed = 15
            self.x = self.x + (speed * self.vec.x * dt)
            self.y = self.y + (speed * self.vec.y * dt)
            self.scaleX = self.scaleX + (dt)
            self.alpha = self.timer / 0.75 * 0.2
        end

        function effect:draw()
            love.graphics.setColor(1, 1, 1, self.alpha)
            love.graphics.draw(self.sprite, self.x, self.y, nil, self.scaleX, nil, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
            love.graphics.setColor(1,1,1,1)
        end
    end

    if type == "steamBlobs" then
        effect.rad = 1
        effect.alpha = 0.2
        effect.timer = 1.15
        effect.sprite = sprites.effects.blobs['blob' .. math.random(1, 4)]
        effect.scaleX = 0.5
        
        -- Define the path that the smoke rises
        local vec = vector(0, -1)
        local pos = math.random()
        if pos > 0.5 then pos = 1 else pos = -1 end
        local mag = math.random()/4

        effect.vec = vec:rotateInplace(mag * pos)

        function effect:update(dt)
            local speed = 12
            self.x = self.x + (speed * self.vec.x * dt)
            self.y = self.y + (speed * self.vec.y * dt)
            self.scaleX = self.scaleX + (dt*2)
            self.alpha = self.timer / 0.75 * 0.2
        end

        function effect:draw()
            love.graphics.setColor(1, 1, 1, self.alpha)
            love.graphics.draw(self.sprite, self.x, self.y, nil, self.scaleX, nil, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
            love.graphics.setColor(1,1,1,1)
        end
    end

    if type == "steamBlast" then
        effect.rad = 1
        effect.alpha = 0.25
        effect.timer = 0.5 + math.random()*0.3
        effect.sprite = sprites.effects.blobs['blob' .. math.random(1, 4)]
        effect.scaleX = 0.5
        
        -- Define the path that the smoke rises
        local vec = vector(0, -1)
        if args and args.dir then vec = args.dir:normalized() end
        vec = vec * math.random(40, 70)

        local finalX = effect.x + vec.x
        local finalY = effect.y + vec.y

        flux.to(effect, effect.timer, {x = finalX, y = finalY, scaleX = 1.75}):ease("quadout")
        flux.to(effect, effect.timer, {alpha = 0}):ease("quadin")

        function effect:draw()
            love.graphics.setColor(1, 1, 1, self.alpha)
            love.graphics.draw(self.sprite, self.x, self.y, nil, self.scaleX, nil, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
            love.graphics.setColor(1,1,1,1)
        end
    end

    if type == "walkDust" then
        
        effect.rad = 1
        effect.alpha = 0.7
        effect.timer = 0.4
        effect.maxTime = 0.4
        effect.scaleX = 0.4
        effect.layer = -1
        effect.offY = 0
        effect.rot = math.random() * math.pi*2
        effect.alphaFactor = 0.5

        if args.alphaFactor then effect.alphaFactor = args.alphaFactor end

        if args.time then
            effect.timer = args.time
            effect.maxTime = args.time
        end

        local sprNum = math.random(1, 4)
        effect.sprite = sprites.effects.blobs["blob" .. sprNum]

        if args.scale then effect.scaleX = args.scale end

        local vec = args.dir:normalized():rotated(math.pi)
        local finalX = effect.x + vec.x*6
        local finalY = effect.y + vec.y*6

        flux.to(effect, effect.maxTime, {x = finalX}):ease("quadout")
        flux.to(effect, effect.maxTime, {y = finalY}):ease("quadout")

        function effect:update(dt)
            self.scaleX = self.scaleX + (dt)
            self.offY = self.offY - dt*8
            self.alpha = self.timer / self.maxTime * self.alphaFactor
        end

        function effect:draw()
            love.graphics.setColor(1, 1, 1, self.alpha)
            love.graphics.draw(self.sprite, self.x, self.y + self.offY, self.rot, self.scaleX, nil, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
            love.graphics.setColor(1,1,1,1)
        end
    end

    if type == "cloudShadow" then
        
        effect.alpha = 0
        effect.timer = math.random(6, 12)
        effect.layer = 1
        effect.sprite = sprites.effects.cloudShadow
        effect.fading = false
        effect.scaleX = 0.7 + math.random()*0.6

        local maxAlpha = 0.075 + math.random()*0.1
        local speed = 2 + math.random()*15

        effect.dir = weather.windDir*speed

        flux.to(effect, 1, {alpha = maxAlpha}):ease("quadout")

        function effect:update(dt)
            self.x = self.x + self.dir.x*dt
            self.y = self.y + self.dir.y*dt
            if self.fading == false and self.timer < 1.25 then
                flux.to(effect, 1, {alpha = 0}):ease("quadout")
            end
        end

        function effect:draw()
            love.graphics.setColor(0, 0, 0, self.alpha)
            love.graphics.draw(self.sprite, self.x, self.y, nil, self.scaleX, nil, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
            love.graphics.setColor(1,1,1,1)
        end
    end

    if type == "rain" then
        
        effect.alpha = 0
        effect.timer = 1
        effect.layer = 1
        effect.sprite = sprites.effects.rain
        effect.fading = false
        effect.dir = vector(0, 1):rotated(math.pi/-12)
        effect.rot = getRotationFromVector(effect.dir)

        effect.rx = effect.x - 46
        effect.ry = effect.y - 240

        local maxAlpha = 0.075 + math.random()*0.1
        local speed = 2 + math.random()*15

        effect.dir = weather.windDir*speed

        local finalX = effect.x
        local finalY = effect.y
        local totalTime = 0.72 + (math.random() * 0.16)

        flux.to(effect, 0.2, {alpha = 1}):ease("quadout")
        flux.to(effect, totalTime, {rx = finalX}):ease("linear")
        flux.to(effect, totalTime, {ry = finalY}):ease("linear"):oncomplete(function()
            effect.alpha = 0
            if curtain.state == 0 then
                effects:spawn("rainRipple", effect.x, effect.y)
            end
        end)

        function effect:update(dt)
        end

        function effect:draw()
            love.graphics.setColor(1, 1, 1, self.alpha)
            love.graphics.draw(self.sprite, self.rx, self.ry, self.rot, nil, nil, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
            love.graphics.setColor(1,1,1,1)
        end
    end

    if type == "petal" or type == "leaf" then
        
        effect.alpha = 0
        effect.layer = 1
        effect.sprite = sprites.effects[type]
        effect.fading = false
        effect.dir = vector(1, 0):rotated(math.pi/8)
        effect.sizeScale = 0.92
        effect.scaleX = -1
        effect.animTimer = -1
        effect.state = 0

        if type == "leaf" then effect.sprite = sprites.environment.weather.leaf end

        effect.rx = effect.x - (360 + (80*math.random()))
        effect.ry = effect.y - (50 + (20*math.random()))

        local maxAlpha = 1
        local speed = 2 + math.random()*15

        --effect.dir = weather.windDir*speed

        local finalX = effect.x
        local finalY = effect.y
        local totalTime = 11 + (math.random() * 3)

        flux.to(effect, 0.5, {alpha = 1}):ease("quadout")
        flux.to(effect, totalTime, {rx = finalX}):ease("linear")
        flux.to(effect, totalTime, {ry = finalY}):ease("linear")

        effect.totalTime = totalTime-1
        effect.floatTime = 1.6 + (math.random()*0.3)
        effect.floatOff = 0
        local floatIntensity = 18

        function effect:floatRight()
            self.tween = flux.to(self, self.floatTime, {floatOff = floatIntensity}):ease("quadinout"):oncomplete(function() self:floatLeft() end)
            self.animTimer = 0.08
        end
    
        function effect:floatLeft()
            self.tween = flux.to(self, self.floatTime, {floatOff = -1*floatIntensity}):ease("quadinout"):oncomplete(function() self:floatRight() end)
            self.animTimer = 0.3
        end

        effect:floatRight()

        function effect:update(dt)
            if self.animTimer > 0 then
                self.animTimer = self.animTimer - dt
                if self.animTimer < 0 then self.animTimer = 0 self.scaleX = self.scaleX * -1 end
            end
            if self.totalTime > 0 then
                self.totalTime = self.totalTime - dt
                if self.totalTime < 0 then
                    self.totalTime = 0
                    self.state = 1
                end
            end
            if self.state == 1 then
                self.alpha = self.alpha - dt*2
                if self.alpha < 0 then
                    self.dead = true
                end
            end
        end

        function effect:draw()
            love.graphics.setColor(1, 1, 1, self.alpha)
            love.graphics.draw(self.sprite, self.rx + self.floatOff, self.ry, nil, self.scaleX * self.sizeScale, self.sizeScale, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
            love.graphics.setColor(1,1,1,1)
        end
    end

    if type == "snow" then
        
        effect.alpha = 0
        effect.timer = 8
        effect.layer = 1
        effect.sprite = sprites.effects.snow
        effect.fading = false
        effect.scaleX = 0.4 + (math.random() * 0.6)
        effect.rot = 0 --getRotationFromVector(effect.dir)
        effect.rotSpeed = 1 + (math.random() * 5)
        if math.random() < 0.5 then effect.rotSpeed = effect.rotSpeed * -1 end

        effect.rx = effect.x + 64 + (math.random()*64)
        effect.ry = effect.y - 240
        effect.ox = 0

        local offsetDir = 1
        if math.random() > 0.5 then offsetDir = -1 end

        local maxAlpha = 0.075 + math.random()*0.1
        local finalX = effect.x
        local finalY = effect.y
        local totalTime = 2.72 + (math.random() * 1.2)

        effect.fadeTimer = totalTime - 0.2

        flux.to(effect, 0.2, {alpha = 0.8}):ease("quadout")
        flux.to(effect, totalTime, {rx = finalX}):ease("linear")
        flux.to(effect, totalTime, {ry = finalY}):ease("linear"):oncomplete(function()
            effect.alpha = 0
        end)

        function effect:update(dt)
            if self.fadeTimer > 0 then
                self.fadeTimer = self.fadeTimer - dt
            end
            if self.fadeTimer < 0 then
                self.fadeTimer = 0
                flux.to(effect, 0.2, {alpha = 0}):ease("quadout")
            end

            self.rot = self.rot + (self.rotSpeed * dt)
        end

        function effect:draw()
            love.graphics.setColor(1, 1, 1, self.alpha)
            love.graphics.draw(self.sprite, self.rx, self.ry, self.rot, self.scaleX, nil, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
            love.graphics.setColor(1,1,1,1)
        end
    end

    if type == "eyeIntro" then
        
        effect.layer = 2
        effect.sprite = sprites.effects.eyeBall
        effect.floatTime = 0.8 + (math.random()*0.2)
        effect.floatOff = 0
        effect.speed = 32
        effect.dir = getSelfToPlayerVector(effect.x, effect.y)
        effect.myTimer = 8
        local floatIntensity = 5

        function effect:floatUp()
            self.tween = flux.to(self, self.floatTime, {floatOff = floatIntensity}):ease("quadinout"):oncomplete(function() self:floatDown() end)
        end
    
        function effect:floatDown()
            self.tween = flux.to(self, self.floatTime, {floatOff = -1*floatIntensity}):ease("quadinout"):oncomplete(function() self:floatUp() end)
        end

        effect:floatUp()

        function effect:update(dt)
            self.dir = getSelfToPlayerVector(self.x, self.y)
            if self.myTimer > 0 then
                self.myTimer = self.myTimer - dt
                self.x = self.x + (self.dir.x * self.speed * dt)
                self.y = self.y + (self.dir.y * self.speed * dt)
            end

            if self.myTimer < 0 then
                self.myTimer = 0
                local destX = player:getX()
                local destY = player:getY()
                flux.to(self, 0.75, {x = destX, y = destY}):ease("quadin"):oncomplete(function() self.dead = true end)
            end
        end

        function effect:draw()
            setWhite()
            love.graphics.draw(self.sprite, self.x, self.y + self.floatOff, nil, 1, nil, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
            local irisSpr = sprites.effects.eyeIrisSmall
            local offX = self.dir.x * 2
            local offY = self.dir.y * 2
            love.graphics.draw(irisSpr, self.x + offX, self.y + offY + self.floatOff, nil, 1.15, nil, irisSpr:getWidth()/2, irisSpr:getHeight()/2)
        end
    end

    if type == "ember" then
        
        effect.rad = 1
        effect.alpha = 0.9
        effect.timer = 0.3
        effect.scaleX = 0.3
        --effect.layer = -1
        effect.offY = 0
        effect.rot = math.random() * math.pi*2
        effect.color = args.color

        local sprNum = math.random(1, 4)
        effect.sprite = sprites.effects.blobs["blob" .. sprNum]

        if args.scale then effect.scaleX = args.scale end

        local vec = vector(0,1)
        local finalX = effect.x + vec.x*6*math.random()
        local finalY = effect.y + vec.y*6*math.random()

        flux.to(effect, 0.35, {x = finalX}):ease("quadout")
        flux.to(effect, 0.35, {y = finalY}):ease("quadout")

        function effect:update(dt)
            --self.scaleX = self.scaleX + (dt)
            self.offY = self.offY - dt*8
            self.alpha = self.alpha - dt*2
        end

        function effect:draw()
            local gVal = 207 - (((self.timer / 0.3) * 75 - 75)*-1)
            love.graphics.setColor(255/255, gVal/255, 125/255, self.alpha)
            love.graphics.draw(self.sprite, self.x, self.y + self.offY, self.rot, self.scaleX, nil, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
            love.graphics.setColor(1,1,1,1)
        end
    end

    if type == "fireballSmoke" then
        
        effect.rad = 1
        effect.alpha = 0.7
        effect.timer = 0.4
        effect.scaleX = 0.4
        effect.layer = -1
        effect.offY = 0
        effect.rot = math.random() * math.pi*2

        local sprNum = math.random(1, 4)
        effect.sprite = sprites.effects.blobs["blob" .. sprNum]

        if args.scale then effect.scaleX = args.scale end

        local vec = vector(0,1)
        local finalX = effect.x + vec.x*6*math.random()
        local finalY = effect.y + vec.y*6*math.random()

        flux.to(effect, 0.35, {x = finalX}):ease("quadout")
        flux.to(effect, 0.35, {y = finalY}):ease("quadout")

        function effect:update(dt)
            --self.scaleX = self.scaleX + (dt)
            self.offY = self.offY - dt*8
            self.alpha = self.timer / 0.75 * 0.7
        end

        function effect:draw()
            love.graphics.setColor(1, 1, 1, self.alpha)
            love.graphics.draw(self.sprite, self.x, self.y + self.offY, self.rot, self.scaleX, nil, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
            love.graphics.setColor(1,1,1,1)
        end
    end

    if type == "flameSmoke" then
        
        effect.rad = 1
        effect.alpha = 0.2
        effect.timer = 0.8
        effect.scaleX = 1
        --effect.layer = -1
        effect.offY = 0
        effect.rot = math.random() * math.pi*2

        local sprNum = math.random(1, 4)
        effect.sprite = sprites.effects.blobs["blob" .. sprNum]

        if args.scale then effect.scaleX = args.scale end
        if args.layer then effect.layer = args.layer end

        local mag = 9
        if args.mag then mag = args.mag end

        local vec = vector(0,1)
        if args.vec then vec = args.vec end
        local finalX = effect.x + vec.x*mag*math.random()
        local finalY = effect.y + vec.y*mag*math.random()

        flux.to(effect, 0.7, {x = finalX}):ease("quadout")
        flux.to(effect, 0.7, {y = finalY}):ease("quadout")

        function effect:update(dt)
            --self.scaleX = self.scaleX + (dt)
            self.offY = self.offY - dt*8
            self.alpha = self.timer / 0.8 * 0.2
        end

        function effect:draw()
            --love.graphics.setColor(163/255, 163/255, 163/255, self.alpha)
            love.graphics.setColor(1,1,1, self.alpha)
            love.graphics.draw(self.sprite, self.x, self.y + self.offY, self.rot, self.scaleX, nil, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
            love.graphics.setColor(1,1,1,1)
        end
    end

    if type == "enemyEmber" then
        
        effect.rad = 1
        effect.alpha = 1
        effect.timer = 0.15
        effect.scaleX = 0.3
        effect.layer = 1
        effect.offY = 0
        effect.rot = math.random() * math.pi*2
        effect.color = args.color

        local sprNum = math.random(1, 4)
        effect.sprite = sprites.effects.blobs["blob" .. sprNum]

        if args.scale then effect.scaleX = args.scale end

        local vec = vector(0,-1)
        local finalX = effect.x + vec.x*8*math.random()
        local finalY = effect.y + vec.y*8*math.random()

        flux.to(effect, 0.35, {x = finalX}):ease("quadout")
        flux.to(effect, 0.35, {y = finalY}):ease("quadout")

        function effect:update(dt)
            self.scaleX = self.scaleX - (dt/3)
            self.offY = self.offY - dt*8
            self.alpha = self.timer / 0.15 * 0.9
        end

        function effect:draw()
            local gVal = 207 - (((self.timer / 0.15) * 75 - 75)*-1)
            love.graphics.setColor(255/255, gVal/255, 125/255, self.alpha)
            love.graphics.draw(self.sprite, self.x, self.y + self.offY, self.rot, self.scaleX, nil, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
            love.graphics.setColor(1,1,1,1)
        end
    end

    if type == "darkMagicSpec" then
        effect.scaleX = 0.75
        effect.x = effect.x + math.random(-1,1)
        effect.y = effect.y + math.random(-1,1)

        function effect:update(dt)
            self.scaleX = self.scaleX - (dt*2)

            if self.scaleX <= 0 then
                self.dead = true
            end
        end
        
        function effect:draw()
            
        end
    end

    -- NOT the number damage, this is the effect
    if type == "damage" or type == "damage2" then
        effect.rad = 1
        effect.alpha = 1
        effect.timer = 0.75
        effect.sprite = sprites.effects.death
        effect.scaleX = 0.8
        if args and args.color then effect.color = args.color end
        
        -- Define the path that the smoke rises
        local vec = args.dir:normalized()
        local pos = math.random()
        if pos > 0.5 then pos = 1 else pos = -1 end
        local mag = math.random()/2.5

        local distance = 30 + math.random() * 12
        if type == "damage2" then distance = 45 + math.random() * 18 end
        effect.vec = vec:rotateInplace(mag * pos)*distance
        local newX = effect.x + effect.vec.x
        local newY = effect.y + effect.vec.y
        local time = 0.25 + math.random()*0.2
        flux.to(effect, time, {x = newX}):ease("expoout")
        flux.to(effect, time, {y = newY}):ease("expoout")
        --flux.to(effect, time, {alpha = 0}):ease("quadin")
        flux.to(effect, time, {scaleX = 0}):ease("quadin")

        function effect:update(dt)
            --self.scaleX = self.scaleX + (dt)
            --self.alpha = self.timer / 0.75
        end

        function effect:draw()
            love.graphics.setColor(1, 1, 1, self.alpha)
            if self.color then
                if self.color == "green" then love.graphics.setColor(204/255, 246/255, 166/255, self.alpha) end
            end
            love.graphics.draw(self.sprite, self.x, self.y, nil, self.scaleX, nil, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
            love.graphics.setColor(1,1,1,1)
        end
    end

    table.insert(effects, effect)

end

function effects:update(dt)
    for _,e in ipairs(effects) do
        if e.anim then
            e.anim:update(dt)
        end
        if e.timer then
            e.timer = e.timer - dt
            if e.timer < 0 then
                e.dead = true
                if e.type == "eyeDeath" then
                    spawnEnemyLoot(e.x, e.y)
                end
            end
        end
        if e.update then
            e:update(dt)
        end
    end

    local i = #effects
    while i > 0 do
        if effects[i].dead then
            if effects[i].tween then effects[i].tween:stop() end
            table.remove(effects, i)
        end
        i = i - 1
    end
end

function effects:draw(layer)
    for _,e in ipairs(effects) do
        setWhite()
        if e.layer == layer then
            shaders:color(e)

            if e.draw then
                e:draw()
            elseif e.anim then
                if e.alpha then love.graphics.setColor(1,1,1,e.alpha) else setWhite() end
                e.anim:draw(e.spriteSheet, e.x, e.y + e.ySprOff, e.rot, e.scaleX, e.scaleY, e.width/2, e.height/2)
            end

            love.graphics.setShader()
        end
    end
end

function effects:deleteType(effectType)
    for _,e in ipairs(effects) do
        if e.type == effectType then
            e.dead = true
        end
    end

    local i = #effects
    while i > 0 do
        if effects[i].dead then
            table.remove(effects, i)
        end
        i = i - 1
    end
end

function effects:drawDarkMagic()
    -- Dark magic draws a white circle first, and then draws dark circles overtop
    setWhite()
    local circleSpr = sprites.effects.darkMagicW
    for i=1,2 do
        if i == 2 then circleSpr = sprites.effects.darkMagicB end
        for _,e in ipairs(effects) do
            if e.type == "darkMagicSpec" then
                love.graphics.draw(circleSpr, e.x, e.y, nil, e.scaleX, nil, circleSpr:getWidth()/2, circleSpr:getHeight()/2)
            end
        end

        for _,p in ipairs(projectiles) do
            if p.type == "mage" then
                love.graphics.draw(circleSpr, p:getX(), p:getY(), nil, 1, nil, circleSpr:getWidth()/2, circleSpr:getHeight()/2)
            end
        end
    end
end

function effects:trigger(uid)
    for _,e in ipairs(effects) do
        if e.uniqueId == uid and e.trigger then
            e:trigger()
        end
    end
end
