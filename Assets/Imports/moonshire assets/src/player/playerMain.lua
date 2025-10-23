player = world:newBSGRectangleCollider(134, 210, 10, 7, 2)
player.physWidth = 10
player.physHeight = 7

function player:reinit()
    player.x = 0
    player.y = 0
    player.dir = vector(1, 1)
    player.lastMoveDir = vector(1, 1)
    player.lookUpThreshold = -0.45
    player.speed = 90
    player.chargeWalkSpeed = 30
    player.baseSpeed = 90
    player.walking = false
    player.animTimer = 0
    player.health = 3
    player.maxHealth = 3
    player.stunTimer = 0
    player.damagedTimer = 0
    player.damagedBool = 1
    player.damagedFlashTime = 0.05
    player.attackDir = vector(1, 0)
    player.dashSpeed = 12 -- sword dash speed
    player.comboCount = 0 -- old
    player.combo = 0 -- used with weapon attack list to 
    player.attack = nil -- loaded from weapon
    player.sequence = nil -- loaded from weapon
    player.sequenceIndex = -1
    player.baseDamping = 12
    player.dustTimer = 0
    player.rollDelayMax = 0.3
    player.rollDelayTimer = 0
    player.rollInvincibilityTime = 0.37
    player.rotateMargin = 0.25
    player.inWater = false
    player.rippleTimer = 0.15
    player.distSlice = false
    player.postBuffer = 0
    player.slippery = false
    player.animTracker = 0
    player.drownTimer = 0
    player.slashMax = 3
    player.slashCount = 0
    player.slashTimer = 0
    player.sparked = false
    player.attackId = -1
    player.swordHitboxTimer = -1
    player.tinyTimer = 0
    player.openingCutscene = false
    player.camOffY = 0
    player.notSlidingX = 0
    player.notSlidingY = 0
    player.stabBreak = false -- if true then the player's stab does not dash forward
    player.colorImmune = true
    player.cutsceneX = 0
    player.cutsceneY = 0
    player.specialStart = 0
    player.platformId = 0
    player.itemGetId = nil
    player.stabbing = false
    player.focusX = -1 -- used for dialogue, determines which scaleX the player should face
    player.focusY = -1
    player.hasWeapon = false
    player.weaponId = ""
    player.weaponUniqueId = ""
    player.weaponY = 0 -- offset for weapon bounce with player
    player.weaponLayer = 0
    player.scaleX = 1
    player.lastScaleX = 1
    player.animModifier = 1
    player.smOffset = 3.5
    player.reloadTimer = 0
    player.sideDoubleTapDt = 0 -- used for double tap to drop weapon
    player.winTimer = 0
    player.hadSpellWeapon = false
    player.spellBuffer = 0
    player.inCombat = false
    player.skipAttack = false -- when interacting with things (chests) will be set to true so you don't attack
    player.animTriggerFrame = nil -- when set, if player.anim reaches this frame, it'll trigger some event
    player.dashingSpeed = 0
    player.dashTween = nil -- used for tweening the dashing speed
    player.strState = "none"
    player.wantedWeaponId = "" -- used for blacksmith
    player.maxSwimTime = 1.25
    player.mana = 0
    player.maxMana = 24
    player.castType = 0
    player.climbing = false

    player.pickupRad = 18
    player.chargeThresh = 0.85 -- how long to charge an attack before the charge attack happens
    player.chargeAiming = false
    player.throwAiming = false
    player.throwThresh = 0.85
    player.throwAimCursorRot = 0
    player.throwAimCursorExtra = 0
    player.mainHold = 0
    player.sideHold = 0
    player.magicHold = 0
    player.dodgeHold = 0
    player.holdMain = 0
    player.chargeAttacking = false
    player.chargeZoomFactor = 1.1
    player.attLookFactor = 0 -- used for zoomback to player

    player.resource = {}
    player.resource.id = "gold"
    player.resource.spr = sprites.items.resources.gold1
    player.resource.state = 0
    player.resource.count = 0
    player.resource.timer = 0
    player.resource.y = 0
    player.resource.alpha = 0

    player.strikeTimer = 0 -- used for post-throw lightning attack
    player.strikeX = 0 -- location of lightning strike
    player.strikeY = 0

    player.shockTimer = 0
    player.shockDamage = 1
    player.shockAnimTimer = 0
    player.shockOffVal = 0
    player.electricSheet = sprites.effects.smallCharge
    player.electricGrid = anim8.newGrid(16, 16, player.electricSheet:getWidth(), player.electricSheet:getHeight())
    player.electricAnim = anim8.newAnimation(player.electricGrid('1-9', 1), 0.1, function() player.electricRot = math.random() * math.pi * 2 end)
    player.electricRot = 0

    player:setMass(0.2)

    -- 0 = Normal gameplay
    -- 0.5 = Rolling
    -- 0.6 = Recoil
    -- 1 = Sword swing
    -- REMOVED 2 = Use (bomb)
    -- REMOVED 3 = Bow (3: bow drawn, 3.1: recover)
    -- REMOVED 4 = grapple (4: armed, 4.1: launching, 4.2: moving)
    -- 5 = Cast prep
    -- 5.1 = Casting
    -- 10 = Damage stun
    -- REMOVED 11 = Hold item
    -- 12 = Transition
    -- 13 = Cutscene
    -- 13.5 = Player walking cutscene
    -- 14 = invisible/immobile
    -- 14.5 = dead (invisible/immobile, still locked)
    -- 15 = picking up
    -- 16 = item get hold
    player.state = -1

    player:setCollisionClass("Player")
    player:setFixedRotation(true)
    player:setLinearDamping(player.baseDamping)

    --[[player.width = 18
    player.height = 21
    player.grid = anim8.newGrid(18, 21, sprites.playerSheet:getWidth(), sprites.playerSheet:getHeight())]]

    --[[player.newAnimations = {}
    player.newAnimations.walkDown = anim8.newAnimation(player.grid('1-6', 1), 0.14/1.35)
    player.newAnimations.walkCarryDown = anim8.newAnimation(player.grid('1-6', 16), 0.14/1.35)
    player.newAnimations.walkUp = anim8.newAnimation(player.grid('1-6', 2), 0.14/1.35)
    player.newAnimations.swimDown = anim8.newAnimation(player.grid('1-2', 10), 0.14*2)
    player.newAnimations.swimUp = anim8.newAnimation(player.grid('3-4', 10), 0.14*2)
    player.newAnimations.swordDown = anim8.newAnimation(player.grid('1-4', 3), {0.08, 0.12, 0.12, 0.18}, function() player.animCounter = player.animCounter + 1 end)
    player.newAnimations.swordDownAlt = anim8.newAnimation(player.grid('4-6', 3), {0.12, 0.15, 0.5})
    player.newAnimations.swordUp = anim8.newAnimation(player.grid('1-4', 4), {0.08, 0.12, 0.12, 0.18}, function() player.animCounter = player.animCounter + 1 end)
    player.newAnimations.swordSlowDown = anim8.newAnimation(player.grid('1-4', 3), {0.22, 0.16, 0.2, 0.18}, function() player.animCounter = player.animCounter + 1 end)
    player.newAnimations.swordSlowUp = anim8.newAnimation(player.grid('1-4', 4), {0.22, 0.16, 0.2, 0.18}, function() player.animCounter = player.animCounter + 1 end)
    player.newAnimations.stopDown = anim8.newAnimation(player.grid('1-3', 7), 0.24, function() player:justIdle() end)
    player.newAnimations.stopCarryDown = anim8.newAnimation(player.grid('7-9', 7), 0.24, function() player:justIdle() end)
    player.newAnimations.stopUp = anim8.newAnimation(player.grid('4-6', 7), 0.22, function() player:justIdle() end)
    player.newAnimations.putAway = anim8.newAnimation(player.grid('1-3', 7), 0.22, postItemGetAnim)
    player.newAnimations.idleDown = anim8.newAnimation(player.grid('1-2',8, '1-2',8, '1-2',8, '1-2',8, '3-8',8), {1.8,0.08, 3,0.08, 0.12,0.08, 1.8,0.08,  2.4, 0.1, 1.3, 0.1, 1.3, 0.1})
    player.newAnimations.idleUp = anim8.newAnimation(player.grid('1-2', 9), 0.22)
    player.newAnimations.idleCarryDown = anim8.newAnimation(player.grid('3-4', 9), {2.5, 0.1})
    player.newAnimations.rollDown = anim8.newAnimation(player.grid('2-7', 5), {0.08, 0.08, 0.08, 0.08, 0.08, 0.08}, function() player:finishRollAnim() end)
    player.newAnimations.rollUp = anim8.newAnimation(player.grid('2-7', 6), {0.1, 0.1, 0.09, 0.09, 0.09, 0.09}, function() player:finishRollAnim() end)
    player.newAnimations.useDown = anim8.newAnimation(player.grid('2-3', 3), 0.14, function() player:resetToNormal() end)
    player.newAnimations.useUp = anim8.newAnimation(player.grid('2-3', 4), 0.08, function() player:resetToNormal() end)
    player.newAnimations.castDown = anim8.newAnimation(player.grid('3-4', 12), {0.35, 0.08}, function() player:resetToNormal() end)
    player.newAnimations.castPrepDown = anim8.newAnimation(player.grid('1-2', 12), {0.1, 0.35}, function() player:cast() end)
    player.newAnimations.castDownHold = anim8.newAnimation(player.grid('5-6', 12), 0.115)
    player.newAnimations.recoilDown = anim8.newAnimation(player.grid(1, 12), 0.5, function() player:resetToNormal() end)
    player.newAnimations.frozenDown = anim8.newAnimation(player.grid(1, 8), 5)
    player.newAnimations.scepterDown = anim8.newAnimation(player.grid('1-3', 14), {0.08, 0.14, 0.08}, function() player:resetToNormal() end)
    player.newAnimations.scepterUp = anim8.newAnimation(player.grid('4-6', 14), {0.08, 0.14, 0.08}, function() player:resetToNormal() end)
    player.newAnimations.pickupDown = anim8.newAnimation(player.grid(5,3, 6,3, 7,3), {0.1, 0.1, 0.1}, function() player:resetToNormal() end)
    player.newAnimations.pickupDown2 = anim8.newAnimation(player.grid(4, 12), {0.08}, function() player:resetToNormal() end)
    player.newAnimations.pickupUp = anim8.newAnimation(player.grid(5,4, 6,4, 7,4), {0.1, 0.1, 0.1}, function() player:resetToNormal() end)
    player.newAnimations.pickupUp2 = anim8.newAnimation(player.grid(8, 12), {0.08}, function() player:resetToNormal() end)
    player.newAnimations.itemGet = anim8.newAnimation(player.grid('4-5', 11), {0.2, 0.75}, function() player:itemExpo() end)
    player.newAnimations.itemGetHold = anim8.newAnimation(player.grid(5, 11), {1}, 'pauseAtEnd')]]

    player.animStr = ""
    player.animUrg = 0 -- up row gap, used for up vs down animations

    player.width = 24
    player.height = 24
    player.grid = anim8.newGrid(player.width, player.height, sprites.player.full:getWidth(), sprites.player.full:getHeight())
    player.fakeAnim = anim8.newAnimation(player.grid(1, 1), 10)
    player.animations = {}
    player.animations.attack = nil

    player:changeAnim("idle")

    player.buffer = {} -- input buffer
