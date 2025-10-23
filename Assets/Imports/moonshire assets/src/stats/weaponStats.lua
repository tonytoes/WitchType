function weapons:getStats(w)
    if w.id == "sword" then
        w.name = "Sword"
        w.carryType = "none"
        w.ox = 3
        w.oy = 3
        w.attackList = {
            {
                attackType = "swing",
                flavor = "smallSlash",
                frameSpeeds = {0.13, 0.19, 0.14},
                boost = 8, -- multiplier based on the sword's boost amount
                mag = 80,
                selfKnockback = 20,
                snapDist = 40,
                snapMult = 3, -- mult for the boost (or dash)
                sound = "slash",
                soundPitch = 1.3,
                soundVolume = 0.4,
                soundPitchRandom = 0.1,
            },
            {
                attackType = "swing",
                flavor = "smallSlash",
                frameSpeeds = {0.13, 0.19, 0.14},
                boost = 10, -- multiplier based on the sword's boost amount
                mag = 100,
                selfKnockback = 20,
                snapDist = 40,
                snapMult = 3, -- mult for the boost (or dash)
                sound = "slash",
                soundPitch = 1.3,
                soundVolume = 0.4,
                soundPitchRandom = 0.1,
            },
            {
                attackType = "stab",
                flavor = "smallStab",
                stabDist = 7,
                frameSpeeds = {0.28, 0.22, 0.15},
                maxDashSpeed = 1500, -- max speed from tween
                tweenTime = 0.25,
                mag = 300,
                selfKnockback = 25,
                sound = "stab",
                soundVolume = 0.6,
                soundPitchRandom = 0.1,
                stunTime = 0.32,
                impulseSelfKnockback = true -- without this, uses velocity self knockback
            }
        }
        w.chargeAttack = {
            attackType = "stab",
            flavor = "bigStab",
            power = 2,
            frameSpeeds = {0.4, 0.3, 0.16},
            maxDashSpeed = 2200, -- max speed from tween
            tweenTime = 0.4,
            mag = 320,
            selfKnockback = 100,
            sound = "bigStab",
            soundPitch = 1,
            soundVolume = 0.75,
            soundPitchRandom = 0.05,
        }
    end

    -- THIS ONE IS NOT USED LOL
    if w.id == "sword2" then -- NOTE: there NEEDS to be a sprite!!
        w.name = "Sword"
        w.carryType = "none"
        w.sprite = sprites.weapons.sword
        w.ox = 3
        w.oy = 3
        w.attackList = {
            {
                attackType = "swing",
                flavor = "smallSlash",
                frameSpeeds = {0.13, 0.14, 0.17},
                startDashSpeed = 0, -- default is 0, this line isn't necessary
                maxDashSpeed = 3000, -- max speed from tween
                tweenTime = 0.13,
                easingType = "quadin", -- default is quadin
                mag = 120,
                selfKnockback = 12,
                snapDist = 40,
                snapMult = 3 -- mult for the boost (or dash)
            },
            {
                attackType = "swing",
                flavor = "smallSlash",
                frameSpeeds = {0.13, 0.14, 0.17},
                startDashSpeed = 0, -- default is 0, this line isn't necessary
                maxDashSpeed = 3000, -- max speed from tween
                tweenTime = 0.13,
                easingType = "quadin", -- default is quadin
                mag = 120,
                selfKnockback = 12,
                snapDist = 40,
                snapMult = 3 -- mult for the boost (or dash)
            },
            {
                attackType = "stab",
                flavor = "smallStab",
                stabDist = 7,
                frameSpeeds = {0.28, 0.22, 0.12},
                startDashSpeed = 0, -- default is 0, this line isn't necessary
                maxDashSpeed = 1500, -- max speed from tween
                tweenTime = 0.28,
                mag = 250,
                selfKnockback = 20,
                snapDist = 52,
                snapMult = 3 -- mult for the boost (or dash)
            }
        }
    end

    if w.id == "greatsword" then
        w.name = "Greatsword"
        w.armor = 2
        w.power = 2
        w.carryType = "shoulder"
        w.ox = 4
        w.oy = 4.5
        w.restingRot = math.pi/2
        w.restingOffY = -21
        w.throwHitboxOffset = 19
        w.attackList = {
            {
                attackType = "heavySwing",
                flavor = "bigSlash",
                frameSpeeds = {0.44, 0.22, 0.2},
                maxDashSpeed = 400, -- REQUIRES tweenTime as well
                tweenTime = 0.46,
                mag = 200,
                selfKnockback = 22,
                snapDist = 64,
                snapMult = 5, -- mult for the boost (or dash)
                sound = "bigSlash",
                soundPitch = 1.3,
                soundVolume = 0.6,
                soundPitchRandom = 0.05,
            },
            {
                attackType = "stab",
                flavor = "bigStab",
                power = 2,
                stabDist = 7,
                frameSpeeds = {0.3, 0.32, 0.18},
                maxDashSpeed = 1000, -- max speed from tween
                tweenTime = 0.3,
                mag = 250,
                selfKnockback = 115,
                sound = "bigStab",
                soundPitch = 1.3,
                soundVolume = 0.8,
                soundPitchRandom = 0.05,
            }
        }
        w.chargeAttack = {
            attackType = "stab",
            flavor = "bigStab",
            power = 2,
            frameSpeeds = {0.4, 0.3, 0.16},
            maxDashSpeed = 2200, -- max speed from tween
            tweenTime = 0.4,
            mag = 320,
            selfKnockback = 100,
            sound = "bigStab",
            soundPitch = 1,
            soundVolume = 0.75,
            soundPitchRandom = 0.05,
        }
    end

    if w.id == "greataxe" then
        w.name = "Greataxe"
        w.armor = 2
        w.carryType = "shoulder"
        w.power = 2
        w.ox = 5
        w.oy = 4.5
        w.restingRot = getRadFromVector(vector(0.15, 1))
        w.restingOffY = -21
        w.throwHitboxOffset = 19
        w.attackList = {
            {
                attackType = "heavySwing",
                flavor = "bigSlash",
                power = 2,
                frameSpeeds = {0.55, 0.3, 0.21},
                maxDashSpeed = 1000, -- REQUIRES tweenTime as well
                tweenTime = 0.85,
                mag = 250,
                selfKnockback = 80,
                snapDist = 64,
                snapMult = 5, -- mult for the boost (or dash)
                sound = "bigSlash",
                soundPitch = 1.3,
                soundVolume = 0.6,
                soundPitchRandom = 0.05,
            }
        }
        w.chargeAttack = {
            attackType = "sequence",
            sequenceList = {
                {
                    attackType = "heavySwing",
                    flavor = "bigSlash",
                    power = 2,
                    frameSpeeds = {0.55, 0.2, 0.06},
                    maxDashSpeed = 1000, -- REQUIRES tweenTime as well
                    tweenTime = 0.85,
                    mag = 250,
                    selfKnockback = 80,
                    snapDist = 64,
                    snapMult = 5, -- mult for the boost (or dash)
                    sound = "bigSlash",
                    soundPitch = 1.3,
                    soundVolume = 0.6,
                    soundPitchRandom = 0.05,
                },
                {
                    attackType = "heavySwing",
                    flavor = "bigSlash",
                    power = 2,
                    frameSpeeds = {0.15, 0.3, 0.21},
                    maxDashSpeed = 1200, -- REQUIRES tweenTime as well
                    tweenTime = 0.15,
                    mag = 250,
                    selfKnockback = 80,
                    snapDist = 64,
                    snapMult = 5, -- mult for the boost (or dash)
                    sound = "bigSlash",
                    soundPitch = 1.3,
                    soundVolume = 0.6,
                    soundPitchRandom = 0.05,
                },
            }
        }
    end

    if w.id == "glassAxe" then
        w.name = "Glass Axe"
        w.carryType = "shoulder"
        w.armor = 1
        w.ox = 4
        w.oy = 8.5
        w.restingRot = math.pi/-2
        w.restingOffY = -1.5
        w.throwHitboxOffset = 19
        w.attackList = {
            {
                attackType = "heavySwing",
                flavor = "bigSlash", -- used for hitbox
                effectName = "sliceBigGreen",
                power = 2,
                frameSpeeds = {0.4, 0.26, 0.2},
                maxDashSpeed = 300, -- REQUIRES tweenTime as well
                tweenTime = 0.4,
                mag = 250,
                selfKnockback = 80,
                snapDist = 64,
                snapMult = 5, -- mult for the boost (or dash)
                sound = "bigSlash",
                soundPitch = 1.3,
                soundVolume = 0.6,
                soundPitchRandom = 0.05,
            }
        }
        w.chargeAttack = {
            attackType = "heavySwing",
            flavor = "bigSlash", -- used for hitbox
            effectName = "sliceBigGreen",
            power = 2,
            frameSpeeds = {0.26, 0.26, 0.2},
            maxDashSpeed = 300, -- REQUIRES tweenTime as well
            tweenTime = 0.4,
            mag = 250,
            selfKnockback = 80,
            snapDist = 64,
            snapMult = 5, -- mult for the boost (or dash)
            sound = "bigSlash",
            soundPitch = 1.3,
            soundVolume = 0.6,
            soundPitchRandom = 0.05,

            addedProj = "projSlashGreen",
            addedProjArgs = {spawnDist=14}
        }
    end

    if w.id == "spear" then
        w.name = "Spear"
        w.armor = 1
        w.carryType = "staff"
        w.ox = 6
        w.oy = 3.5
        w.upOffX = -3
        w.restingRot = math.pi/-2
        w.restingOffY = -5
        w.shadowY = -1
        w.focalLength = 16 -- distance from the handle to the point where steam appears
        w.attackList = {
            {
                attackType = "stab",
                flavor = "smallStab",
                frameSpeeds = {0.18, 0.22, 0.14},
                maxDashSpeed = 400, -- max speed from tween
                tweenTime = 0.18,
                mag = 120,
                selfKnockback = 30,
                snapDist = 64,
                snapMult = 5, -- mult for the boost (or dash)
                sound = "stab",
                soundPitch = 1,
                soundVolume = 0.5,
                soundPitchRandom = 0.05,
            },
            {
                attackType = "stab",
                flavor = "smallStab",
                frameSpeeds = {0.18, 0.22, 0.14},
                maxDashSpeed = 400, -- max speed from tween
                tweenTime = 0.18,
                mag = 120,
                selfKnockback = 30,
                snapDist = 64,
                snapMult = 5, -- mult for the boost (or dash)
                sound = "stab",
                soundPitch = 1,
                soundVolume = 0.5,
                soundPitchRandom = 0.05
            },
            {
                attackType = "stab",
                flavor = "bigStab",
                power = 2,
                frameSpeeds = {0.4, 0.3, 0.16},
                maxDashSpeed = 700, -- max speed from tween
                tweenTime = 0.4,
                mag = 320,
                selfKnockback = 100,
                sound = "bigStab",
                soundPitch = 1,
                soundVolume = 0.75,
                soundPitchRandom = 0.05,
            }
        }
        w.chargeAttack = {
            attackType = "stab",
            flavor = "bigStab",
            power = 2,
            frameSpeeds = {0.4, 0.3, 0.16},
            maxDashSpeed = 2200, -- max speed from tween
            tweenTime = 0.4,
            mag = 320,
            selfKnockback = 100,
            sound = "bigStab",
            soundPitch = 1,
            soundVolume = 0.75,
            soundPitchRandom = 0.05,
        }
        --[[w.chargeAttack = {
            attackType = "sequence",
            sequenceList = {
                {
                    attackType = "stab",
                    flavor = "smallStab",
                    frameSpeeds = {0.08, 0.14, 0.08},
                    maxDashSpeed = 1000, -- max speed from tween
                    tweenTime = 0.1,
                    mag = 120,
                    selfKnockback = 30,
                    snapDist = 64,
                    snapMult = 5, -- mult for the boost (or dash)
                    sound = "stab",
                    soundPitch = 1,
                    soundVolume = 0.5,
                    soundPitchRandom = 0.05,
                },
                {
                    attackType = "stab",
                    flavor = "smallStab",
                    frameSpeeds = {0.08, 0.14, 0.08},
                    maxDashSpeed = 1000, -- max speed from tween
                    tweenTime = 0.1,
                    mag = 120,
                    selfKnockback = 30,
                    snapDist = 64,
                    snapMult = 5, -- mult for the boost (or dash)
                    sound = "stab",
                    soundPitch = 1,
                    soundVolume = 0.5,
                    soundPitchRandom = 0.05,
                },
                {
                    attackType = "stab",
                    flavor = "smallStab",
                    frameSpeeds = {0.08, 0.22, 0.14},
                    maxDashSpeed = 1000, -- max speed from tween
                    tweenTime = 0.1,
                    mag = 120,
                    selfKnockback = 30,
                    snapDist = 64,
                    snapMult = 5, -- mult for the boost (or dash)
                    sound = "stab",
                    soundPitch = 1,
                    soundVolume = 0.5,
                    soundPitchRandom = 0.05,
                }
            }
        }]]
    end

    if w.id == "torch" then
        w.name = "Torch"
        --w.ammo = 6
        --w.ammoSpr = sprites.hud.ammo.fire
        w.charges = 1
        w.chargeRate = 2.5 -- takes 2.5 seconds to recharge a charge
        w.carryType = "wand"
        w.onFire = true
        w.fireDist = 6 -- distance from handle to where flame is
        w.ox = 3
        w.oy = 2.5
        w.restingRot = math.pi/-2
        w.restingOffY = -1
        w.shadowY = 0
        w.lightRad = 68
        w.smOffset = 10 -- offset for npc sprite manager
        w.attackList = {
            {
                attackType = "effect",
                flavor = "flameAttack",
                chargeCost = 1,
                needsFire = true,
                spawnDist = 16,
                stabDist = 7.5,
                frameSpeeds = {0.22, 0.16, 0.1},
                maxDashSpeed = 500, -- max speed from tween
                tweenTime = 0.22,
                mag = 250,
                sound = "flame",
                soundVolume = 0.8,
                soundPitchRandom = 0.05,
            }
        }
        w.chargelessAttack = {
            attackType = "stab",
            flavor = "noStab",
            stabDist = 6.5,
            frameSpeeds = {0.22, 0.16, 0.1},
            maxDashSpeed = 500, -- max speed from tween
            tweenTime = 0.22,
            mag = 250,
            selfKnockback = 20,
            burn = true,
        }
        w.chargeAttack = {
            attackType = "shoot",
            flavor = "fireballSm",
            sound = sounds.attacks.zap,
            soundVolume = 0.5,
            soundPitchRandom = 0.05,
            spawnDist = 8,
            stabDist = 7,
            frameSpeeds = {0.22, 0.16, 0.1},
            maxDashSpeed = 500, -- max speed from tween
            tweenTime = 0.22,
            mag = 250
        }
        w.npcStats = { -- this table's stats will be copied over into its parent (the weapon) if it's held by an npc
            shadowVisible = false,
            restingRot = math.pi/-2.5,
            heldOffX = 4.25,
            heldOffY = -4.5
        }
    end

    if w.id == "battery" then
        w.name = "Battery"
        w.ammo = 25
        w.ammoSpr = sprites.hud.ammo.lightning
        w.carryType = "simple"
        w.shadowY = 0
        w.electrified = true
        w.electricOffY = -4
        w.lightRad = 40
        w.effectOnDeath = "elecExplosion"
        w.throwHitboxOffset = 1
        w.attackList = {
            {
                attackType = "shoot",
                flavor = "shockBall",
                sound = sounds.attacks.zap,
                soundVolume = 0.5,
                soundPitchRandom = 0.05,
                projSpeed = 220,
                spawnDist = 8,
                stabDist = 7,
                frameSpeeds = {0.22, 0.16, 0.1},
                maxDashSpeed = 500, -- max speed from tween
                tweenTime = 0.22,
                mag = 250
            }
        }
    end

    if w.id == "cherryBomb" then
        w.name = "Cherry Bomb"
        w.carryType = "simple"
        w.shadowY = 0
        w.effectOnDeath = "explosion"
        w.ox = 4.5
        w.oy = 8
        w.shadowY = 1
        w.throwHitboxOffset = 1
    end

    if w.id == "boomerang" then
        w.name = "Boomerang"
        w.carryType = "boomerang"
        w.ox = 8
        w.oy = 7
        w.restingRot = getRotationFromVector(vector(1, 1))
        w.restingOffY = -3
        w.throwShadowSpr = sprites.effects.shadows.small
        w.throwShadowLocked = true
        w.throwHitboxOffset = 1
        w.shadowY = -1
        w.spinningThrow = true
        w.spinningSpeed = 30
        w.elecImmune = true
        w.shortThrowMaxSpeed = 300
        w.shortThrowSpeed = w.shortThrowMaxSpeed
        w.attackList = {
            {
                attackType = "shortThrow",
                flavor = "boomerang",
                frameSpeeds = {0.28, 0.22, 0.12},
                maxDashSpeed = 400, -- max speed from tween
                tweenTime = 0.28,
                mag = 250
            }
        }
        w.chargeAttack = {
            attackType = "shortThrow",
            flavor = "boomerang",
            frameSpeeds = {0.28, 0.22, 0.12},
            maxDashSpeed = 900, -- max speed from tween
            tweenTime = 0.28,
            mag = 250,
            throwMult = 1.4
        }
    end

    --[[if w.id == "lightningRod" then
        w.name = "Lightning Rod"
        w.armor = 1
        w.ammo = 10
        w.ammoSpr = sprites.hud.ammo.lightning
        w.carryType = "staff"
        w.ox = 6
        w.oy = 3.5
        w.upOffX = -3
        w.restingRot = math.pi/-2
        w.restingOffY = -5
        w.shadowY = -1
        w.width = 23
        w.height = 7
        w.frameSpeeds = 0.12
        w.electrified = true
        w.throwHitboxOffset = 8
        w.lightRad = 56
        w.attackList = {
            {
                attackType = "cast",
                flavor = "lightning", -- sound handled in playerAttack
                soundVolume = 0.4,
                soundPitchRandom = 0.1,
                frameSpeeds = {0.2, 0.3, 0.48, 0.2},
            }
        }
    end]]

    --[[if w.id == "lightningRod" then
        w.name = "Lightning Rod"
        w.armor = 1
        w.charges = 2
        w.chargeRate = 1.5 -- takes 1.5 seconds to recharge a charge
        w.carryType = "staff"
        w.ox = 6
        w.oy = 3.5
        w.upOffX = -3
        w.restingRot = math.pi/-2
        w.restingOffY = -5
        w.shadowY = -1
        w.width = 23
        w.height = 7
        w.frameSpeeds = 0.12
        w.electrified = true
        w.lightRad = 56
        w.lightColor = "green"
        
        w.chargelessAttack = {
            attackType = "stab",
            flavor = "noStab",
            stabDist = 6.5,
            frameSpeeds = {0.22, 0.16, 0.1},
            maxDashSpeed = 500, -- max speed from tween
            tweenTime = 0.22,
            mag = 250,
            selfKnockback = 20,
        }

        w.attackListChargeMap = {
            {
                attackType = "stab",
                flavor = "effect_zap",
                spawnDist = 20,
                sound = "electricCast",
                soundVolume = 0.25,
                soundPitchRandom = 0.1,
                frameSpeeds = {0.29, 0.28, 0.16},
                mag = 80, -- enemy knockback
                maxDashSpeed = 300, -- max speed from tween
                tweenTime = 0.29,
                selfKnockback = 40,
                chargeCost = 2,
            },
            {
                attackType = "stab",
                flavor = "effect_elecExplosionRod",
                spawnDist = 24,
                sound = "electricCast",
                soundVolume = 0.25,
                soundPitchRandom = 0.1,
                frameSpeeds = {0.29, 0.28, 0.16},
                mag = 140, -- enemy knockback
                maxDashSpeed = 300, -- max speed from tween
                tweenTime = 0.29,
                selfKnockback = 80,
                chargeCost = 2,
            }
        }
    end]]

    if w.id == "lightningRod" then
        w.name = "Lightning Rod"
        w.armor = 1
        w.charges = 1
        w.chargeRate = 1.5 -- takes 1.5 seconds to recharge a charge
        w.carryType = "staff"
        w.ox = 6
        w.oy = 3.5
        w.upOffX = -3
        w.restingRot = math.pi/-2
        w.restingOffY = -5
        w.shadowY = -1
        w.width = 23
        w.height = 7
        w.frameSpeeds = 0.12
        w.electrified = true
        w.lightRad = 56
        w.lightColor = "green"
        
        w.attackList = {
            {
                attackType = "stab",
                flavor = "effect_elecExplosionRod",
                spawnDist = 24,
                sound = "electricCast",
                soundVolume = 0.25,
                soundPitchRandom = 0.1,
                frameSpeeds = {0.29, 0.28, 0.16},
                mag = 140, -- enemy knockback
                maxDashSpeed = 300, -- max speed from tween
                tweenTime = 0.29,
                selfKnockback = 80,
                chargeCost = 2,
            }
        }
        w.chargelessAttack = {
            attackType = "stab",
            flavor = "effect_zap",
            spawnDist = 20,
            sound = "electricCast",
            soundVolume = 0.25,
            soundPitchRandom = 0.1,
            frameSpeeds = {0.29, 0.28, 0.16},
            mag = 80, -- enemy knockback
            maxDashSpeed = 300, -- max speed from tween
            tweenTime = 0.29,
            selfKnockback = 40,
            chargeCost = 2,
        }
    end

    if w.id == "leaf" then
        w.name = "Leaf"
        w.carryType = "wand"
        w.ox = 2.5
        w.oy = 4.5
        w.restingRot = math.pi/-2
        w.restingOffY = -1
        w.shadowY = 0
        w.attackList = {
            {
                attackType = "swing",
                flavor = "smallSlash",
                fake = true,
                frameSpeeds = {0.18, 0.23, 0.2},
                boost = 4, -- multiplier based on the sword's boost amount
                mag = 80,
                selfKnockback = 20,
                snapDist = 40,
                snapMult = 3, -- mult for the boost (or dash)
                sound = "slash",
                soundPitch = 1.3,
                soundVolume = 0.4,
                soundPitchRandom = 0.1,

                addedProj = "projSlashSm",
                addedProjArgs = {spawnDist=12}
            }
        }
        w.chargeAttack = {
            attackType = "swing",
            flavor = "smallSlash",
            fake = true,
            frameSpeeds = {0.25, 0.3, 0.22},
            boost = 12, -- multiplier based on the sword's boost amount
            mag = 120,
            selfKnockback = 20,
            snapDist = 40,
            snapMult = 3, -- mult for the boost (or dash)
            sound = "slash",
            soundPitch = 1.3,
            soundVolume = 0.4,
            soundPitchRandom = 0.1,

            addedProj = "projSlashSm",
            addedProjArgs = {
                spawnDist=12,
                shotgun = 3,
                shotgunAngle = math.pi/8,
                special = true
            }
        }
        --[[w.chargeAttack = {
            attackType = "swing",
            flavor = "smallSlash",
            fake = true,
            frameSpeeds = {0.18, 0.23, 0.2},
            boost = 4, -- multiplier based on the sword's boost amount
            mag = 80,
            selfKnockback = 20,
            snapDist = 40,
            snapMult = 3, -- mult for the boost (or dash)
            sound = "slash",
            soundPitch = 1.3,
            soundVolume = 0.4,
            soundPitchRandom = 0.1,

            addedProj = "electricDisc",
            addedProjArgs = {spawnDist=12}
        }]]
    end

    if w.id == "fan" then
        w.name = "Fan"
        w.carryType = "wand"
        w.ox = 2.5
        w.oy = 5.5
        w.restingRot = math.pi/-2
        w.restingOffY = -1
        w.shadowY = 0
        w.attackList = {
            {
                attackType = "cast",
                flavor = "elecBomb",
                sound = "electricCast",
                soundVolume = 1,
                soundPitchRandom = 0.1,
                frameSpeeds = {0.2, 0.3, 0.48, 0.2}
            }
        }
    end

    if not w.sprite then w.sprite = sprites.weapons[w.id] end
    if not w.hotSprite then w.hotSprite = sprites.weapons[w.id .. 'H'] end
    if not w.sprite and w.carryType == "simple" then
        w.sprite = sprites.weapons.simple[w.id]
    end

    local xtraArmor = misc:getAssist("weaponArmor")
    if xtraArmor ~= 0 then
        if not w.armor then w.armor = 0 end
        w.armor = w.armor + xtraArmor
        if w.armor < 0 then w.armor = 0 end
    end

    return w
end