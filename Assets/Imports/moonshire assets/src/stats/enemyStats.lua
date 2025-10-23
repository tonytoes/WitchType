function getStats(en)

    if en.class == "slimeRed" then
        en.idleType = "wander"
        en.animOrder = { "idle", "walk", "attack" }
        en.attackDist = 44
        en.frameCounts = {2,4,4}
        en.frameSpeeds = {0.3, 0.16, {0.35, 0.12, 0.12, 0.2}}
        en.health = 3
        en.physWidth = 9
        en.physHeight = 8
        en.offY = -2
        en.walkSpeed = 120
        en.pursueSpeed = 220
        en.shadowY = 4
        en.shadowSpr = "roundS"
        en.wanderDist = 42
        en.hitKnockbackFactor = 1

        en.attack = {
            attackType = "tackle",
            flavor = "basic", -- basic tackle
            poise = false, -- can be interrupted, true by default
            boost = 200,
            bufferTime = 1.5, -- minimum time between each attack
            attackStartFrame = 2,
            sound = sounds.enemies.slime,
            jumpHeight = 3,
            jumpTime = 0.4
        }
    end

    if en.class == "carnivorock" then
        en.idleType = "hide"
        en.animOrder = { "idle", "walk", "attack", "hide" }
        en.attackDist = 52
        en.frameCounts = {2,4,4,1}
        en.frameSpeeds = {0.3, 0.22, {0.1, 0.25, 0.3, 0.12}, 1}
        en.health = 3
        en.width = 22
        en.height = 22
        en.physWidth = 11
        en.physHeight = 8
        en.offY = -5.5
        en.walkSpeed = 100
        en.pursueSpeed = 180
        en.shadowY = 3
        en.shadowSpr = "roundM"
        en.skipCheckX = true -- skips the X check when looking for player

        en.attack = {
            attackType = "tackle",
            flavor = "basic", -- basic tackle
            poise = false, -- can be interrupted, true by default
            boost = 250,
            bufferTime = 0.08, -- minimum time between each attack
            bufferRandom = 0.16, -- random time added to buffer
            attackStartFrame = 3,
            sound = sounds.enemies.slime,
            jumpHeight = 3,
            jumpTime = 0.4
        }
    end

    if en.class == "kotengu" then
        en.idleType = "wander"
        en.animOrder = { "idle", "walk", "attack", "attack2" }
        en.attackDist = 44
        en.frameCounts = {4,6,6,6}
        en.frameSpeeds = {{0.4, 0.12, 0.12, 0.12}, 0.14, {0.08, 0.1, 0.19, 0.12, 0.2, 0.2}, {0.2, 0.12, 0.12, 0.2, 0.3, 0.2}}
        en.health = 8
        en.width = 48
        en.height = 48
        en.physWidth = 16
        en.physHeight = 13
        en.physCorner = 2
        en.offY = -16
        en.walkSpeed = 200
        en.pursueSpeed = 320
        en.shadowY = 5.5
        en.shadowSpr = "roundL"
        en.drop = "weapon"
        en.dropId = "leaf"

        en.attackList = {
            {
                attackType = "slash",
                flavor = "small",
                poise = false, -- can be interrupted, true by default
                hitboxTime = 0.2,
                hitRad = 20,
                hitEffectOff = 16, -- number of pixels in front of the enemy that the effect stays
                boost = 200,
                bufferTime = 0.5, -- minimum time between each attack
                attackStartFrame = 4,
                sound = sounds.attacks.slashWeak,
                jumpHeight = 2,
                jumpTime = 0.4
            },
        }

        --[[{
            attackType = "effect",
            flavor = "windSlamBig",
            animName = "attack2",
            bufferTime = 0.5, -- minimum time between each attack
            attackStartFrame = 5,
            hitOff = 12, -- number of pixels in front of the enemy that the effect spawns
            shake = true,
            sound = sounds.attacks.slam
        }]]
    end

    if en.class == "cloudSpirit" then
        en.idleType = "wander"
        en.attackDist = 148
        en.attackBufferTime = 2 -- minimum time between each attack
        en.attackBufferRandom = 1 -- random time added to buffer
        en.attackFinishTime = 0.2 -- time from attack start, to when the enemy can move again
        en.frameCounts = {4,4,6}
        en.frameSpeeds = {0.16, 0.16, {0.11, 0.11, 0.11, 0.16, 0.2, 0.16}}
        en.health = 6
        en.width = 26
        en.height = 32
        en.physWidth = 13
        en.physHeight = 18
        en.physCorner = 4
        en.offY = -3
        en.walkSpeed = 80
        en.pursueSpeed = 90
        en.shadowY = 12
        en.windupDur = 0.4
        en.float = true
        en.projSpeed = 115
        en.projOffY = -2

        en.attack = {
            attackType = "shoot",
            flavor = "shockBall",
            boost = -100,
            bufferTime = 1.75, -- minimum time between each attack
            bufferRandom = 0.5, -- random time added to buffer
            attackStartFrame = 5,
            sound = sounds.attacks.zap,
            windupSound = sounds.windup.magicCharge,
            trackingVal = math.pi/400 -- how much it curves towards the player
        }
    end

    if en.class == "hornetSoldier" then
        en.idleType = "wander"
        en.animOrder = { "idle,walk", "attack", "attack2" }
        en.attackDist = 60
        en.frameCounts = {4,4,5}
        en.frameSpeeds = {0.14, {0.08, 0.08, 0.3, 0.45}, {0.08, 0.1, 0.1, 0.3, 0.3}}
        en.health = 6
        en.width = 50
        en.height = 50
        en.physWidth = 18
        en.physHeight = 16
        en.physCorner = 6
        en.offY = -4
        en.walkSpeed = 160
        en.pursueSpeed = 220
        en.shadowSpr = "wideL"
        en.shadowY = 9
        en.shadowScale = 0.85
        en.float = true

        en.wings = {
            spr = sprites.enemies.hornetWings,
            frameW = 50,
            frameH = 50,
            frameCount = 2,
            frameSpeeds = 0.06,
            offX = -1,
            offY = -5
        }

        en.specialIntro = { -- triggered manually
            id = "descend",
            height = -260,
            fallTime = 1.5,
            postWait = 0.2,
            --startEvents = { {"soundEffect", {sound=sounds.environment.thunder, vol=1, pitch=0.9}} }, -- all events that happen right when the cutscene starts
        }

        en.attackList = {
            {
                attackType = "shoot",
                flavor = "lob_smokeBomb",
                animName = "attack2",
                attackStartFrame = 5,
                bufferTime = 0.5, -- minimum time between each attack
                bufferRandom = 0.2, -- random time added to buffer
                sound = sounds.attacks.spit,
                soundVolume = 0.5
            },
            {
                attackType = "tackle",
                flavor = "basic", -- basic tackle
                boost = 450,
                poise = false, -- can be interrupted, true by default
                -- remember - without finishTime, the transition back to walking is handled by animation
                bufferTime = 0.5, -- minimum time between each attack
                bufferRandom = 0.5, -- random time added to buffer
                attackStartFrame = 4,
                sound = sounds.attacks.bug,
                jumpHeight = 3,
                jumpTime = 0.4,
                windupBoost = 120,
                totalTimes = 2
            }
        }
    end

    if en.class == "hornetWorker" then
        en.idleType = "wander"
        en.animType = "simple"
        en.simpleCount = 6
        en.simpleSpeed = 0.1
        en.health = 1
        en.width = 50
        en.height = 50
        en.physWidth = 12
        en.physHeight = 9
        en.physCorner = 2
        en.offY = 0
        en.walkSpeed = 160
        en.pursueSpeed = 360
        en.shadowSpr = "roundS"
        en.shadowY = 8
        en.shadowScale = 1
        en.float = true

        en.attack = { attackType = "chase" }
    end
    
    if en.class == "puff" then
        en.idleType = "wander"
        en.animType = "simple"
        en.simpleCount = 4
        en.simpleSpeed = 0.18
        en.health = 3
        en.width = 50
        en.height = 50
        en.physWidth = 12
        en.physHeight = 9
        en.physCorner = 2
        en.offY = -3
        en.walkSpeed = 120
        en.pursueSpeed = 220
        en.shadowSpr = "roundS"
        en.shadowY = 6
        en.shadowScale = 1
        en.float = true
        en.wanderDist = 42
        en.onDeath = "elecExplosionBig"

        en.attack = { attackType = "chase" }
    end

    if en.class == "eyeRed" then
        en.idleType = "wander"
        en.attackDist = 50
        en.animType = "simple"
        en.simpleCount = 2
        en.simpleSpeed = 0.5
        en.health = 3
        en.width = 20
        en.height = 20
        en.physWidth = 9
        en.physHeight = 11
        en.offY = -2
        en.walkSpeed = 120
        en.pursueSpeed = 240
        en.shadowY = 6
        en.float = true
        en.windupPower = 80
        en.topLayer = true -- pierces darkness

        en.attack = {
            attackType = "tackle",
            flavor = "basic", -- basic tackle
            poise = false, -- can be interrupted, true by default
            boost = 300,
            bufferTime = 1, -- minimum time between each attack
            finishTime = 0.5,
            windupDur = 0.35
        }
    end

    if en.class == "sentry" then
        en.idleType = "patrol"
        en.patrolPointWait = -1 -- time to wait at each patrol point
        en.searchDist = 64
        en.attackDist = 64
        en.constantAggro = true -- this will prevent the increase to un-aggro radius
        en.frameCounts = {2,2,2,1}
        en.frameSpeeds = {0.3, 0.3, 0.08, 2}
        en.health = 1
        en.width = 16
        en.height = 16
        en.physWidth = 13
        en.physHeight = 13
        en.physCorner = 6
        en.offY = 0
        en.walkSpeed = 260
        en.shadowY = 8
        en.windupDur = 0.3
        en.float = true
        en.exclaims = false
        en.electrified = true
        en.lightRad = 38
        en.lightColor = "green"

        en.attack = {
            attackType = "landmine",
            flavor = "shock",
            animName = "attack",
            bufferTime = 1.5, -- minimum time between each attack
            finishTime = 1,
            windupDur = 0.3,
            --sound = handled by the shock effect
        }
    end

    if en.class == "balloon" then
        en.idleType = "patrol"
        en.patrolPointWait = -1 -- time to wait at each patrol point
        en.animType = "simple"
        en.simpleCount = 2
        en.simpleSpeed = 0.16
        en.health = 1
        en.width = 32
        en.height = 32
        en.physWidth = 20
        en.physHeight = 20
        en.physCorner = 5
        en.offY = 0
        -- en.walkSpeed = 260, handled in cutscene.lua
        en.shadowY = 16
        en.float = true
        en.exclaims = false
        en.shadowSpr = "roundM"
        en.constantScaleX = true
        en.instaDeath = true -- will pop instantly when dead
        en.drop = ""
    end

    if en.class == "jelly" then
        en.idleType = "wander"
        en.animType = "simple"
        en.simpleCount = 2
        en.simpleSpeed = 0.4
        en.health = 1
        en.width = 17
        en.height = 16
        en.physWidth = 9
        en.physHeight = 9
        en.physCorner = 2
        en.offY = 0
        en.walkSpeed = 20
        en.pursueSpeed = 30
        en.shadowSpr = "roundS"
        en.shadowY = 8
        en.shadowScale = 1
        en.float = true
        en.electrified = true
        en.drop = "lob"
        en.dropId = "jelly"
        en.instaDeath = true -- will pop instantly when dead
        en.lightRad = 38
        en.lightColor = "green"
        en.exclaims = false
        en.attack = nil
        en.wanderDist = 24
        en.onDeath = "jelly"
    end

    if en.class == "dummy" then
        en.idleType = "immobile"
        en.attackType = "none"
        en.danger = 0
        en.health = 10
        en.invincible = true
        en.useAnim = false
        en.static = true
        en.offY = -3
        en.shadowY = 3
        en.hitKnockbackFactor = 2
    end

    return en
end