end

function player:dropWeapon()
    if player.state == 0 and player.hasWeapon and boomerangHeldCheck() then
        local dropVec = vector(1, 1):rotated(math.random() * math.pi/2):normalized() * (15 + math.random()*5)
        weapons[weapons:getIndex(player.weaponUniqueId)]:drop(dropVec)
        player:resetAnimation()
    end
end

function player:getStrState()
    return player.animStr
end

function player:checkDamage()
    if player.damagedTimer > 0 then return end

    local hitEnemies = world:queryCircleArea(player:getX(), player:getY(), 4.5, {'Enemy', 'Enemy2'})
    if #hitEnemies > 0 then
        local e = hitEnemies[1]

        if e.parent.electrified and e.parent:canHurtPlayer() then
            player:shock(e.parent.danger)
            return
        end

        if e.parent:canHurtPlayer() then
            player:hurt(e.parent.danger, e:getX(), e:getY())
        end
    end

    -- to fix the overlap issue, check distance as well
    for _,e in ipairs(enemies) do
        if e.physics and distanceBetween(e.physics:getX(), e.physics:getY(), player:getX(), player:getY()) < 4 and e:canHurtPlayer() then
            player:hurt(e.danger, e.physics:getX(), e.physics:getY())
        end
    end
end

function player:checkTransition()
    if player:enter('Transition') then
        local t = player:getEnterCollisionData('Transition')
        if t.collider.type == "instant" then
            triggerTransition(t.collider.id, t.collider.destX, t.collider.destY)
        else
            curtain:call(t.collider.id, t.collider.destX, t.collider.destY, t.collider.type, t.collider.newEntrance)
        end
        if t.collider.portal then
            level:stop()
            dj.play(sounds.misc.teleport, "static", "effect")
            dj.fade(0.5)
        end
        --triggerTransition(t.collider.id, t.collider.destX, t.collider.destY)
    end
