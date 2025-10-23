function getBossStats(en)

    if en.class == "eyeris" then
        en.boss = true
        en.searchDist = 64 -- distance from player to start waking up
        en.attackDist = 512
        en.postAggroWaitTimer = 0.5 -- one-time event after state 19, small gap before the very first attack
        en.animOrder = { "idle,walk", "attack", "attack2", "sleep", "wake" , "dying" }
        en.frameCounts = {4,13,12,2,11,2}
        en.frameSpeeds = {0.14, 0.12, 0.14, 0.6, {0.3, 0.18, 0.14, 0.14, 0.14, 0.14, 0.14, 0.14, 0.14, 0.35, 0.16}, 0.16}
        en.health = 46
        en.width = 48
        en.height = 48
        en.physWidth = 36
        en.physHeight = 22
        en.physCorner = 8
        en.offY = -10
        en.walkSpeed = 100
        en.pursueSpeed = 180
        en.shadowY = 11
        en.shadowOffX = 2
        en.shadowSpr = "roundXL"
        en.float = true
        en.lastMoveDir = vector(-1,1) -- so the enemy can face the player when they spawn
        en.projSpawnDist = 20
        en.projOffY = -10
        en.topLayer = true -- pierces darkness
        en.lightFactor = 2

        en.waitObj = {
            dist = 106,
            wakeup = "eyeris", -- transitions into idle by default
            startDelay = 1,
            aggroPause = 0.5,
            cutsceneType = "lookAtPlayer",
            skipBars = true,
            cutsceneDur = 6,
            newMusic = bgm.frightening -- will end the current music and transition to this new one
        }

        en.myAttacks = {
            tackle = {
                attackType = "tackle",
                flavor = "lean", -- rotates back for windup, forward for tackle
                animName = "idle",
                boost = 400,
                windupBoost = 120,
                bufferTime = 1, -- minimum time between each attack
                finishTime = 0.8,
                windupDur = 0.4,
                windupSound = sounds.windup.spookyRise,
                sound = sounds.attacks.spooky2,
            },
            hyperBeam = {
                attackType = "effect",
                flavor = "hyperBeam",
                animName = "attack",
                boost = -50,
                windupBoost = 300,
                bufferTime = 1.5, -- minimum time between each attack
                attackStartFrame = 12,
                trackingSpeed = 250,
                windupTrackingY = true, -- during windup state, will move towards player's Y position
                -- also, the windup boost will be horizontal
            },
            poison = {
                attackType = "effect",
                flavor = "poisonGreen",
                animName = "attack2",
                bufferTime = 0.5, -- minimum time between each attack
                attackStartFrame = 10,
                -- in this case, spawning the effect below self
                shdir = vector(0,1), -- direction of the effect (in this case, straight down)
                hitOff = -2, -- number of pixels in front of the enemy that the effect spawns
                windupSound = sounds.windup.gross,
            },
            instaSummon = {
                attackType = "instaSummon",
                animName = "idle",
                flavor = "eyeRed",
                dist = 128, -- distance from player to spawn
            }
        }

        en.attMap = {}
        en.attMap[1] = {"tackle", "tackle", "hyperBeam", "instaSummon", "tackle", "tackle", "hyperBeam", "instaSummon", "_next"}
        en.attMap[2] = {
            "poison",
            {id="tackle", skip=0.5}, {id="tackle", skip=0.5}, {id="tackle", skip=0.5},
            {id="hyperBeam", skip=0.5}, {id="hyperBeam", skip=0.5},
            "instaSummon",
            {id="tackle", skip=0.5}, {id="tackle", skip=0.5}, {id="tackle", skip=0.5},
        }

        en.rewardScene = { id="quickLook", args={ eyerisReward=true, lookDur=2, pauseDur=3 } }
    end

    if en.class == "eyerisOld" then
        en.boss = true
        en.blockades = true
        en.idleType = "wander"
        en.searchDist = 64 -- distance from player to start waking up
        en.attackDist = 256
        en.postAggroWaitTimer = 0.5 -- one-time event after state 19, small gap before the very first attack
        en.animOrder = { "idle,walk", "attack", "attack2", "sleep", "wake" , "dying" }
        en.frameCounts = {4,13,12,2,11,2}
        en.frameSpeeds = {0.14, 0.12, 0.14, 0.6, {0.3, 0.18, 0.14, 0.14, 0.14, 0.14, 0.14, 0.14, 0.14, 0.35, 0.16}, 0.16}
        en.health = 44
        en.width = 48
        en.height = 48
        en.physWidth = 36
        en.physHeight = 22
        en.physCorner = 8
        en.offY = -10
        en.walkSpeed = 100
        en.pursueSpeed = 180
        en.shadowY = 11
        en.shadowOffX = 2
        en.shadowSpr = "roundXL"
        en.float = true
        en.lastMoveDir = vector(-1,1) -- so the enemy can face the player when they spawn
        en.projSpawnDist = 20
        en.projOffY = -10
        en.topLayer = true -- pierces darkness
        en.wakeAggroPause = 0.2 -- time after waking before immediately attacking
        en.wakeSceneTime = 2 -- seconds of looking at the enemy waking up before going back to player and starting boss music (if relevant)
        en.wakeMusic = bgm.frightening
        en.wakeTriggerSound = sounds.enemies.roarCrushed
        en.wakeFadeMusicTime = 1
        en.drop = ""
        en.lightFactor = 2

        en.waitObj = {
            dist = 106,
            wakeup = "eyeris", -- transitions into idle by default
            --playerWatch = 64, -- y distance from self to where the player walks to (directly below, player looks upwards)
            startDelay = 1,
            aggroPause = 0.5,
            cutsceneType = "lookAtPlayer",
            skipBars = true,
            cutsceneDur = 6,
            newMusic = bgm.frightening -- will end the current music and transition to this new one
        }

        en.attackList = { -- simple boss, only 1 phase
            {
                attackType = "tackle",
                flavor = "basic", -- basic tackle
                animName = "idle",
                boost = 400,
                windupBoost = 120,
                bufferTime = 1, -- minimum time between each attack
                finishTime = 0.8,
                windupDur = 0.4
            },
            {
                attackType = "tackle",
                flavor = "basic", -- basic tackle
                animName = "idle",
                boost = 400,
                windupBoost = 120,
                bufferTime = 1.5, -- minimum time between each attack
                finishTime = 0.8,
                windupDur = 0.4
            },
            {
                attackType = "effect",
                flavor = "hyperBeam",
                animName = "attack",
                boost = -50,
                windupBoost = 300,
                bufferTime = 1.5, -- minimum time between each attack
                attackStartFrame = 12,
                trackingSpeed = 250,
                windupTrackingY = true, -- during windup state, will move towards player's Y position
                -- also, the windup boost will be horizontal
            },
            {
                attackType = "summon",
                flavor = "eyeRed",
                animName = "attack2",
                bufferTime = 1.5, -- minimum time between each attack
                attackStartFrame = 9
            }
        }
    end

    if en.class == "cloudBoss" then
        en.boss = true
        en.idleType = "wander"
        en.attackDist = 256
        en.postAggroWaitTimer = 1 -- one-time event after state 19, small gap before the very first attack
        en.animOrder = { "uncharged", "idle,walk", "attackCircle", "attackShoot", "windupFly", "fly", "skid", "sleep", "wake", "dying", "escape" }
        en.frameCounts = {9,9,10,10,9,9,4,9,9,2,3}
        en.frameSpeeds = {0.09, 0.09, 0.09, 0.09, 0.09, 0.08, 0.09, 0.09, 0.09, 0.15, 0.1}
        en.health = 48
        en.width = 64
        en.height = 64
        en.physWidth = 46
        en.physHeight = 26
        en.physCorner = 12
        en.offY = -12
        en.walkSpeed = 200
        en.pursueSpeed = 200
        en.shadowY = 13
        en.shadowSpr = "roundXL"
        en.float = true
        en.lastMoveDir = vector(-1,1) -- so the enemy can face the player when they spawn
        en.projSpawnDist = 20
        en.projOffY = 3
        en.electrified = true
        en.drop = ""
        en.deathCutsceneDur = 8
        en.lightRad = 80
        en.lightColor = "green"
        en.colorImmune = true

        en.waitObj = {
            dist = 120,
            wakeup = "lightning",
            cutsceneType = "lookAtMe",
            --wakeAnim = "windup", -- transitions into idle by default
            playerWatch = 64, -- y distance from self to where the player walks to (directly below, player looks upwards)
            startDelay = 3,
            aggroPause = 4,
            cutsceneDur = 10,
            lookOffY = -14,
        }

        en.myAttacks = {
            circleBarrage = {
                attackType = "circle",
                flavor = "shockBall",
                animName = "attackShoot",
                spiralVal = math.pi*1.55,
                spiralTime = 3,
                bufferTime = 1.5, -- minimum time between each attack
                bufferRandom = 0.5, -- random time added to buffer
                finishTime = 0.5,
                windupDur = 1,
                barragePause = 0.4,
                barrageMax = 5,
                projSpeed = 180,
                circleProjCount = 4,
                sound = sounds.attacks.zap,
                windupSound = sounds.windup.chargeLargeElec,
            },
            circleBarrage2 = {
                attackType = "circle",
                flavor = "shockBall",
                animName = "attackShoot",
                spiralVal = math.pi*1.55,
                spiralTime = 3,
                bufferTime = 1.5, -- minimum time between each attack
                bufferRandom = 0.3, -- random time added to buffer
                finishTime = 0.5,
                windupDur = 1,
                barragePause = 0.35,
                barrageMax = 5,
                projSpeed = 180,
                circleProjCount = 6,
                sound = sounds.attacks.zap,
                windupSound = sounds.windup.chargeLargeElec,
            },
            shockCircle = {
                attackType = "circle",
                flavor = "shock",
                animName = "attackCircle",
                spiralVal = math.pi*1.55,
                spiralTime = 3,
                bufferTime = 1.5, -- minimum time between each attack
                bufferRandom = 0.3, -- random time added to buffer
                finishTime = 0.5,
                windupDur = 0.85,
                circleProjCount = 8,
                windupSound = sounds.windup.chargeMedElec,
                windupSoundPitchRand = 0.3,
            },
            multiTrackShot = {
                attackType = "shoot",
                flavor = "shockBall",
                animName = "attackShoot",
                bufferTime = 0.5, -- minimum time between each attack
                bufferRandom = 0.3, -- random time added to buffer
                finishTime = 0.5,
                windupDur = 0.85,
                barragePause = 0.25,
                barrageMax = 3,
                trackingVal = math.pi/400, -- how much it curves towards the player
                sound = sounds.attacks.zap,
                projSpeed = 160,
                boost = -35,
                windupSound = sounds.windup.chargeMedElec,
                windupSoundPitchRand = 0.3,
            },
            multiTrackShot2 = {
                attackType = "shoot",
                flavor = "shockBall",
                animName = "attackShoot",
                bufferTime = 0.5, -- minimum time between each attack
                bufferRandom = 0.3, -- random time added to buffer
                finishTime = 0.5,
                windupDur = 0.85,
                barragePause = 0.3,
                barrageMax = 5,
                trackingVal = math.pi/400, -- how much it curves towards the player
                sound = sounds.attacks.zap,
                projSpeed = 180,
                boost = -35,
                windupSound = sounds.windup.chargeMedElec,
                windupSoundPitchRand = 0.3,
            },
            flyAround = {
                attackType = "flyAround",
                flavor = "horizontalWrap",
                animName = "windupFly",
                attackStartFrame = 9,
                sound = sounds.attacks.zapDash,
                windupSound = sounds.windup.zapDashWindup,
                fly = {
                    speed = 450,
                    wrapCount = 4,
                    canInterrupt = true,
                    trackingVal = math.pi/400, -- how much it curves towards the player
                }
            },
            rotatingCircle = {
                attackType = "circle",
                flavor = "shockBall",
                animName = "attackShoot",
                spiralVal = math.pi*1.55,
                spiralTime = 3,
                bufferTime = 1.5, -- minimum time between each attack
                bufferRandom = 0.3, -- random time added to buffer
                finishTime = 0.5,
                windupDur = 0.85,
                projSpeed = 180,
                circleProjCount = 12,
                sound = sounds.attacks.zap,
                windupSound = sounds.windup.chargeMedElec,
                windupSoundPitchRand = 0.3,
            },
            lineLightning = {
                attackType = "shoot",
                flavor = "line",
                animName = "attackShoot",
                lineSpawn = "lightning",
                lineCounterMax = 8,
                bufferTime = 1.5, -- minimum time between each attack
                bufferRandom = 0.3, -- random time added to buffer
                finishTime = 0.5,
                windupDur = 0.7,
                shotgun = 3,
                trackingVal = math.pi/400, -- how much it curves towards the player
                sound = sounds.spells.lightning,
                windupSound = sounds.windup.chargeMedElec,
                windupSoundPitchRand = 0.3,
            },
        }

        en.attMap = {}
        en.attMap[1] = {"circleBarrage", "shockCircle", "multiTrackShot", "flyAround", "_next"}
        en.attMap[2] = {
            {id="rotatingCircle", skip=0.33},
            {id="circleBarrage", skip=0.33},
            {id="shockCircle", skip=0.33},
            {id="multiTrackShot", skip=0.33},
            {id="flyAround", skip=0.66}
            -- cutscene event for phase change
        }
        en.attMap[3] = {"rotatingCircle", "shockCircle", "multiTrackShot2", "flyAround", "_next"}
        en.attMap[4] = {
            {id="circleBarrage2", skip=0.33},
            {id="shockCircle", skip=0.33},
            {id="multiTrackShot2", skip=0.33},
            {id="rotatingCircle", skip=0.33},
            {id="flyAround", skip=0.66}
        }

        en.cutscenes = { -- right now, assumes that all cutscenes will happen when next attack is supposed to execute
            {
                id = "riseThenFall",
                height = -256,
                riseTime = 2,
                pauseTime = 6,
                fallTime = 2,
                triggerType = "healthPercentage",
                triggerVal = 0.5,
                startEvents = { "alarmSentries" }, -- all events that happen right when the cutscene starts
                --finishEvents = { "phaseChange" } -- all events that happen as soon as the cutscene is finished
                phaseChange = 3 -- manually set phase to 3 after this cutscene
            }
        }
    end

    if en.class == "daitengu" then
        en.boss = true
        en.attackDist = 96
        en.animOrder = { "idle,walk", "sleep,dying", "attack", "swipe"}
        en.frameCounts = {4, 4, 9, 8}
        en.frameSpeeds = {{0.8, 0.12, 0.55, 0.12}, {0.8, 0.12, 0.55, 0.12}, {0.1, 0.2, 0.08, 0.04, 0.12, 0.1, 0.1, 0.1, 0.16}, {0.1, 0.1, 0.1, 0.12, 0.3, 0.05, 0.3, 0.12}}
        en.health = 32
        en.width = 50
        en.height = 64
        en.physWidth = 42
        en.physHeight = 18
        en.physCorner = 7
        en.offY = -21
        en.walkSpeed = 100
        en.pursueSpeed = 150
        en.shadowY = 9
        en.shadowOffX = 0.5
        en.shadowSpr = "roundXL"
        en.float = true
        en.lastMoveDir = vector(1,1) -- so the enemy can face the player when they spawn
        en.projOffY = 4
        en.postAggroWaitTimer = 0.5
        en.drop = "weapon"
        en.dropId = "fan"
        en.intro = { -- this is a 'cutscene' object
            id = "descend",
            height = -260,
            fallTime = 6.5,
            postWait = 2,
            startEvents = { {"soundEffect", {sound=sounds.environment.thunder, vol=1, pitch=0.9}} }, -- all events that happen right when the cutscene starts
            finishEvents = { } -- all events that happen as soon as the cutscene is finished
        }

        en.myAttacks = {
            singleLob = {
                attackType = "shoot",
                flavor = "lob_enemyFanElecBomb",
                animName = "attack",
                attackStartFrame = 5,
                bufferTime = 0.1, -- minimum time between each attack
                bufferRandom = 0.1, -- random time added to buffer
                sound = sounds.effects.electricCast,
                soundVolume = 0.4,
                skip = { tooFar = 128 },
            },
            multiLob = {
                attackType = "shoot",
                flavor = "lob_enemyFanElecBomb",
                animName = "attack",
                attackStartFrame = 5,
                shotgun = 3,
                shotgunAngle = math.pi/8,
                bufferTime = 0.1, -- minimum time between each attack
                bufferRandom = 0.1, -- random time added to buffer
                sound = sounds.effects.electricCast,
                skip = { tooFar = 96 },
            },
            swipe = {
                attackType = "shoot",
                flavor = "shockBall",
                animName = "swipe",
                attackStartFrame = 6,
                shotgun = 3,
                shotgunAngle = math.pi/10,
                bufferTime = 0.75, -- minimum time between each attack
                bufferRandom = 0.5, -- random time added to buffer
                sound = sounds.attacks.zap,
                projOffY = -10,
                projSpeed = 160,
                boost = -50,
                attackDist = 196,
                skip = { tooClose = 64 },
            },
        }

        en.attMap = {}
        en.attMap[1] = {
            "singleLob",
            "singleLob",
            {id="singleLob", bufferTime=1.5, bufferRandom=0.5},
            "swipe",
            {id="swipe", skip=0.75},
        }
        en.attMap[2] = {
            "multiLob",
            "multiLob",
            {id="multiLob", bufferTime=1.5, bufferRandom=0.5},
            "swipe",
            {id="swipe", skip=0.75}
        }

        en.cutscenes = { -- right now, assumes that all cutscenes will happen when next attack is supposed to execute
            {
                id = "riseThenFall",
                descendEasingType = "sinein",
                height = -256,
                riseTime = 1,
                pauseTime = 0.1,
                fallTime = 1,
                triggerType = "healthPercentage",
                triggerVal = 0.5,
                startEvents = { {"soundEffect", sounds.spells.thunder} }, -- all events that happen right when the cutscene starts
                finishEvents = {
                    "phaseChange",
                    { "attack", {
                        attackType = "circle",
                        flavor = "line",
                        lineSpawn = "lightning",
                        lineCounterMax = 8,
                        circleProjCount = 8,
                        bufferTime = 0.5, -- minimum time between each attack
                        bufferRandom = 0.5, -- random time added to buffer
                        finishTime = 1,
                        projSpawnDist = 32,
                        sound = sounds.spells.lightning,
                        shake = 3,
                    } }
                } -- all events that happen as soon as the cutscene is finished
            }
        }
    end

    if en.class == "mom" then
        en.boss = true
        en.attackDist = 999

        en.hitKnockbackFactor = 1.75
        en.baseDamping = 8
        en.hitDamping = 20

        en.animOrder = { "idle,walk", "scream", "appear", "disappear", "attack", "summon"}
        en.frameCounts = {4, 7, 4, 8, 4, 7}
        en.frameSpeeds = {{0.16, 0.12, 0.4, 0.12}, 0.12, {0.18, 0.12, 0.11, 0.09}, {0.09, 0.09, 0.09, 0.09, 0.15, 0.11, 0.11, 0.11}, {0.4, 0.6, 0.12, 0.12}, {0.12, 0.12, 0.4, 0.1, 0.3, 0.12, 0.12}}

        en.eyeMap = {
            -- 'home' is the position of the eye relative to the boss's center point
            -- for example, homeX = 2, homeY = -3 means the eye is 2 pixels right and 3 pixels up from the center point of each frame.
            homeX = 7.5,
            homeY = -1.5,
            irisSpr = sprites.enemies.momIris,
            lookDist = 2, -- total number of pixels iris is offset towards whatever the enemy is looking at

            offset = { -- each row's frames' relative position to the home position
                { {0,0}, {0,2}, {0,4}, {0,2} }, -- idle
                { {0,0}, {-1,-7}, {-3, -10}, {-7, -12}, {-7, -12}, {-3, -10}, {-1, -7}}, -- scream
                { nil, {-3, 4}, {-2, 3}, {-1, 0} }, -- appear
                { {-1, -7}, {-3, -10}, {2, -2}, {3, 7}, nil, nil, nil, nil, nil}, -- disappear
                { {-1, -7}, {2, 8}, {2, 7}, {1, 2} }, -- attack
                { {0, 0}, {0, 2}, {0, 4}, {0, 2}, {1, 0}, {1, -1}, {1, 0} }, -- summon
                -- NOTE: any values above that have nil will NOT draw the eye
            }
        }

        en.health = 62
        en.width = 50
        en.height = 50
        en.physWidth = 28
        en.physHeight = 12
        en.physCorner = 4
        en.offY = -11
        en.walkSpeed = 0
        en.pursueSpeed = 0
        en.shadowY = 4
        en.shadowOffX = 0
        en.shadowSpr = "roundXL"
        en.postAggroWaitTimer = 0.5

        en.bossMusic = bgm.boss
        en.intro = { -- this is a 'cutscene' object
            id = "appear", -- uses the 'appear' animation to teleport in
            blockades = true,
            triggerDist = 64,
            postWait = 0.5,
            startEvents = { {"soundEffect", {sound=sounds.attacks.dig}} }, -- all events that happen right when the cutscene starts
            finishEvents = { "scream" --[[requires en.scream object]] }, -- all events that happen as soon as the cutscene is finished
            fullCutsceneDur = 1.25 -- this will trigger a 'stop and look' cutscene
        }

        en.scream = {
            sound = sounds.enemies.roarCrushed,
            dur = 2
        }

        local tackle = {
            attackType = "tackle",
            flavor = "basic", -- basic tackle
            superArmor = true, -- automatically applies poise
            boost = 560,
            bufferTime = 1.5, -- minimum time between each attack
            attackStartFrame = 2,
            sound = sounds.attacks.heavySlam,
            windupSound = sounds.attacks.bugRaise
        }

        en.attackList = {
            {
                attackType = "tackle",
                flavor = "basic", -- basic tackle
                superArmor = true, -- automatically applies poise
                boost = 560,
                bufferTime = 1.5, -- minimum time between each attack
                attackStartFrame = 2,
                sound = sounds.attacks.heavySlam,
                windupSound = sounds.attacks.bugRaise,
                totalTimes = 2
            },
            {
                attackType = "disappearAndAppear",
                hideTime = 3,
                bufferTime = 1, -- minimum time between each attack
                disappearSound = sounds.attacks.digDown,
                appearSound = sounds.attacks.dig,
                reappearAt = "randomPin",
                offscreenAttackMap = {
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = 'ddd',
                        startDelay = 1,
                        bufferTime = 0.35
                    },
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = 'b',
                        bufferTime = 0.35
                    },
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = 'bbb',
                        bufferTime = 0.35
                    },
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = 'd',
                    }
                }
            },
            {
                attackType = "tackle",
                flavor = "basic", -- basic tackle
                superArmor = true, -- automatically applies poise
                boost = 560,
                bufferTime = 1.5, -- minimum time between each attack
                attackStartFrame = 2,
                sound = sounds.attacks.heavySlam,
                windupSound = sounds.attacks.bugRaise,
                totalTimes = 3
            },
            {
                attackType = "disappearAndAppear",
                hideTime = 4.5,
                bufferTime = 1, -- minimum time between each attack
                disappearSound = sounds.attacks.digDown,
                appearSound = sounds.attacks.dig,
                reappearAt = "randomPin",
                offscreenAttackMap = {
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = {'a', 'b', 'c', 'd', 'e'},
                        startDelay = 1,
                        bufferTime = 1
                    },
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = {'aaa', 'bbb', 'ccc', 'ddd', 'eee'},
                        bufferTime = 1
                    },
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = {'aa', 'bb', 'cc', 'dd', 'ee'}
                    },
                }
            },
            {
                attackType = "tackle",
                flavor = "basic", -- basic tackle
                superArmor = true, -- automatically applies poise
                boost = 560,
                bufferTime = 1.5, -- minimum time between each attack
                attackStartFrame = 2,
                sound = sounds.attacks.heavySlam,
                windupSound = sounds.attacks.bugRaise,
                totalTimes = 2,
                randomTimes = 1
            },
            {
                attackType = "disappearAndAppear",
                hideTime = 5,
                bufferTime = 1, -- minimum time between each attack
                disappearSound = sounds.attacks.digDown,
                appearSound = sounds.attacks.dig,
                reappearAt = "randomPin",
                offscreenAttack = {
                    id = "effectAtPlayer",
                    flavor = "momFlowerGrow",
                    interval = 0.35,
                    startDelay = 1,
                    totalTimes = 10
                }
            },
            {
                attackType = "tackle",
                flavor = "basic", -- basic tackle
                superArmor = true, -- automatically applies poise
                boost = 560,
                bufferTime = 1.5, -- minimum time between each attack
                attackStartFrame = 2,
                sound = sounds.attacks.heavySlam,
                windupSound = sounds.attacks.bugRaise,
                totalTimes = 2,
                randomTimes = 1
            },
            {
                attackType = "disappearAndAppear",
                hideTime = 8,
                bufferTime = 1, -- minimum time between each attack
                disappearSound = sounds.attacks.digDown,
                appearSound = sounds.attacks.dig,
                reappearAt = "randomPin",
                offscreenAttackMap = {
                    {
                        id = "enemyAtPin",
                        flavor = "hornetSoldier", -- can be group, or just the id
                        pinId = 'aa',
                        startDelay = 0.1,
                        bufferTime = 0.75
                    },
                    {
                        id = "enemyAtPin",
                        flavor = "hornetSoldier", -- can be group, or just the id
                        pinId = 'ee',
                        startDelay = 0.1
                    }
                }
            },
            {
                attackType = "disappearAndAppear",
                hideTime = 3,
                bufferTime = 1, -- minimum time between each attack
                disappearSound = sounds.attacks.digDown,
                appearSound = sounds.attacks.dig,
                reappearAt = "randomPin",
                offscreenAttackMap = {
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = 'ddd',
                        startDelay = 1,
                        bufferTime = 0.35
                    },
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = 'b',
                        bufferTime = 0.35
                    },
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = 'bbb',
                        bufferTime = 0.35
                    },
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = 'd',
                    }
                }
            },
            {
                attackType = "tackle",
                flavor = "basic", -- basic tackle
                superArmor = true, -- automatically applies poise
                boost = 560,
                bufferTime = 1.5, -- minimum time between each attack
                attackStartFrame = 2,
                sound = sounds.attacks.heavySlam,
                windupSound = sounds.attacks.bugRaise,
                totalTimes = 2,
                randomTimes = 1
            },
            {
                attackType = "disappearAndAppear",
                hideTime = 4,
                bufferTime = 1, -- minimum time between each attack
                disappearSound = sounds.attacks.digDown,
                appearSound = sounds.attacks.dig,
                reappearAt = "randomPin",
                offscreenAttackMap = {
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = 'a',
                        startDelay = 1,
                        bufferTime = 0.2
                    },
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = 'b',
                        bufferTime = 0.2
                    },
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = 'c',
                        bufferTime = 0.2
                    },
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = 'd',
                        bufferTime = 0.2
                    },
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = 'e',
                        bufferTime = 0.2
                    },
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = 'ee',
                        startDelay = 1,
                        bufferTime = 0.2
                    },
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = 'dd',
                        bufferTime = 0.2
                    },
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = 'cc',
                        bufferTime = 0.2
                    },
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = 'bb',
                        bufferTime = 0.2
                    },
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = 'aa',
                        bufferTime = 0.25
                    },
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = 'aaa',
                        startDelay = 1,
                        bufferTime = 0.2
                    },
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = 'bbb',
                        bufferTime = 0.2
                    },
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = 'ccc',
                        bufferTime = 0.2
                    },
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = 'ddd',
                        bufferTime = 0.2
                    },
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = 'eee',
                        bufferTime = 0.2
                    }
                }
            },
            {
                attackType = "tackle",
                flavor = "basic", -- basic tackle
                superArmor = true, -- automatically applies poise
                boost = 560,
                bufferTime = 1.5, -- minimum time between each attack
                attackStartFrame = 2,
                sound = sounds.attacks.heavySlam,
                windupSound = sounds.attacks.bugRaise,
                totalTimes = 2,
                randomTimes = 1
            },
            {
                attackType = "disappearAndAppear",
                hideTime = 5,
                bufferTime = 1, -- minimum time between each attack
                disappearSound = sounds.attacks.digDown,
                appearSound = sounds.attacks.dig,
                reappearAt = "randomPin",
                offscreenAttackMap = {
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = {'e', 'ee', 'eee'},
                        startDelay = 1,
                        bufferTime = 0.75
                    },
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = {'d', 'dd', 'ddd'},
                        bufferTime = 0.75
                    },
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = {'c', 'cc', 'ccc'},
                        bufferTime = 0.75
                    },
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = {'b', 'bb', 'bbb'},
                        bufferTime = 0.75
                    },
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = {'a', 'aa', 'aaa'},
                    },
                }
            },
            {
                attackType = "disappearAndAppear",
                hideTime = 4,
                bufferTime = 1, -- minimum time between each attack
                disappearSound = sounds.attacks.digDown,
                appearSound = sounds.attacks.dig,
                reappearAt = "randomPin",
                offscreenAttackMap = {
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = {'a', 'b', 'c', 'd', 'e'},
                        startDelay = 1,
                        bufferTime = 0.75
                    },
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = {'aa', 'bb', 'cc', 'dd', 'ee'},
                        bufferTime = 0.75
                    },
                    {
                        id = "effectAtPin",
                        flavor = "momFlowerGrow", -- can be group, or just the id
                        pinId = {'aaa', 'bbb', 'ccc', 'ddd', 'eee'},
                    }
                }
            }
        }
    end

    return en
end