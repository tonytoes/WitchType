weapons = {}

function weapons:spawn(id, x, y, args)
    local weapon = {}
    weapon.weapon = true -- used for parent stuff
    weapon.id = id
    weapon.class = "spear" -- spear, greatsword, etc
    weapon.x = x
    weapon.y = y
    weapon.rot = 0
    weapon.centerX = x
    weapon.centerY = y
    weapon.throwDir = vector(1, 1)
    weapon.throwSpeed = 300
    weapon.uniqueId = id .. '_' .. #weapons .. '_' .. os.time()
    weapon.bounceVec = vector(1, 0)
    weapon.bounceY = 0
    weapon.scaleX = 1
    weapon.scaleY = 1
    weapon.restingRot = 0
    weapon.smOffset = 0
    weapon.castY = 0
    weapon.offX = 0
    weapon.offY = 0
    weapon.visible = true
    weapon.shortThrowMaxSpeed = 300
    weapon.shortThrowSpeed = weapon.shortThrowMaxSpeed
    weapon.doesRotate = true
    weapon.power = 1 -- base damage, normally used for throws
    weapon.elecImmune = false
    weapon.marked = false -- arrow floating above it
    weapon.markedTimer = 0.5
    weapon.markedTracker = 0
    weapon.readyToMark = false
    weapon.busted = false -- weapon is permanently broken

    weapon.hot = false
    weapon.hotTimer = 0
    weapon.steamTimer = 0
    weapon.focalLength = 12

    -- -1: intangible, held by npc
    -- 0: on the ground, motionless, 0.5 bouncing
    -- 1: held by player
    -- 2: thrown, midair, 2.5 boomerang return from long throw
    -- 3: short throw, 3.5: short throw return (boomerang)
    weapon.state = 0
    weapon.glow = false
    weapon.colorImmune = player.colorImmune

    weapon.shadowVisible = true
    weapon.shadowSpr = sprites.effects.shadows.tiny
    weapon.shadowY = 0
    weapon.throwShadowSpr = sprites.effects.shadows.longWeapon
    weapon.throwShadowX = 0
    weapon.throwShadowY = 6
    weapon.throwShadowLocked = false
    weapon.throwRad = 3
    weapon.throwHitboxOffset = 10 -- pixels towards the front of the weapon

    if args and args.locked then
        if id == "boomerang" then
            if not data.states.challenges["balloonGame"] then return end
        end
        if id == "fan" then
            if not allEnemies["daitengu"] then return end
        end
        if id == "greatsword" then
            if not data.states.misc.greatsword then return end
        end
    end

    weapon = weapons:getStats(weapon)

    if not weapon.sprite then return end
    if not weapon.width then weapon.width = weapon.sprite:getWidth() end
    if not weapon.height then weapon.height = weapon.sprite:getHeight() end
    if not weapon.ox then weapon.ox = weapon.width/2 end
    if not weapon.oy then weapon.oy = weapon.height-2 end

    -- copy over all args properties
    if args then
        for k,v in pairs(args) do
            weapon[k] = v -- even though k is the index, I believe the index should be strings, so this should apply all properties
        end
    end

    if weapon.frameSpeeds then
        local frameCount = weapon.sprite:getWidth() / weapon.width
        local frameString = '1-' .. frameCount
        if frameCount == 1 then frameString = 1 end
        weapon.grid = anim8.newGrid(weapon.width, weapon.height, weapon.sprite:getWidth(), weapon.sprite:getHeight())
        weapon.anim = anim8.newAnimation(weapon.grid(frameString, 1), weapon.frameSpeeds)
    end

    if allGems.topaz then
        if not weapon.armor then weapon.armor = 1 else weapon.armor = weapon.armor + 1 end
    end

    if weapon.armor then weapon.maxArmor = weapon.armor end
    if weapon.ammo then weapon.maxAmmo = weapon.ammo end
    if weapon.charges then weapon.maxCharges = weapon.charges end
    if weapon.default then
        player.defaultWeaponUniqueId = weapon.uniqueId
        weapon.armor = 0
        weapon.maxArmor = 0
    end

    if weapon.electrified then
        weapon.electricSheet = sprites.effects.smallCharge
        weapon.electricGrid = anim8.newGrid(16, 16, weapon.electricSheet:getWidth(), weapon.electricSheet:getHeight())
        weapon.electricAnim = anim8.newAnimation(weapon.electricGrid('1-9', 1), 0.09 + math.random()*0.011, function() weapon.electricRot = math.random() * math.pi * 2 end)
        weapon.electricRot = 0
        if not weapon.electricScale then weapon.electricScale = 0.75 end
        if not weapon.electricOffY then weapon.electricOffY = -13 end
    end

    if weapon.onFire then
        weapon.fireSheet = sprites.weapons.effects.fire
        weapon.fireGrid = anim8.newGrid(32, 32, weapon.fireSheet:getWidth(), weapon.fireSheet:getHeight())
        weapon.fireAnim = anim8.newAnimation(weapon.fireGrid('1-6', 1), 0.09 + math.random()*0.011)
        weapon.fireRot = 0
        weapon.fireVec = vector(1, 0)
        if not weapon.fireScale then weapon.fireScale = 1 end
        if not weapon.fireDist then weapon.fireDist = 0 end
    end

    if weapon.lightRad then
        function weapon:light()
            if self.maxAmmo and self.ammo <= 0 then return end
            local clr = self.lightColor
            spawnLightSource(self.x, self.y, self.lightRad, 'weapon_' .. self.uniqueId, nil, nil, {color=clr})
        end
        function weapon:removeLight()
            lightSources:deleteById('weapon_' .. self.uniqueId)
        end
        function weapon:setLightRad(rad)
            lightSources:adjustRadId('weapon_' .. self.uniqueId, rad)
        end
        function weapon:recalcLight()
            if self.lightRad and self.maxCharges then
                local newRad = (self.lightRad * (self.charges/self.maxCharges*0.5)) + 0.5*self.lightRad
                self:setLightRad(newRad)
            end
        end
        weapon:light()
    end

    if weapon.equipped then -- Weapon is equipped to the player right when it's spawned
        player.hasWeapon = true
        player.weaponId = weapon.id
        player.weaponUniqueId = weapon.uniqueId
        player.weaponClass = weapon.class
        weapon.state = 1
    end

    if weapon.npc then
        weapon.state = -1
        -- copy over all npcStats properties
        if weapon.npcStats then
            for k,v in pairs(weapon.npcStats) do
                weapon[k] = v -- even though k is the index, I believe the index should be strings, so this should apply all properties
            end
        end
    end

    if id == "boomerang" then
        function weapon:shortThrow()
            if self.state >= 2 then return end -- already throwing
            self.state = 3

            local spawnDist = 3
            local spawnX = player.x + player.attackDir.x * spawnDist
            local spawnY = player.y + player.attackDir.y * spawnDist
            local maxSp = self.shortThrowMaxSpeed
            local twTime = 0.65
            if player.attack.throwMult then
                maxSp = maxSp * player.attack.throwMult
                twTime = twTime * player.attack.throwMult
            end
            self.shortThrowSpeed = maxSp
            self.throwDir = player.attackDir
            flux.to(self, twTime, {shortThrowSpeed = 0}):ease("sineout")
            player.reloadTimer = 0.15
            -- old spawnHitbox(1, 10, {x=self.x, y=self.y, rad=5, weapon=true, player=true})
            dj.play(sounds.items.boomerang, "static", "effect")

            -- create hitbox
            self.hitboxId = math.random()
            local dim = {shape = "circle", x = self.x, y = self.y, rad = 5}
            spawnHitbox(dim, {id=self.hitboxId, deadOnHit=false, parentType="weapon", parentVal=self, sparePlayer=true, timer=2, damage=self.power, elecImmune=self.elecImmune, stunTime=self.stunTime})
        end

        function weapon:customUpdate(dt)
            self.centerX = self.x
            self.centerY = self.y

            self.ox = self.width/2
            self.oy = self.height/2
            if self.state < 2 then
                local tempWep = weapons:getStats({id="boomerang"})
                self.ox = tempWep.ox
                self.oy = tempWep.oy
            end

            if self.state >= 3 then
                local dir = self.throwDir
                local spd = self.throwSpeed
                if self.state == 3 or self.state == 3.5 then spd = self.shortThrowSpeed end
                if self.state == 3.5 then dir = getSelfToPlayerVector(self.x, self.y) end

                self.x = self.x + (dir.x * spd * dt)
                self.y = self.y + (dir.y * spd * dt)
            end

            if self.state == 3 and self.shortThrowSpeed < 15 then
                self:turnAround()
            end

            if distanceBetween(self.x, self.y, player.x, player.y) <= 8 then
                if self.state == 3.5 then
                    -- catch the boomerang
                    self.state = 1
                    if player.state < 2 then
                        player:resetAnimation()
                    end
                elseif self.state == 2.5 and player.hasWeapon == false then
                    -- re-pickup this weapon
                    self.state = 0
                    self:interact()
                elseif self.state == 2.5 then self.state = 2.6 end -- flies off into the sunset
            end
        end

        function weapon:turnAround()
            -- reverse direction
            print("turning...")
            if self.state == 2 then
                self.state = 2.5 -- throw returning to player
                -- create hitbox
                local dim = {shape = "circle", x = self.x, y = self.y, rad = 5}
                spawnHitbox(dim, {id=self.hitboxId, parentType="weapon", deadOnHit=false, parentVal=self, sparePlayer=true, timer=5, damage=self.power})
            else
                -- changing the hitbox ID so boomerang can hit enemies again on the way back
                local searching = true
                for i,h in ipairs(hitboxes) do
                    if searching and self.hitboxId and h.id == self.hitboxId then
                        print('found my hitbox!')
                        self.hitboxId = math.random()
                        h:newId(self.hitboxId)
                        searching = false
                    end
                end

                local maxSp = self.shortThrowMaxSpeed
                self.state = 3.5
                flux.to(self, 0.5, {shortThrowSpeed = maxSp}):ease("sinein")
            end
        end
    end

    function weapon:throw()
        player.hasWeapon = false
        player.weaponId = nil
        player.weaponUniqueId = nil
        player.weaponClass = nil -- I think this is unused
        dj.play(sounds.player.throw, "static", "effect", 1, 0.95 + math.random()*0.1)

        local startDist = 8
        if self.startDist then startDist = self.startDist end
        self.x = player.x + player.attackDir.x * startDist
        self.y = player.y + player.attackDir.y * startDist
        self:launch()
    end

    -- split up so that weapons can be launched when hit with the sword
    function weapon:launch(dir)
        if dir then self.throwDir = dir
        else self.throwDir = player.attackDir end
        self.state = 2

        local dim = {shape = "circle", x = self.x, y = self.y, rad = self.throwRad}
        local onDeadHit = true
        if self.turnAround then onDeadHit = false end
        self.hitboxId = math.random()

        local strTime = nil
        -- maybe certain items can grant strike time (aka Lightning strikes them). This was used for the throw lightning spell
        --if allItems["lightning"] then strTime = 0.2 end
        spawnHitbox(dim, {id=self.hitboxId, strikeTime = strTime, parentType="weapon", deadOnHit=onDeadHit, parentVal=self, sparePlayer=true, timer=2, damage=self.power*2})
    end

    function weapon:interact()
        if self.state == 0 and player.hasWeapon == false then -- player picks up the weapon
            player.hasWeapon = true
            player.weaponId = self.id
            player.weaponUniqueId = self.uniqueId
            player.weaponClass = self.class
            self.state = 1
            dj.play(sounds.player.equip, "static", "effect", 0.85, 0.9 + math.random()*0.2)

            -- check if this is the first time picking up a weapon
            if not allWeapons[self.id] then
                table.insert(data.items.weapons, {
                    id = self.id,
                    totalDamage = 0,
                    destroyed = 0
                })
                setInventory()
            end
        end
    end

    function weapon:drop(dir)
        if self.state >= 3 and self.state < 4 then return end -- can't drop during short throw
        player.hasWeapon = false
        player.weaponId = nil
        player.weaponUniqueId = nil
        player.weaponClass = nil
        self.x = player.x
        self.y = player.y
        if curtain.state < 1 then dj.play(sounds.player.unequip, "static", "effect", 0.85, 0.9 + math.random()*0.2) end
        self:bounce(dir)
    end

    function weapon:bounce(vec)
        if self.state == 0.5 then return end
        local totalTime = 0.26
        local height = -8
        self.state = 0.5 self.bounceY = 0 self.bounceVec = vec
        if self.bounceVec then totalTime = 0.42 height = -12 end

        flux.to(self, totalTime/2, {bounceY = height}):ease("quadout"):oncomplete(function()
            flux.to(self, totalTime/2, {bounceY = 0}):ease("quadin"):oncomplete(function()
                self.state = 0

                dj.play(sounds.player.dieLand, "static", "effect", 0.15)

                local dirVec = vector(1, 0)
                local dx = self.x-1
                local dy = self.y
                effects:spawn("walkDust", dx, dy, {dir = dirVec, scale = 0.5})
                effects:spawn("walkDust", dx, dy, {dir = dirVec:rotated(math.pi/-8), scale = 0.5})
                dx = self.x+1
                dirVec = vector(-1, 0)
                effects:spawn("walkDust", dx, dy, {dir = dirVec, scale = 0.5})
                effects:spawn("walkDust", dx, dy, {dir = dirVec:rotated(math.pi/8), scale = 0.5})
            end)
        end)
    end

    if args and args.bounceVec then
        weapon:bounce(args.bounceVec)
    end

    function weapon:salvageSpawn()
        -- double-using this for
        -- update weapon destroy tracking
        for i,w in ipairs(data.items.weapons) do
            if w.id == self.id then
                data.items.weapons[i].destroyed = data.items.weapons[i].destroyed + 1
            end
        end

        if jewelry:checkAbility("salvage") then
            -- No longer used
        end
    end

    function weapon:crumble()
        if self.state >= 3 and self.state < 4 then return end -- no crumbling for short throw
        if not self.dead then
            if self.effectOnDeath then
                effects2:spawn(self.effectOnDeath, self.x, self.y)
            else
                particleEvent("weaponBreak", self.x, self.y, {upwards=nil})
            end
            dj.play(sounds.weapons.breakFull, "static", "effect", 1, 0.95 + math.random()*0.1)
            self.dead = true
            self:salvageSpawn()
        end
    end

    function weapon:armorHit()
        if self.armor and self.armor > 0 then
            self.armor = self.armor - 1
            particleEvent("weaponBreak", self.x, self.y, {upwards=nil})
            dj.play(sounds.weapons.breakEmpty, "static", "effect", 1, 0.95 + math.random()*0.1)
        end
    end

    -- call as you attack; if there's ammo, the attack will happen
    function weapon:checkAndUseAmmo()
        if self.maxAmmo then
            if self.ammo > 0 then
                self.ammo = self.ammo - 1
                if self.ammo <= 0 then weapon:removeLight() end
                return true
            else
                return false -- out of ammo
            end
        else
            return true -- doesn't use ammo
        end
    end

    -- call as you attack; if there's charges, the attack will happen
    -- NO LONGER USED!!
    function weapon:checkAndUseCharges()
        if self.maxCharges then
            if self.attackListChargeMap then
                local attNum = self.charges
                print('last charge: ' .. attNum)
                if attNum > 0 then -- with 0, it defaults to the chargeless attack
                    player.attack = self.attackList[attNum]
                end
            end

            if self.charges >= 1 then
                local cost = 1
                if player.attack and player.attack.chargeCost then cost = player.attack.chargeCost end
                self.chargeTimer = self.chargeRate
                self.charges = self.charges - cost
                if self.charges < 0 then self.charges = 0 end
                return true
            else
                return false -- out of charges
            end
        else
            return true -- doesn't use charges
        end
    end

    function weapon:setChargeTimer()
        if self.maxCharges then
            if self.charges < self.maxCharges then
                self.chargeTimer = self.chargeRate
            else
                self.charges = self.maxCharges
                self.chargeTimer = 0
            end
            weapon:updateChargeSprite()
            self:recalcLight()
        end
    end

    function weapon:removeCharges(chrg)
        if self.maxCharges then
            self.charges = self.charges - chrg
            if self.charges < 0 then self.charges = 0 end
            weapon:updateChargeSprite()
            self:recalcLight()
        end
    end

    function weapon:updateChargeSprite()
        local chrg = math.floor(self.charges)
        if sprites.weapons[self.id .. chrg] then
            self.sprite = sprites.weapons[self.id .. chrg]
        end
    end
    if weapon.maxCharges then weapon:updateChargeSprite() end

    function weapon:update(dt)

        if self.default then -- meaning, default weapon (sword)
            if player.hasWeapon or (player.state < 50) then
                -- only show it if the player is attacking
                self.x = -1000
                self.y = -1000
            else
                self.x = player.x
                self.y = player.y
            end
        end

        if self.anim then self.anim:update(dt) end
        if self.electrified then self.electricAnim:update(dt) end

        if self.customUpdate then self:customUpdate(dt) end
        if self.hot then
            self.hotTimer = self.hotTimer - dt
            self.steamTimer = self.steamTimer - dt
            if self.hotTimer < 0 then
                self.hot = false
                self.hotTimer = 0
            end
            if self.steamTimer < 0 then
                local offVec = vector(self.focalLength, 0):rotated(self.rot)
                local randVec = vector(math.random(-2, 2), math.random(-2, 2))
                self.steamTimer = 0.1
                effects:spawn("steamBlobs", self.x + offVec.x + randVec.x + self.offX, self.y + offVec.y + randVec.y + self.offY + self.castY)
            end
        end

        if self.chargeTimer then
            self.chargeTimer = self.chargeTimer - dt
            if self.chargeTimer < 0 then
                --self.chargeTimer = 0
                self.charges = self.charges + 1
                weapon:setChargeTimer()
            end
        end

        if self.state < 1 then -- resting on the ground
            self.rot = self.restingRot
        end

        if self.state == -1 then -- intangible or held by an NPC
            if self.npc then
                self.x = self.npc.x + self.offX
                self.y = self.npc.y + self.offY
                self.rot = self.restingRot
            end
        end

        if self.state == 0 then
            local isInWater = inWater(self.x, self.y, 2)
            if isInWater then
                self.dead = true
                effects:spawn("itemFall", self.x, self.y)
            end
        end

        if self.state == 0.5 then
            if self.bounceVec then
                self.x = self.x + self.bounceVec.x * dt
                self.y = self.y + self.bounceVec.y * dt
            end
        end

        if self.state == 2.5 then self.throwDir = getSelfToPlayerVector(self.x, self.y) end

        if self.state >= 2 and self.state < 3 then
            self.x = self.x + (self.throwDir.x * self.throwSpeed * dt)
            self.y = self.y + (self.throwDir.y * self.throwSpeed * dt)

            if self.doesRotate and not self.spinningThrow then
                self.rot = getRadFromVector(self.throwDir)
            end

            -- assumes 'long' form
            --weapon.centerX = self.x + self.throwDir:normalized().x * self.width/-3
            --weapon.centerY = self.y + self.throwDir:normalized().y * self.width/-3

        end

        if self.state >= 2 and self.spinningThrow then
            local spd = 30 if self.spinningSpeed then spd = self.spinningSpeed end
            self.rot = self.rot + spd*dt
        end

        self:offset() -- also determines visibility

        if self.onFire then
            self.fireAnim:update(dt)
            self.fireVec = vector(1, 0):rotated(self.rot) * self.fireDist

            if self.maxCharges then
                if self.charges < self.maxCharges then
                    self.fireSheet = sprites.weapons.effects.fireTiny
                else
                    self.fireSheet = sprites.weapons.effects.fire
                end
            end
        end

        if self.marked and self.state == 0 then
            self.markedTimer = self.markedTimer - dt
        end
        if self.markedTimer < 0 then
            self.markedTimer = 0.5
            self.markedTracker = self.markedTracker + 1
        end

        if self.state > 0 then self.marked = false end

    end

    function weapon:setVisibility()
        self.visible = true
        if self.state == 1 then
            local str = player:getStrState()
            if str == "walk" or str == "stop" or str == "idle" or str == "attack" or str == "pickup" or str == "charge" or str == "cast" then
                -- visible
            else
                self.visible = false
            end

            if player.state == 14 or player.state == 14.5 then self.visible = false end
        end
    end

    function weapon:offset() -- also handles visiblity
        self.offX = 0
        self.offY = 0
        self:setVisibility()

        if self.state < 1 then
            self.rot = self.restingRot
        end

        if self.state == -1 then
            if self.npc then
                self.scaleY = self.npc.scaleX
                if self.heldOffX then self.offX = self.heldOffX * self.scaleY end
                if self.heldOffY then self.offY = self.heldOffY end
                self.rot = self.restingRot
                if self.scaleY < 0 then self.rot = math.pi - self.restingRot end
            end
        end

        if self.state == 1 or (self.default and not player.hasWeapon) then
            local rotVec = vector(1, 0)

            local str = player:getStrState()

            if player.state >= 50 then -- player is attacking
                if not player.attack then return end
                local att = player.attack.attackType

                if att == "stab" then
                    -- ox and oy should be where the player's hand is on the weapon
                    self.scaleY = 1
                    if player.attackDir.x < 0 then self.scaleY = -1 end
                    rotVec = player.attackDir
                    local offVec = player.attackDir

                    local destDist = player.attack.stabDist
                    if not destDist then destDist = 5 end

                    if player.anim.position == 1 then
                        offVec = player.attackDir * (destDist - 7)
                    elseif player.anim.position == 2 then
                        offVec = player.attackDir * destDist
                    elseif player.anim.position == 3 then
                        offVec = player.attackDir * (destDist - 1)
                    end

                    self.offX = offVec.x
                    self.offY = offVec.y

                    if player.lastMoveDir.y < player.lookUpThreshold then
                        if self.upOffX then
                            self.offX = self.offX + self.upOffX
                        end
                    end

                    if player.attackDir.y < player.lookUpThreshold and self.upOffX then
                        rotVec = rotVec:rotated(math.pi/22)
                    else
                        rotVec = rotVec:rotated(math.pi/200*player.scaleX)
                    end

                    self.offY = self.offY - 1
                end

                if att == "swing" then -- like, a sword swing
                    -- ox and oy should be where the player's hand is on the weapon
                    rotVec = player.attackDir:rotated(math.pi/-2)
                    if player.comboCount % 2 == 0 then
                        rotVec:rotateInplace(math.pi)
                        self.scaleY = 1
                    else
                        self.scaleY = -1
                    end
                    local offVec = rotVec:normalized()

                    if player.anim.position == 1 then
                        self.visible = false
                    else
                        offVec = offVec * 6
                    end

                    self.offX = offVec.x
                    self.offY = offVec.y
                end

                if att == "heavySwing" then
                    -- ox and oy should be where the player's hand is on the weapon
                    rotVec = player.attackDir:rotated(math.pi/-2)
                    local dist = 6
                    if player.comboCount % 2 == 0 then
                        rotVec:rotateInplace(math.pi*1.3)
                        self.scaleY = 1
                    else
                        rotVec:rotateInplace(math.pi*-0.3)
                        self.scaleY = -1
                    end

                    if player.anim.position == 1 then
                        if player.comboCount % 2 == 0 then
                            rotVec:rotateInplace(math.pi*0.46)
                        else
                            rotVec:rotateInplace(math.pi*-0.46)
                        end
                    else
                        --dist = 5
                    end

                    local offVec = rotVec:normalized()*dist
                    offVec.x = offVec.x + player.attackDir.x * 3
                    offVec.y = offVec.y + player.attackDir.y * 3

                    self.offX = offVec.x
                    self.offY = offVec.y
                end

                if att == "cast" or att == "effectCast" then
                    -- ox and oy should be where the player's hand is on the weapon
                    rotVec = vector(0, -1)

                    self.offX = 5 * player.scaleX
                    if player.anim.position == 1 then
                        self.offY = self.offY - 1
                    elseif player.anim.position == 2 then
                        self.offY = self.offY - 2
                    elseif player.anim.position == 3 then
                        self.offY = self.offY - 1
                    end
                end

                if att == "shortThrow" then
                    -- ox and oy should be where the player's hand is on the weapon
                    rotVec = player.attackDir:rotated(math.pi/-2)
                    local offVec = rotVec:normalized()

                    if player.anim.position == 1 then
                        offVec = offVec * -6
                    else
                        offVec = offVec * 6
                    end

                    self.offX = offVec.x
                    self.offY = offVec.y - 3
                end

                if att == "effect" or att == "shoot" then
                    -- ox and oy should be where the player's hand is on the weapon
                    self.scaleY = 1
                    if player.attackDir.x < 0 then self.scaleY = -1 end
                    rotVec = player.attackDir
                    local offVec = player.attackDir

                    local destDist = player.attack.stabDist
                    if not destDist then destDist = 5 end

                    if player.anim.position == 1 then
                        offVec = player.attackDir * (destDist - 7)
                    elseif player.anim.position == 2 then
                        offVec = player.attackDir * destDist
                    elseif player.anim.position == 3 then
                        offVec = player.attackDir * (destDist - 1)
                    end

                    self.offX = offVec.x
                    self.offY = offVec.y

                    if player.lastMoveDir.y < player.lookUpThreshold then
                        if self.upOffX then
                            self.offX = self.offX + self.upOffX
                        end
                    end

                    if player.attackDir.y < player.lookUpThreshold and self.upOffX then
                        rotVec = rotVec:rotated(math.pi/22)
                    else
                        rotVec = rotVec:rotated(math.pi/64*player.scaleX)
                    end
                end

                self.offY = self.offY - 2.5

            else -- player is not attacking
                if self.carryType == "shoulder" then
                    if str == "walk" or str == "stop" or str == "idle" or str == "pickup" then
                        -- ox and oy should be set to the handle of the weapon
                        -- rotation set to angle behind player's head
                        rotVec = vector(-1.15, -1.25)
                        if str == "pickup" then rotVec = vector(0, -1) end

                        -- offset towards the player's hand
                        self.offX = 4.25
                        self.offY = -5.5

                        if player.lastMoveDir.y < player.lookUpThreshold then
                            self.offX = self.offX - 3
                        end

                        self.scaleY = player.scaleX
                    end
                end

                if self.carryType == "wand" then
                    rotVec = vector(1, -1.25)
                    self.offX = 5.5
                    self.offY = -4.5

                    if player.lastMoveDir.y < player.lookUpThreshold then
                        self.offY = -5.5
                    end

                    if str == "pickup" then rotVec = vector(0, -1) end
                end

                if self.carryType == "staff" then
                    rotVec = vector(0, -1)
                    self.offX = 5
                    self.offY = -4
                    if player.lastMoveDir.y < player.lookUpThreshold then
                        self.offY = -5
                    end
                end

                if self.carryType == "boomerang" then
                    rotVec = vector(1, 1)
                    --self.scaleX = player.scaleX
                    self.scaleY = player.scaleX
                    self.offX = 6
                    self.offY = -4.5
                    if player.lastMoveDir.y < player.lookUpThreshold then
                        self.offY = -5
                    end
                end

                if self.carryType == "simple" then
                    rotVec = vector(1, 0)
                    self.scaleX = 1
                    self.scaleY = player.scaleX
                    self.offX = 5
                    self.offY = -0.5
                    if player.lastMoveDir.y < player.lookUpThreshold then
                        self.offY = -3
                    end
                end

                -- check anim to adjust y offset
                if str == "walk" then
                    if player.anim.position == 3 or player.anim.position == 6 then
                        self.offY = self.offY + 1
                    end
                end

                if str == "stop" then
                    if player.anim.position < 3 then
                        self.offY = self.offY + 1
                    end
                end

                if str == "pickup" then
                    if player.anim.position <= 2 then
                        self.offY = self.offY + 2
                    else
                        self.offY = self.offY + 1
                    end
                end

                if str == "charge" then
                    rotVec = vector(0, -1) 
                    self.offX = 5
                    self.offY = 0
                    if player.anim.position == 1 then
                        self.offY = self.offY - 4
                    else
                        self.offY = self.offY - 3
                    end
                 end

                if str == "cast" then
                    rotVec = vector(0, -1) 
                    self.offX = 5
                    self.offY = 0
                    if player.anim.position == 1 then
                        self.offY = self.offY - 5
                    elseif player.anim.position == 2 then
                        self.offY = self.offY - 7
                    elseif player.anim.position == 3 then
                        self.offY = self.offY - 5
                    end
                end

                if str == "castingFinish" then
                    rotVec = vector(0, -1) 
                    self.offX = 5
                    self.offY = -4
                    if player.anim.position == 2 then
                     self.offY = -2
                    end
                 end

                -- choosing to only do this flip during carry, attacking handles this on its own
                self.offX = self.offX * player.scaleX
                rotVec.x = rotVec.x * player.scaleX
            end

            self.rot = getRotationFromVector(rotVec)

        end
    end

    function weapon:draw()
        setWhite()

        if self.state == 1 and debug.hidePlayer then return nil end
        if self.state == 1 and player.state >= 14 and player.state < 15 then return end -- player is dead
        if self.visible == false then return end

        if self.state == 1 then
            self.x = player.x
            self.y = player.y
        end

        if not self.ox then self.ox = 1.5 end -- base of the weapon
        if not self.oy then self.oy = self.height/2 end

        local sprToUse = self.sprite
        if self.state < 1 and self.groundSprite then sprToUse = self.groundSprite end
        --if self.glow then sprToUse = self.glowSprite end
        if self.hot and self.hotSprite then sprToUse = self.hotSprite end

        if self.useDur and self.dur == 0 then
            love.graphics.setColor(0.85, 0.85, 0.85, 1)
        end

        local bounceOff = 0
        if self.state == 0.5 then bounceOff = self.bounceY end
        local restingOffY = 0
        if self.state < 1 and self.restingOffY then restingOffY = self.restingOffY end

        if self.anim then
            self.anim:draw(sprToUse, self.x + self.offX, self.y + self.offY + self.castY + bounceOff + restingOffY, self.rot, self.scaleX, self.scaleY, self.ox, self.oy)
        else
            love.graphics.draw(sprToUse, self.x + self.offX, self.y + self.offY + self.castY + bounceOff + restingOffY, self.rot, self.scaleX, self.scaleY, self.ox, self.oy)
        end

        if self.talkative and self.state < 1 then
            love.graphics.draw(self.talkSpr, self.x, self.y + self.talkYoff, nil, nil, nil, self.talkSpr:getWidth()/2, self.talkSpr:getHeight()/2)
        end

        if self.electrified and self.state < 2 and (not self.maxCharges or self.charges >= self.maxCharges) then
            self.electricAnim:draw(self.electricSheet, self.x + self.offX, self.y + self.offY + self.castY + bounceOff + restingOffY + self.electricOffY, self.electricRot, self.electricScale, nil, 8, 8)
        end

        if self.onFire then
            self.fireAnim:draw(self.fireSheet, self.x + self.offX + self.fireVec.x, self.y + self.offY + self.castY + bounceOff + restingOffY + self.fireVec.y - 1, self.fireRot, self.fireScale, nil, 16, 16)
        end

        if self.marked then
            setWhite()
            local arrowSpr = sprites.ui.downArrow
            local xtraY = 0 if self.markedTracker%2 == 0 then xtraY = 2 end
            love.graphics.draw(arrowSpr, self.x, self.y - 20 + xtraY, nil, 1.2, nil, arrowSpr:getWidth()/2, arrowSpr:getHeight()/2)
        end
    end

    function weapon:castBreak()
        if self.onImpact then
            self:onImpact()
        else -- default weapon break
            particleEvent("weaponBreak", weapon.x, weapon.y - 8, {upwards=true})
            dj.play(sounds.weapons.breakFull, "static", "effect", 1, 0.95 + math.random()*0.1)
        end
        self:salvageSpawn()
        self.dead = true
        player.hasWeapon = false
        player.weaponId = nil
        player.weaponUniqueId = nil
        player.weaponClass = nil
    end

    function weapon:trigger()
        if self.state == -1 then -- held by npc, dropping it now
            self:bounce(vector(0, -50))
        end
    end

    function weapon:mark()
        self.marked = true
        weapon.markedTimer = 0.5
        weapon.markedTracker = 0
    end

    function weapon:heat() -- casting the fire spell, heat up the weapon
        particleEvent("weaponBreak", weapon.x, weapon.y - 8, {upwards=true})
        dj.play(sounds.weapons.breakFull, "static", "effect", 1, 0.95 + math.random()*0.1)

        weapon.hot = true
        weapon.hotTimer = 10
    end

    function weapon:extinguish()
        if self.hot or self.onFire then
            self.onFire = false
            self.hot = false
            self.hotTimer = 0
            self:removeLight()
        end
    end

    table.insert(weapons, weapon)