end

function player:hurt(damage, srcX, srcY, args)
    -- NOTE: since the rework to Moons as health, removing damage as a concept
    --if not damage then damage = 1 end
    damage = 1 -- always do 1 damage to the player
    hudDamage()
    if args and args.electric then
        player.state = 0 -- hard setting player state to 0 for electric timer damage
    end
    if player.damagedTimer > 0 or (player.state >= 10 and player.state ~= 15 and player.state < 20) then return end
    player.damagedTimer = 1.5
    if allGems.sapphire then player.damagedTimer = player.damagedTimer * 2 end

    if jewelry:checkAbility("evasion") then
        if math.random() < 0.21 then
            damage = 0
            damages:spawnDamage(player:getX(), player:getY()-6, 1, {text="LUCKY", color="flashGreen", timeFactor=1.5})
            sem:playSound(sounds.jewelry.lucky)
        end
    end

    local armorHit = false
    local wep = nil
    if player.hasWeapon then
        wep = weapons[weapons:getIndex(player.weaponUniqueId)]
        if wep.armor and wep.armor > 0 then
            armorHit = true
        end
    end

    if jewelry.healthRegen then
        jewelry.healthRegenTimer = jewelry.healthRegenMaxTimer
    end

    player.state = 10 -- damaged
    if srcX and srcY then
        player:setLinearVelocity((getFromToVector(srcX, srcY, player:getX(), player:getY()) * 300):unpack())
    end
    player.stunTimer = 0.075
    player.aiming = false

    if damage > 0 then
        shake:standard(2)
        if armorHit then
            wep:armorHit()
        elseif damage > 0 then
            particleEvent("playerHit", player:getX(), player:getY())
            dj.play(sounds.player.hurt, "static", "effect")
            if debug.active and debug.invincible then damage = 0 end
            player.health = player.health - damage
        end
    else
        --player.stunTimer = 0
        --player.state = 0
    end

    if player.health <= 1 and player.health > 0 then
        if wep and wep.armor and wep.armor > 0 then
            -- still protected by armor, no need to panic!
        else
            dj.play(sounds.player.lowHealth, "static", "effect")
        end
    end
