enemies = {}
enemies.starGrid = anim8.newGrid(32, 32, sprites.effects.stunStars:getWidth(), sprites.effects.stunStars:getHeight())
enemies.starAnim = anim8.newAnimation(enemies.starGrid('1-10', 1), 0.1)

function spawnEnemy(x, y, type, args)

    if args and args.waiting and gameMap.waiting then
        -- this enemy is meant to be spawned later using 'spawnWaiting()'
        return
    end

    if args and args.permId and data.enemies[args.permId] then
        -- this enemy has a permId and has already been defeated. Do not spawn.
        return
    end

    if type == "random" then
        spawnEnemyGroup(x, y, true)
        return nil
    end

    if type == "randomGroup" then
        spawnEnemyGroup(x, y)
        return nil
    end

    local enemy = {}

    enemy.type = type
    enemy.uniqueId = "enemy" .. math.random()
    enemy.dead = false
    enemy.stamp = "enemy"
    enemy.health = 10
    enemy.flashTimer = 0
    enemy.stunTimer = 0
    enemy.dizzyTimer = 0
    enemy.dizzyCounter = 0
    enemy.frostTimer = 0
    enemy.animTimer = 0
    enemy.moving = 1
    enemy.chase = true
    enemy.tackle = false
    enemy.tackleDist = 42
    enemy.debugRad = 70
    enemy.burningTimer = 0
    enemy.burningCounter = 0 -- how many remaining burn procs
    enemy.emberTimer = 0
    enemy.cooldownTimer = 0
    enemy.baseDamping = 2
    enemy.danger = 1 -- how much damage on contact
    enemy.barY = 10 -- healthbar height
    enemy.barHeight = 2
    enemy.barWidth = 12
    enemy.hasBeenStunned = false
    enemy.drawShadow = true
    enemy.shadowSpr = sprites.enemies.shadow
    enemy.shadowY = 8
    enemy.shadowScale = 1
    enemy.shadowOffX = 0
    enemy.alertY = 8
    enemy.rotateMargin = 0.25
    enemy.standardAnim = false
    enemy.hovers = false
    enemy.wander = true
    enemy.sliceback = -40
    enemy.hitlist = {} -- contains id's for hitboxes that have hit this enemy
    enemy.lookVal = 18 -- distance for looking for the player
    enemy.useScaleForSearch = true
    enemy.smOffset = 0
    enemy.hasHealthBar = true
    enemy.showShadow = true
    enemy.lightFactor = 1
    enemy.fireMult = 1 -- fire weakness, ex 2 would be 2x fire damage

    enemy.hookable = true
    enemy.hookVec = nil
    enemy.hooked = false

    enemy.comboBreakCounter = 0
    enemy.comboBreakTimer = 0
    enemy.comboBreakMax = 3

    enemy.burnSheet = sprites.effects.fireStatus
    enemy.burnGrid = anim8.newGrid(32, 32, enemy.burnSheet:getWidth(), enemy.burnSheet:getHeight())
    enemy.burnAnim = anim8.newAnimation(enemy.burnGrid('1-6', 1), 0.08)

    enemy.electricSheet = sprites.effects.smallCharge
    enemy.electricGrid = anim8.newGrid(16, 16, enemy.electricSheet:getWidth(), enemy.electricSheet:getHeight())
    enemy.electricAnim = anim8.newAnimation(enemy.electricGrid('1-9', 1), 0.1, function() enemy.electricRot = math.random() * math.pi * 2 end)
    enemy.electricRot = 0

    -- Enemy states:
    -- -1: completely immobile
    -- 0: idle, standing
    -- 1: wander, stopped
    -- 1.1: wander, moving
    -- 99: alert
    -- 100: attacking
    -- 110: winding up
    -- 111: pouncing
    enemy.state = 1

    enemy.startX = x
    enemy.startY = y
    enemy.wanderRadius = 30
    enemy.wanderSpeed = 15
    enemy.wanderTimer = 0.5 + math.random()*2
    enemy.wanderBufferTimer = 0
    enemy.wanderDir = vector(1,1)
    enemy.dir = vector(1,1)
    enemy.colorImmune = true

    if args and args.aggro then
        enemy.state = 100
    end

    if args and args.permId then
        enemy.permId = args.permId
    end

    -- when the enemy dies, gameMap.helper will re-decrease by 1
    if args and args.helper then
        gameMap.helper = gameMap.helper + 1
        enemy.helper = true
    end

    function enemy:floatDown(dest)
        self.tween = flux.to(self, self.floatTime, {floatY = dest}):ease("sineinout"):oncomplete(function() self:floatUp(self.floatMax) end)
    end

    function enemy:floatUp(dest, start)
        local time = self.floatTime
        if start then time = math.random() end
        self.tween = flux.to(self, time, {floatY = dest}):ease("sineinout"):oncomplete(function() self:floatDown(self.floatMax*-1) end)
    end

    function enemy:giveLightSource(rad)
        self.lit = true
        self.killLight = false
        spawnLightSource(self.physics:getX(), self.physics:getY(), rad * self.lightFactor, self.uniqueId)
    end

    -- Function that sets the properties of the new enemy
    local init
    if type == "eye" then
        init = require("src/enemies/eye")
    elseif type == "bat" then
        init = require("src/enemies/bat")
    elseif type == "skeleton" then
        init = require("src/enemies/skeleton")
    elseif type == "slime" then
        init = require("src/enemies/slime")
    elseif type == "golem" then
        init = require("src/enemies/golem")
    elseif type == "sentry" then
        init = require("src/enemies/sentry")
    elseif type == "cloudSpirit" then
        init = require("src/enemies/cloudSpirit")
    elseif type == "jelly" then
        init = require("src/enemies/jelly")
    elseif type == "dummy" then
        init = require("src/enemies/dummy")
    elseif type == "eyeris" then
        init = require("src/enemies/bosses/eyeris2")
    elseif type == "eyerisOld" then
        init = require("src/enemies/bosses/eyeris")
    elseif type == "electra" then
        init = require("src/enemies/bosses/electra")
    else
        return
    end

    enemy = init(enemy, x, y, args)
    enemy.maxHealth = enemy.health

    if type == "cloudSpirit" and enemy.state == 100 then
        enemy.projTimer = 2+math.random()*2
    end

    function enemy:lookForPlayer()
        if player.state >= 14 and player.state < 15 then
            return
        end

        if self.physics == nil then return false end
        local ex = self.physics:getX()
        local ey = self.physics:getY()

        -- the 'listening' threshold
        if distanceBetween(ex, ey, player:getX(), player:getY()) < 30 then
            --return true
            -- This is dumb. They need to see the player, not hear them
        end

        -- Only look at player if they are in the direction enemy is facing
        if self.state >= 1 and self.state < 2 and self.useScaleForSearch then
            if self.scaleX == 1 and ex > player:getX() then return false end
            if self.scaleX == -1 and ex < player:getX() then return false end
        end

        local toPlayerVec = getPlayerToSelfVector(ex, ey):rotateInplace(math.pi)

        debug.lineX1 = ex
        debug.lineY1 = ey

        -- line of queries going towards the player
        for i=1,self.lookVal do
            local qRad = 3
            local qx = ex + toPlayerVec.x * i * qRad
            local qy = ey + toPlayerVec.y * i * qRad

            debug.lineX2 = qx
            debug.lineY2 = qy

            local hitPlayer = world:queryCircleArea(qx, qy, qRad, {'Player'})
            if #hitPlayer > 0 then
                return true
            end

            local obstacles = world:queryCircleArea(qx, qy, qRad, {'Wall'})
            if #obstacles > 0 then
                return false
            end
        end

        return false
    end

    -- Used to make enemies move within a circular area
    function enemy:wanderUpdate(dt)
        if self.state < 1 or self.state >= 2 or (self.dizzyTimer > 0 and self.hasBeenStunned == false) then return end
        if self.wanderTimer > 0 then self.wanderTimer = self.wanderTimer - dt end
        if self.wanderBufferTimer > 0 then self.wanderBufferTimer = self.wanderBufferTimer - dt end
        if self.wanderTimer < 0 then
            self.state = 1.1
            self.wanderTimer = 0

            local ex = self.physics:getX()
            local ey = self.physics:getY()

            if ex < self.startX and ey < self.startY then
                self.wanderDir = vector(0, 1)
            elseif ex > self.startX and ey < self.startY then
                self.wanderDir = vector(-1, 0)
            elseif ex < self.startX and ey > self.startY then
                self.wanderDir = vector(1, 0)
            else
                self.wanderDir = vector(0, -1)
            end

            self.wanderBufferTimer = 0.2
            self.wanderDir:rotateInplace(math.pi/-2 * math.random())
            self.dir = self.wanderDir
        end

        if self.state == 1.1 and self.physics then
            self.physics:setX(self.physics:getX() + self.wanderDir.x * self.wanderSpeed * dt)
            self.physics:setY(self.physics:getY() + self.wanderDir.y * self.wanderSpeed * dt)

            if distanceBetween(self.physics:getX(), self.physics:getY(), self.startX, self.startY) > self.wanderRadius and self.wanderBufferTimer <= 0 then
                self.state = 1
                self.wanderTimer = 1 + math.random(0.1, 0.8)
            end
        end
        --self:lookForPlayer()
    end

    function enemy:setScaleX()
        local px, py = player:getPosition()
        local ex, ey = self.physics:getPosition()

        if self.state >= 99 then
            if px < ex then
                self.scaleX = -1
            else
                self.scaleX = 1
            end
        elseif self.state >= 1 and self.state < 2 then
            if self.wanderDir.x < 0 then
                self.scaleX = -1
            else
                self.scaleX = 1
            end
        end
    end

    function enemy:moveLogic(dt, stiff)
        if self.stunTimer == 0 and (self.dizzyTimer == 0 or self.hasBeenStunned) then
            self.anim:update(dt)
            local px, py = player:getPosition()
            local ex, ey = self.physics:getPosition()

            if self.state < 99 then
                if self:lookForPlayer() then
                    self.state = 99 -- alerted state
                    self.animTimer = 0.3
                    effects:spawn("exclamation", self.physics:getX(), self.physics:getY() - self.alertY)
                end
            end

            if self.state == 100 then
                self.dir = vector(px - ex, py - ey):normalized() * self.magnitude

                if self.chase then
                    if stiff then -- Stiff (grounded) movement
                        self.physics:setX(self.physics:getX() + self.dir.x * dt)
                        self.physics:setY(self.physics:getY() + self.dir.y * dt)
                    else -- Floaty movement
                        if distanceBetween(0, 0, self.physics:getLinearVelocity()) < self.maxSpeed then
                            self.physics:applyForce(self.dir:unpack())
                        end
                    end
                    if self.tackle and distanceBetween(self.physics:getX(), self.physics:getY(), player:getX(), player:getY()) < self.tackleDist and self.cooldownTimer <= 0 then
                        self.physics:setLinearVelocity(0, 0)
                        if self.type == 'eyeris' then
                            self:eyeTackleLogic(dt)
                        else
                            self.state = 110
                        end
                        self.cooldownTimer = 0.3
                        if self.type == 'eyeris' then self.cooldownTimer = 0.5 end
                    end
                elseif self.aggro then
                    
                end
            end

            if self.aggro and self.state >= 100 then
                self.dir = vector(px - ex, py - ey):normalized() * self.magnitude
                self:aggro(dt)
            end

            if self.state == 110 then
                local tackleTime = 0.4
                local retreatIntensity = 300

                if self.boss then
                    tackleTime = 0.7
                    retreatIntensity = 200
                end

                local oppDir = self.dir:normalized():rotated(math.pi)*retreatIntensity
                self.physics:applyForce(oppDir:unpack())

                if self.cooldownTimer <= 0 then
                    self.cooldownTimer = tackleTime
                    self.state = 111
                    self.physics:setLinearVelocity(0, 0)
                    local intensity = 520
                    if self.boss then intensity = 660 end
                    local dir = self.dir:normalized()*intensity
                    self.physics:applyLinearImpulse(dir:unpack())
                    self.physics:setLinearDamping(6)
                end
            end

            if self.state == 111 then
                if self.cooldownTimer <= 0 then
                    self.physics:setLinearDamping(self.baseDamping)
                    self.state = 100
                    self.cooldownTimer = 1
                end
            end

        else
            
        end
    end

    function enemy:softHit(dmg)
        --damages:spawnDamage(self.physics:getX(), self.physics:getY(), dmg)
        if not self.invincible then self.health = self.health - dmg end
    end

    -- This update function is the same for all enemies, regardless of type
    function enemy:genericUpdate(dt)
        if self.state == -1 then
            self.physics:setLinearVelocity(0, 0)
            return
        end

        if self.stunTimer > 0 then
            self.stunTimer = self.stunTimer - dt
        end
        if self.stunTimer < 0 then
            self.stunTimer = 0
            self.physics:setLinearVelocity(0, 0)
        end

        if self.dizzyTimer > 0 then
            self.dizzyTimer = self.dizzyTimer - dt
        end
        if self.dizzyTimer < 0 then
            self.dizzyTimer = 0
            self.hasBeenStunned = true
        end

        if self.cooldownTimer > 0 then
            self.cooldownTimer = self.cooldownTimer - dt
        end

        if self.flashTimer > 0 then
            self.flashTimer = self.flashTimer - dt
            if self.flashTimer < 0 then
                self.flashTimer = 0
            end
        end

        if self.electrified then
            self.electricAnim:update(dt)
        end

        if self.physics and (self.physics:getX() < -64 or self.physics:getX() > gameMap.pixelWidth or self.physics:getY() < -64 or self.physics:getY() > gameMap.pixelHeight) then
            self.outsideMap = true
            if self.outsideMap and self.type == "sentry" then self.dead = true end
        end

        self:comboBreakLogic(dt)

        if self.health <= 0 and self.stunTimer == 0 then
            self.dead = true
            if self.permId and not data.enemies[self.permId] then
                data.enemies[self.permId] = true -- added this enemy's permId to data so it won't spawn again
            end
            if self.helper then
                gameMap.helper = gameMap.helper - 1
            end
            if self.customDeath then
                self:customDeath()
                return
            else
                local ex, ey = self.physics:getPosition()
                particleEvent("death", ex, ey)
                dj.play(sounds.enemies.die, "static", "effect")
                spawnEnemyLoot(ex, ey)
            end
        end
        
        enemy.burnAnim:update(dt)

        if self.burningTimer > 0 then
            self.burningTimer = self.burningTimer - dt
            if self.burningTimer < 0 then
                self.burningCounter = self.burningCounter - 1
                if self.burningCounter > 0 then
                    self:softHit( math.ceil(self.fireMult) ) -- fire damage
                    self.burningTimer = 1
                else
                    self:softHit( math.ceil(self.fireMult) ) -- fire damage
                    self.burningTimer = 0
                    if not self.lit then self.killLight = true end
                end
            end
        end

        if self.frostTimer > 0 then
            self.frostTimer = self.frostTimer - dt
        end
        if self.frostTimer < 0 then
            self.frostTimer = 0
        end

        if self.hovers == false then
            if inWater(self.physics:getX(), self.physics:getY(), 1) then
                self:delete()
                sink(self.physics:getX(), self.physics:getY())
            end
        else
            if inWater(self.physics:getX(), self.physics:getY(), 1) and gameMap.isSky then
                enemy.drawShadow = false
            else
                enemy.drawShadow = true
            end
        end

        if self.animTimer > 0 then
            self.animTimer = self.animTimer - dt
            if self.animTimer < 0 then
                if self.state >= 20 and self.state < 30 then self:shoot() end -- sentry
                if self.state == 99 then self.state = 100 end -- Begin attacking
                self.animTimer = 0
            end
        end

        if self.hooked and self.dizzyTimer > 0 and grapple.state == 2 then
            if distanceBetween(self.physics:getX(), self.physics:getY(), player:getX(), player:getY()) < 24 then
                self.hooked = false
                return
            end

            local dir = getSelfToPlayerVector(self.physics:getX(), self.physics:getY())
            self.physics:setLinearVelocity(0, 0)
            self.physics:setX( self.physics:getX() + (dir.x * grapple.speed * dt) )
            self.physics:setY( self.physics:getY() + (dir.y * grapple.speed * dt) )
            self.state = 100
        end

        if self.boss ~= true and self.wander == true then
            self:wanderUpdate(dt)
        end

        if self.standardAnim then
            if self.state == 0 or self.state == 1 or self.state == 99 then
                enemy:changeAnim("idle")
            elseif self.state == 1.1 then
                enemy:changeAnim("walk")
            elseif self.state == 100 then
                enemy:changeAnim("run")
            elseif self.state == 105 then
                enemy:changeAnim("attack")
            end
        end
    end

    function enemy:comboBreakLogic(dt)
        if self.comboBreak then -- if the enemy has a combo break function
            if self.comboBreakTimer > 0 then
                self.comboBreakTimer = self.comboBreakTimer - dt
            end
            if self.comboBreakTimer < 0 then
                self.comboBreakCounter = 0
                self.comboBreakTimer = 0
            end
            if self.comboBreakCounter > self.comboBreakMax then
                self.comboBreakCounter = 0
                self.comboBreakTimer = 0
                self:comboBreak()
            end
        end
    end

    function enemy:hit(damage, dir, stun, dizziness, proj, newMag, hitboxId)

        local stab = false
        if stun > 0.13 then -- I think stab is 0.16 (0.08*2)
            stab = true
            self.comboBreakCounter = 0
        end

        if hitboxId then
            -- check if self hit buffer has this id in it
            local i = #self.hitlist
            while i > 0 do
                if self.hitlist[i] == hitboxId then
                    return nil
                end
                i = i - 1
            end
            table.insert(self.hitlist, hitboxId)
        end

        if self.onHit then self:onHit() end
        
        if self.frostTimer > 0 then damage = damage * 1.25 end
        if self.dizzyTimer > 0 then damage = damage * 2 end -- DOUBLE DAMAGE FROM STUN

        if damage >= 5 then damage = 2 else damage = 1 end -- simple damage
        
        self.dizzyTimer = 0
        damage = math.ceil(damage)
        self.health = self.health - damage
        if stun == nil then stun = 0 end
        self.stunTimer = stun

        if self.invincible and self.health < 0 then self.health = self.maxHealth end
        
        local poised = false
        if proj and self.projPoise then
            poised = true
        end

        if poised == false then
            self.physics:setLinearVelocity(0,0)
        end

        if self.hitBone then
            spawnLob("bone", self.physics:getX(), self.physics:getY(), getSelfToPlayerVector(0, 0), 0)
        end

        self.cooldownTimer = 0.5

        local mag = 150
        if player.slashCount >= player.slashMax then
            mag = 320
            self.stunTimer = stun*1.5
        end

        if self.health <= 0 then
            self.stunTimer = stun*2.25
            mag = 260
            if self.die then self:die() end
        end
        if newMag then
            mag = newMag
        end

        shake:standard(1)

        if self.disintigrated then return end

        if dir and poised == false then
            self.physics:applyLinearImpulse((dir:normalized()*mag):unpack())
        end

        player.slippery = false -- fallback in case this doesn't happen somewhere else

        local dmgColor = nil
        if player.didHitEnemy == false then
            player.didHitEnemy = true
            if player.hasWeapon then
                if weapons[weapons:getIndex(player.weaponUniqueId)].dur > 0 then
                    dmgColor = "flashRed"
                end
                local shooty = weapons[weapons:getIndex(player.weaponUniqueId)].shooty
                if not shooty then
                    weapons:hurtCurrentWeapon()
                end
            end
        end

        -- no longer showing damage numbers
        --damages:spawnDamage(self.physics:getX(), self.physics:getY(), damage, {color=dmgColor})

        self.flashTimer = 0.175
        if damage == 0 then self.flashTimer = 0 end
        globalStun = 0.05

        if poised or self.boss then

        else
            self.state = 100
        end

        if dizziness and dizziness > 0 then
            if self.dizzyCounter <= 0 then
                self.dizzyTimer = dizziness
            else
                self.dizzyTimer = dizziness/(self.dizzyCounter*2)
            end
            self.dizzyCounter = self.dizzyCounter + 1
        end

        if damage > 0 then
            local total = 28
            local useDir = false
            if dir and dir:len() > 0 then useDir = true total = 14 end
            for i=1,total do
                local dmgDir = vector(1, 0):rotated(math.pi*2*math.random())
                if useDir then dmgDir = dir end
                effects:spawn("damage", self.physics:getX(), self.physics:getY(), {dir = dmgDir})
            end
        else
            
        end
        
        local range = math.random()/4
        dj.play(sounds.enemies.hurt, "static", "effect", 0.85, 0.9+range)
        --dj.play(sounds.enemies.impact2, "static", "effect", 0.35, 1.1+range)
        if damage > 1 then dj.play(sounds.enemies.impactHeavy, "static", "effect", 0.45, 0.85+range/1.5) end

        if stab and self.projTimer then
            self.projTimer = self.projTimer * 0.25 -- after a stab, enemies will shoot faster
        end

        if self.comboBreak then
            self.comboBreakCounter = self.comboBreakCounter + 1
            self.comboBreakTimer = 0.75
        end

        if self.preBoss then
            curtain:call('d_cloud_boss', 0, 0, 'skyBossFlash')
            damages:deleteAll()
            self.state = -1
            self.physics:setLinearVelocity(0, 0)
            dj.play(sounds.misc.cinematicHit, "static", "effect", 1)
        end
    end

    function enemy:burn()
        if self.physics then
            if self.burningTimer <= 0 then
                spawnLightSource(self.physics:getX(), self.physics:getY(), 5 * self.lightFactor, self.uniqueId, 2)
            end
            self.burningTimer = 1
            self.burningCounter = 5
            self.emberTimer = 0.2
            self.burnAnim:gotoFrame(1)
        end
    end

    function enemy:frost(time)
        self.frostTimer = time
    end

    function enemy:delete()
        self.dead = true
    end

    function enemy:canHurtPlayer()
        return self.dizzyTimer <= 0 and self.stunTimer <= 0 and self.health > 0 and self.danger >= 0
    end

    function enemy:debugRadius()
        if distanceBetween(player:getX(), player:getY(), self.physics:getX(), self.physics:getY()) < self.debugRad then
            d1 = "Detected"
        else
            d1 = "Not detected"
        end
    end

    function enemy:drawDebugRadius()
        love.graphics.setColor(0, 0, 1, 0.25)
        love.graphics.circle('fill', self.physics:getX(), self.physics:getY(), self.debugRad)
        love.graphics.setShader()
    end

    function enemy:changeAnim(newAnim)
        if self.anim == nil then return end

        if self.anim ~= self.animations[newAnim] then
            self.animations[newAnim]:gotoFrame(1)
            self.anim = self.animations[newAnim]
        end
    end

    function enemy:draw()
        setWhite()
        local px, py = self.physics:getPosition()

        if self.flashTimer > 0 then love.graphics.setShader(shaders.whiteout) end
        if self.frostTimer > 0 then love.graphics.setColor(116/255,242/255,255/255,1) end

        self:inheritDraw()
        love.graphics.setShader()

        --[[ no longer showing enemy healthbars
        if self.health < self.maxHealth and self.health > 0 and settings.showHealthBars and self.hasHealthBar and self.boss ~= true then
            
            love.graphics.setColor(1, 1, 1, 1)
            love.graphics.rectangle("fill", px - self.barWidth/2, py - self.barY - self.barHeight/2, self.barWidth, self.barHeight)
            love.graphics.setColor(0.3, 0.3, 0.3, 1)
            love.graphics.rectangle("fill", px - self.barWidth/2 + 0.5, py - self.barY - self.barHeight/2 + 0.5, self.barWidth-1, self.barHeight-1)
            love.graphics.setColor(1, 0, 0, 1)
            love.graphics.rectangle("fill", px - self.barWidth/2 + 0.5, py - self.barY - self.barHeight/2 + 0.5, self.barWidth * (self.health / self.maxHealth), self.barHeight-1)
            setWhite()

            --love.graphics.draw(sprites.hud.enemyBar, px - self.barWidth/2, py - self.barY - self.barHeight/2, nil, 0.5)
        
        end]]

        if self.dizzyTimer > 0 then
            setWhite()
            enemies.starAnim:draw(sprites.effects.stunStars, px, py - 8, nil, 0.8, nil, 16, 16)
        end

        if self.state == 99 then
            --love.graphics.draw(sprites.enemies.alert, px, py-self.alertY, nil, nil, nil, sprites.enemies.alert:getWidth()/2, sprites.enemies.alert:getHeight()/2)
        end

        if self.burningCounter > 0 then
            setWhite()
            self.burnAnim:draw(self.burnSheet, px, py, nil, 0.8, 0.8, 16, 16)
        end

        if self.electrified and not self.boss then
            self.electricAnim:draw(self.electricSheet, px, py, self.electricRot, 1, 1, 8, 8)
        end

    end

    function enemy:disintigrate()
        self.dead = true
        self.disintigrated = true
        --enemies:destroyDead() too dangerous??
    end

    table.insert(enemies, enemy)