end

function weapons:update(dt)
    for _,w in ipairs(weapons) do w:update(dt) end

    local i = #weapons
    while i > 0 do
        if weapons[i].dead then table.remove(weapons, i) end
        i = i - 1
    end

    local closestVal = 999
    for _,w in ipairs(weapons) do
        w.glow = false
        local dist = distanceBetween(w.x, w.y, player.x, player.y)
        if w.state == 0 and dist < player.pickupRad then
            closestVal = dist
        end
    end
    if closestVal < 999 then
        for _,w in ipairs(weapons) do
            local dist = distanceBetween(w.x, w.y, player.x, player.y)
            if closestVal == dist and dist < player.pickupRad then
                -- This is the closest rock.
                w.glow = true
            end
        end
    end
end

function weapons:getIndex(uniqueId)
    for i,w in ipairs(weapons) do
        if w.uniqueId == uniqueId then
            return i
        end
    end
    return nil
end

function weapons:restoreAll() -- restore durability of everything
    for i,w in ipairs(weapons) do
        if w.maxArmor then w.armor = w.maxArmor end
        if w.maxAmmo then w.ammo = w.maxAmmo end
        if w.lightRad then w:removeLight() w:light() end
    end
end

function weapons:deleteByUid(uid)
    local i = #weapons
    while i > 0 do
        if weapons[i].uniqueId == uid then table.remove(weapons, i) end
        i = i - 1
    end
end

function weapons:triggerByUid(uid)
    local i = #weapons
    while i > 0 do
        if weapons[i].uniqueId == uid then weapons[i]:trigger() end
        i = i - 1
    end
end

function weapons:markReady()
    local i = #weapons
    while i > 0 do
        if weapons[i].readyToMark then weapons[i]:mark() end
        i = i - 1
    end
end

function weapons:removeNpcWeapons()
    for i,w in ipairs(weapons) do
        if w.state == -1 or w.npc then
            w.dead = true
        end
    end
end