end

function player:resetToNormal()
    player.state = 0
    player.walking = false
    player.animTimer = 0
    player.hadSpellWeapon = false
    player:changeAnim("idle")
end

function player:resetAnimation()
    if player.state ~= 0 and curtain.state < 1 then return end
    player:changeAnim("idle")
end

function boomerangHeldCheck() -- returns true if the boomerang is in your hands
    local wep = weapons[weapons:getIndex(player.weaponUniqueId)]
    if wep then
        return (wep.id ~= "boomerang" or wep.state < 2)
    else
        return true
    end
end

function player:setDirFromVector(vec)
    local result = getFakeDirFromVector(vec, 0) --player.rotateMargin)
    player.dir = vector(result.x, result.y):normalized()
    player.lastMoveDir = player.dir
end

function player:justStop()
    if player.inWater then return end
    if player.itemGetSpr then return end
    player:changeAnim("stop")
end

function player:justIdle()
    player:changeAnim("idle")
    player.openingCutscene = false
    player.camOffY = 0
end

function player:look(lkdir)
    player.dir.y = lkdir
    player.lastMoveDir.y = lkdir
    player:changeAnim("idle")
end

function player:startOpening()
    hud.alpha = 0
    player.camOffY = -126
    player.state = 14
    flux.to(self, 6, {camOffY = 0}):ease("sineout"):oncomplete(function() effects:spawn("startPortal", player:getX(), player:getY() - 59) end)

    misc.state = 11
    misc.timer = 1
