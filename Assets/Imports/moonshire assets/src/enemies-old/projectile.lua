projectiles = {}

function spawnProjectile(type, x, y, args)
    local projectile = {}
    
    projectile = {}
    projectile.type = type
    projectile.speed = 100
    projectile.dir = getSelfToPlayerVector(x, y)
    projectile.timer = 3
    projectile.x = x
    projectile.y = y
    projectile.shadow = nil
    projectile.scaleX = 1
    projectile.frameW = 32
    projectile.frameH = 32
    projectile.tracking = false
    projectile.hasShadow = true
    projectile.drawShadow = true
    projectile.visible = true
    projectile.rad = 4
    projectile.power = 1
    projectile.uniqueId = "proj" .. math.random()
    projectile.singleHitbox = 0

    if projectile.type:startswith('line') then
        projectile.line = true
        projectile.lineBufferTime = 0.1
        projectile.lineTimer = 0.1 -- spawn first one immediately
        projectile.lineCounter = 0
        projectile.lineCounterMax = 8
        projectile.visible = false
    end

    if projectile.type:lower():find('chase') then projectile.tracking = true end
    if projectile.type:lower():find('shotgun') then
        if args and not args.shell then
            local newArgs = copy(args)
            newArgs.shell = true -- this id's the projectile as a duplicate of the main projectile
            newArgs.dir:rotateInplace(math.pi/4)
            spawnProjectile(type, x, y, newArgs)
            newArgs.dir:rotateInplace(-math.pi/2)
            spawnProjectile(type, x, y, newArgs)
        end
    end

    projectile.dir = vector(1, 0)
    if args then projectile.args = args end
    if args and args.dir then projectile.dir = args.dir:normalized() end
    if args and args.player then projectile.player = true end
    if args and args.onFire then projectile.onFire = args.onFire end
    if args and args.power then projectile.power = args.power end
    if args and args.timer then projectile.timer = args.timer end
    if args and args.speed then projectile.speed = args.speed end
    if args and args.rad then projectile.rad = args.rad end
    if args and args.light then
        spawnLightSource(projectile.x, projectile.y, 20, projectile.uniqueId, nil, projectile)
    end

    if type == "invisible" or projectile.visible == false then
        projectile.visible = false
        projectile.drawShadow = false
    end

    function projectile:update(dt)
        self.timer = self.timer - dt
        if self.timer < 0 then self.dead = true end

        self.x = self.x + (self.dir.x * self.speed * dt)
        self.y = self.y + (self.dir.y * self.speed * dt)

        if self.player then
            local walls = world:queryCircleArea(self.x, self.y, self.rad, {'Wall'})
            if #walls > 0 then
                self.dead = true
                if self.visible then effects:spawn("spark", self.x, self.y) end
            end

            local hitEnemies = world:queryCircleArea(self.x, self.y, self.rad, {'Enemy', 'Enemy2'})
            for _,e in ipairs(hitEnemies) do
                local xtra = 0
                local stunTime = 0.08
                if e.parent.projPoise then stunTime = 0 end
                local totalDmg = self.power
                if e.parent.fireMult and self.onFire then totalDmg = math.floor(totalDmg * e.parent.fireMult) end
                if self.onFire then e.parent:burn() end -- make sure to put Burn before Hit
                e.parent:hit(totalDmg, {dir=self.dir, stunTime=stunTime})
            end
            if #hitEnemies > 0 then self.dead = true end
        else
            local walls = {}
            local playerCheck = {}
            if self.hitbox then
                if (not self.singleHitbox or self.singleHitbox ~= 2) then
                    spawnHitbox(self.hitbox.dmg, self.hitbox.time, self.hitbox.args)
                    if self.singleHitbox then self.singleHitbox = 2 end
                end
            else
                walls = world:queryCircleArea(self.x, self.y, self.rad, {'Wall'})
                playerCheck = world:queryCircleArea(self.x, self.y, self.rad, {'Player'})
                if #walls > 0 or (#playerCheck > 0 and player.state ~= 0.5 and not self.line) then if self.visible then effects:spawn("spark", self.x, self.y) end self.dead = true end
            end
           
            if self.line then
                self.lineTimer = self.lineTimer - dt
                if self.lineTimer < 0 then
                    if self.type:lower():find("lightning") then
                        effects:spawn("lightning", self.x, self.y + 8, {enemyAttack = true})
                    end
                    self.lineTimer = self.lineBufferTime
                    self.lineCounter = self.lineCounter + 1
                    if self.lineCounter >= self.lineCounterMax then
                        self.dead = true
                    end
                end
            elseif #playerCheck > 0 and player.state ~= 0.5 then
                player:hurt(self.damage, self.x, self.y)
            end

            if self.timer > 0 then
                self.timer = self.timer - dt
            end
            if self.timer < 0 then
                self.dead = true
            end

            if self.tracking and distanceBetween(self.x, self.y, player:getX(), player:getY()) < 16 then
                self.tracking = false -- stop curving towards the player when it gets close enough
            end

            if self.tracking then
                self.dir = rotate_vector_towards_point(self.dir, self.x, self.y, player:getX(), player:getY(), math.pi/400)
            end

            if self.type:lower():find("cloudshockspiral") then
                self.dir = getVectorFromRad(self.startRot + self.rotVal)
            end
        end

        if inWater(self.x, self.y, 1) and gameMap.isSky then
            self.drawShadow = false
        elseif self.visible then
            self.drawShadow = true
        end
    end

    if type == "shock" then
        projectile.speed = 290
        projectile.damage = 10
        projectile.rad = 8
        projectile.sprite = sprites.projectiles.shock
        projectile.frameW = 32
        projectile.frameH = 32
        projectile.grid = anim8.newGrid(32, 32, projectile.sprite:getWidth(), projectile.sprite:getHeight())
        projectile.anim = anim8.newAnimation(projectile.grid('1-4', 1), 0.1)
        dj.play(sounds.enemies.laser, "static", "effect")

    end

    if type == "hyperBeam" then
        projectile.speed = 0
        projectile.damage = 10
        projectile.rad = 8
        projectile.sprite = sprites.effects2.attacks.hyperBeam
        projectile.frameW = 320
        projectile.frameH = 30
        projectile.hasShadow = false
        projectile.singleHitbox = 1 -- when it's 2, it doesn't spawn anything else
        projectile.ox = 10
        projectile.grid = anim8.newGrid(320, 30, projectile.sprite:getWidth(), projectile.sprite:getHeight())
        projectile.anim = anim8.newAnimation(projectile.grid(1, '1-7'), 0.08, function() projectile.dead = true end)
        dj.play(sounds.enemies.laser, "static", "effect")
        lightSources:fullFlash(25)

        local projOffX = 0
        if projectile.dir.x < 0 then projectile.scaleX = -1 projOffX = -300 end
        projectile.hitbox = {
            dmg = 1,
            time = 0.2,
            args = {
                shape = "rectangle",
                x = projectile.x + projOffX,
                y = projectile.y - 6,
                width = 300,
                height = 12
            }
        }
    end

    if type:lower():find("cloudshock") then
        spawnBlast(projectile.x, projectile.y, 96, nil, 0.25)
        projectile.speed = 124
        projectile.damage = 3
        projectile.rad = 4
        projectile.sprite = sprites.projectiles.shock
        projectile.frameW = 32
        projectile.frameH = 32
        projectile.grid = anim8.newGrid(32, 32, projectile.sprite:getWidth(), projectile.sprite:getHeight())
        projectile.anim = anim8.newAnimation(projectile.grid('1-4', 1), 0.1)
        projectile.scaleX = 0.6
        projectile.timer = 3
        if args and args.speed then projectile.speed = args.speed end
        if type:lower():find("cloudshockspiral") then
            projectile.timer = 6
            projectile.dir:rotateInplace(math.pi/8)
            projectile.startRot = getRotationFromVector(projectile.dir)
            projectile.rotVal = 0

            --flux.to(projectile, 1, {rotVal = math.pi}):ease("quadin")
            --flux.to(projectile, 2, {rotVal = math.pi*1.25}):ease("quadout")
            flux.to(projectile, 3, {rotVal = math.pi*1.55}):ease("circout")
        end
    end

    if type == "rock" then
        projectile.speed = 260
        projectile.damage = 3
        projectile.rad = 4
        projectile.sprite = sprites.effects.rock[1]
        if math.random() > 0.5 then projectile.sprite = sprites.effects.rock[2] end
    end

    if type == "invisible" or projectile.visible == false then
        projectile.sprite = sprites.blank
    end

    if args then
        if args.speed then projectile.speed = args.speed end
        if args.damage then projectile.damage = args.damage end
        if args.rad then projectile.rad = args.rad end
        if args.timer then projectile.timer = args.timer end
    end

    local ox = projectile.frameW/2
    local oy = projectile.frameH/2
    if projectile.ox then ox = projectile.ox end
    if projectile.oy then oy = projectile.oy end

    if projectile.anim then
        function projectile:draw()
            setWhite()
            self.anim:draw(self.sprite, self.x, self.y, nil, self.scaleX, self.scaleY, ox, oy)
        end
    else
        function projectile:draw()
            setWhite()
            love.graphics.draw(self.sprite, self.x, self.y, nil, self.scaleX, self.scaleY, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
            --love.graphics.setColor(0.7,0,0,1)
            --love.graphics.circle("line", self.x, self.y, self.rad)
        end
    end

    table.insert(projectiles, projectile)
end

function projectiles:update(dt)
    for _,p in ipairs(projectiles) do
        if p.anim then
            p.anim:update(dt)
        end
        if p.update then
            p:update(dt)
        end
    end

    local i = #projectiles
    while i > 0 do
        if projectiles[i].dead then
            table.remove(projectiles, i)
        end
        i = i - 1
    end
end

function projectiles:draw()
    for _,p in ipairs(projectiles) do
        if p.draw then
            p:draw()
        end
    end
end