end

function enemies:update(dt)

    enemies.starAnim:update(dt)

    -- Calls update functions on all enemies
    for i,e in ipairs(self) do
        e:update(dt)
        e:genericUpdate(dt)
    end
  
    -- Iterate through all enemies in reverse to remove the dead ones
    for i=#enemies,1,-1 do
        if enemies[i].dead then
            if enemies[i].physics ~= nil then
                enemies[i].physics:destroy()
            end
            table.remove(enemies, i)
        end
    end
  
end

function enemies:destroyDead()
    local i = #enemies
    while i > 0 do
        if enemies[i].dead then
            if enemies[i].physics then
                enemies[i].physics:destroy()
            end
            table.remove(enemies, i)
        end
        i = i - 1
    end
end

function enemies:destroyAll()
    local i = #enemies
    while i > 0 do
        if enemies[i].physics then
            enemies[i].physics:destroy()
        end
        table.remove(enemies, i)
        i = i - 1
    end
end

function enemies:resetAggro()
    local i = #enemies
    while i > 0 do
        enemies[i].state = 0
        i = i - 1
    end
end

function spawnEnemyLoot(x, y)
    
end

function spawnWaiting()
    if gameMap.waiting then
        gameMap.waiting = false
        if gameMap.layers["Enemies"] then
            for i, obj in ipairs(gameMap.layers["Enemies"].objects) do
                if obj.properties.waiting then
                    spawnEnemy(obj.x, obj.y, obj.name, obj.properties)
                end
            end
        end
    end
end