end

function player:cutscene(dir)
    if player.state == 13 or player.state == 13.5 then return nil end
    if player:getSpeed() > 50 then
        player:setSpeed(50)
    end

    player:setLinearDamping(player.baseDamping)
    player.state = 13
    if dir then player.dir = dir end
    player.lastMoveDir = player.dir
    player:justStop()
end

function player:processBuffer(dt)
    for i=#player.buffer,1,-1 do
        player.buffer[i][2] = player.buffer[i][2] - dt
    end
    for i=#player.buffer,1,-1 do
        if player.buffer[i][2] <= 0 then
            table.remove(player.buffer, i)
        end
    end

    if player.state == 0 then
        player:useBuffer()
    end
end

function player:addToBuffer(action)
    if action == "roll" and player.state == 0.5 then
        table.insert(player.buffer, {action, 0.1})
    elseif action == "pickup" and player.state == 15 then
        table.insert(player.buffer, {action, 0.1})
    else
        table.insert(player.buffer, {action, 0.25})
    end
end

function player:useBuffer()
    if player.inWater then return end

    local action = nil
    if #player.buffer > 0 then
        action = player.buffer[1][1]
    end

    player:clearBuffer()

    if action == nil then return end

    if action == "attack" then
        player:startAttack()
    elseif action == "bow" then
        if not player:isBowButtonDown() then
            player.aiming = true
            player:useBow()
        end
    elseif action == "bomb" then
        player:useBomb()
    elseif action == "boomerang" then
        player:useBoomerang()
    elseif action == "fire" then
        player:useFire()
    elseif action == "roll" then
        player:roll()
    elseif action == "star" then
        player:useStar()
    elseif action == "pickup" then
        player:startPickup()
    elseif action == "spell" then
        player:prepCast()
    end
end

function player:clearBuffer()
    for k,v in pairs(player.buffer) do player.buffer[k]=nil end
end

function player:respawnWater()
    player:setPosition(player.notSlidingX, player.notSlidingY)
    player:setLinearVelocity(0, 0)
    player.damagedTimer = -1
    player.state = 0
    local hurtVal = 1
    if gameMap.isSky then hurtVal = 1 end
    if curtain.state == 0 and hurtVal > 0 then player:hurt(hurtVal) end
    player.drownTimer = 0
    player.inWater = false
    player:justIdle()
    effects:deleteType("playerFall")
end

function player:cutsceneWalk(destWalkX, destWalkY, time, args)
    player:setLinearVelocity(0, 0)
    player.state = 13.5
    player.cutsceneX = player:getX()
    player.cutsceneY = player:getY()
    player.dir = getPlayerToSelfVector(destWalkX, destWalkY)
    player.lastMoveDir = player.dir
    local ctsnParent = nil
    if args and args.cutsceneParent then ctsnParent = args.cutsceneParent end
    local moveTime = 0.5
    if time then moveTime = time end
    flux.to(player, moveTime, {cutsceneX = destWalkX}):ease("sineout")
    flux.to(player, moveTime, {cutsceneY = destWalkY}):ease("sineout"):oncomplete(function()
        player.dir.y = 1
        player.lastMoveDir.y = 1
        if args and args.finalX then player.dir.x = args.finalX player.lastMoveDir.x = args.finalX end
        if args and args.finalY then player.dir.y = args.finalY player.lastMoveDir.y = args.finalY end
        player.state = 13
        player.cutsceneParent = ctsnParent
        player:justStop()
    end)
end

function player:drown()
    local range = math.random()/4
    effects:spawn("sink", player:getX(), player:getY())
    dj.play(sounds.player.splash, "static", "effect", 1, 1+range)
    particleEvent("splash", player:getX(), player:getY())
    player.drownTimer = 0.75
    player.state = 14
    player.lastMoveDir.y = 1
    player:setLinearVelocity(0, 0)
end

function player:fall()
    effects:spawn("playerFall", player:getX(), player:getY())
    --dj.play(sounds.player.splash, "static", "effect", 1, 1)
    player.drownTimer = 1.5
    if isBossFight() then player.drownTimer = 0.75 end
    player.state = 14
    player:setLinearVelocity(0, 0)
    dj.play(sounds.player.fall, "static", "effect", 0.65)
end

function player:shock()
    if player.shockTimer > 0 then return end
    player.shockTimer = 0.65
    player.shockAnimTimer = 0
    player.shockOffVal = 2
    player.shockDamage = 1 -- always 1
    shake:start(1, 1.1, 0.025)
    player.damagedTimer = -1
    dj.play(sounds.player.shocked, "static", "effect", 1)
end

function player:itemGet(id)
    if cutscene.state > 0 then cutscene:finish() end

    if id and id:startswith("resource_") then
        local itemId = id:sub(10)
        resources:spawn(itemId, player.x, player.y, {instaCollect=true})
        cam:fluxUnzoom()
        player.state = 0
        return nil
    end

    player.lastMoveDir.y = 1
    player:setLinearVelocity(0,0)
    spawnBlast(player:getX(), player:getY(), 96, nil, 0.25)
    player.state = 16
    player:changeAnim("itemGet")
    player.anim:gotoFrame(1)
    dataItemGet(id)
    --dj.play(sounds.player.itemGet, "static", "effect", 0.8)
    playAltMusic(bgm.itemGet, 4)
    talk:checkAllNpcRelays()

    if id:startswith("upgrade_") then
        -- remove the first part of the string
        id = id:sub(9)
    end

    -- display item sprite, make it rise, and then show the text
    player.itemGetId = id
    player.itemGetOffY = 0
    player.itemGetSpr = loots.all[id].spr
    player.itemGetScale = loots.all[id].scl
    player.itemGetAlpha = 1

    local fluxTime = 0.5
    flux.to(player, fluxTime, {itemGetOffY = -24}):ease("quadout"):oncomplete(function() player:itemExpo() end)
    --flux.to(player, fluxTime, {itemGetScale = player.itemGetScale*1.35}):ease("quadout")

    cam:fluxZoom("playerItemGet", 0.75)

    -- REMOVE THIS EVENTUALLY
    if id == "lightning" then
        portals:spawn(2216, 320, "toCloudDungeon")
    end
end

-- called by the end of player's itemGet animation
function player:itemExpo()
    if player.state == 16 then
        player.state = 16.1

        -- convert gem string if needed
        local getId = player.itemGetId
        local getName = nil
        local itemGet = nil
        if not lcl.items[getId] then
            if getId:startswith("gem_") then
                getId = getId:sub(5)
                getName = lcl.items.gems[getId].name
                itemGet = lcl.items.gems[getId].itemGet
            end
            if getId:startswith("dye_") then
                getId = getId:sub(5)
                getName = lcl.items.dye.name:gsub("{a}", lcl.items.colors[getId])
                itemGet = lcl.items.dye.itemGet
            end
        elseif lcl.items[getId].itemGet then
            itemGet = lcl.items[getId].itemGet
            getName = lcl.items[getId].name
        end

        if itemGet then
            local introStr = lcl.items.messages.itemGet:gsub("{a}", getName)
            local subList = {introStr}
            if type(itemGet) == "table" then
                for _,v in pairs(itemGet) do
                    table.insert(subList, v)
                end
            elseif type(itemGet) == "string" then
                table.insert(subList, itemGet)
            end

            talk:startSub(subList)
        end
    end
end

function player:itemGetFinish(unzoom)
    if player.itemGetId == "lightning" then
        misc:spawnStuff("afterCloudBoss")
    end

    player:changeAnim("stop")
    flux.to(player, 0.5, {itemGetAlpha = 0}):ease("quadout")
    flux.to(player, 0.5, {itemGetOffY = 0}):ease("quadout")
    flux.to(player, 0.5, {itemGetScale = player.itemGetScale/2}):ease("quadout")
    if unzoom == nil or unzoom then
        dialogue.talking = false
        cam:fluxUnzoom()
    end
end

function player:die()
    player.health = player.maxHealth -- resetting health immediately
    player.state = 14.5
    effects:spawn("playerLaunch", player:getX(), player:getY())
    enemies:resetAggro()
    dj.fade(0.75)
    dj.play(sounds.player.die, "static", "effect", 1.5)

    if data.player and data.player.deaths ~= nil then
        data.player.deaths = data.player.deaths + 1
    end

    -- zoom camera in
    flux.to(cam, 1, {scaleAdjust = 3}):ease("sineinout")

    -- handle the player's held weapon
    if player.hasWeapon then
        weapons:deleteByUid(player.weaponUniqueId)
        player.hasWeapon = false
        player.weaponId = ""
        player.weaponUniqueId = ""
    end
end

function player:heal(amt)
    local showFlash = false
    if player.health < player.maxHealth then showFlash = true end
    player.health = player.health + amt
    if player.health > player.maxHealth then player.health = player.maxHealth end
    if showFlash then
        hudDamage()
    end
end

function player:simpleHeal(amt)
    player.health = player.health + amt
    if player.health > player.maxHealth then player.health = player.maxHealth end
end

function player:getSpeed()
    return distanceBetween(0, 0, player:getLinearVelocity())
end

function player:setSpeed(spd)
    local vx, vy = player:getLinearVelocity()
    local newVec = vector(vx, vy):normalized() * spd
    player:setLinearVelocity(newVec.x, newVec.y)
end

function player:cancelSpell()
    if player.state == 5 then
        player:resetToNormal()
        cam:fluxUnzoom(0.2)
        player.castType = 0
        player.spellBuffer = 0.2
        if allGems.sapphire then
            player.damagedTimer = 0.25
        end
    end
end

function player:setMaxHealth()
    player.maxHealth = data.player.maxHealth + misc:getAssist("health")
    if player.maxHealth < 1 then player.maxHealth = 1 end
    if allGems.ruby then player.maxHealth = player.maxHealth + 1 end
    if player.health > player.maxHealth then player.health = player.maxHealth end
end

function player:getResource(id, args)
    if player.resource.count > 0 and id == player.resource.id then
        player.resource.count = player.resource.count + 1
    else
        player.resource.count = 1
    end

    player:showResource(id, args)
end

function player:showResource(id, args)
    player.resource.id = id
    player.resource.state = 1
    player.resource.tweenTime = 0.3
    player.resource.timer = 0.65

    local snum = 1

    if args then
        if args.sprNum then snum = args.sprNum end
        if args.myCount then player.resource.count = resources:getCount(id) end
        if args.timer then player.resource.timer = args.timer end
    end

    player.resource.spr = sprites.items.resources[id .. snum]

    if player.resource.y > 0 then player.resource.y = player.resource.y/2 else player.resource.y = 0 end
    if player.resource.tween then player.resource.tween:stop() end
    player.resource.tween = flux.to(player.resource, player.resource.tweenTime, {y = -11, alpha = 1}):ease("sineout")
end
