function getNpcMap(npcName, args)
    if not npcName then return nil end

    if args then
        if args.narration then return getNarrationMap(npcName, args) end
    end

    local mp = {}

    if npcName == "soldierEastGate" then
        mp[1] = { -- state 1 always indicates the player hasn't talked to this NPC
            message = { "confused", "confused2" },
            options = { yes=2, no=3 },
        }
        mp[2] = {
            message = { "yesNew" },
            startNext = 4
        }
        mp[3] = {
            message = { "noNew" },
            startNext = 4
        }
        mp[4] = {
            message = { "advice" },
            finish = -1
        }
    end

    if npcName == "soldierBarracks" then
        mp[1] = {
            message = { "armorAdvice", "armorAdvice2" },
            finish = -1
        }
    end

    if npcName == "shopkeeper" then
        mp[1] = {
            message = { "hello", "hello2" },
            finish = -1
        }
    end

    if npcName == "farmer" then
        mp[1] = {
            message = { "task" },
            finish = -1
        }
        mp[10] = {
            message = { "thanks", "reward", },
            giveItem = "dye_green",
            startNext = 11
        }
        mp[11] = {
            message = { "advice" },
            finish = -1
        }
        mp.relays = { -- constantly checking, only relays if the state is LESS than the target state
            {
                condition = "stateCheck",
                stateName = {"soil-camp", "soil-camp2", "soil-camp3"}, -- all three MUST be true
                state = 10,
            }
        }
    end

    --[[mp[3] = {
        -- start ui for new weapon
        -- ui = "blacksmith", -- start a newui instance
        finish = 2,
    }]]
    if npcName == "blacksmith" then
        mp[1] = { -- state 1 always indicates the player hasn't talked to this NPC
            message = { "warning", "warning2" },
            startNext = 1.5
        }
        mp[1.5] = {
            message = { "request" },
            startNext = 2
        }
        mp[2] = {
            message = { "request2" },
            startEvents = {showMyResources = "ore"},
            trade = {resourceCost="ore", cost=5},
            options = {yes=5, no=4, notEnough=3, trade=true},
        }
        mp[3] = {
            message = { "all_dotdotdot", "notEnough" },
            finish = 1.5
        }
        mp[4] = {
            message = { "notNow" },
            startEvents = {hideMyResources = true},
            finish = 1.5
        }
        mp[5] = {
            message = { "start", "start2" },
        }
        mp[6] = {
            startEvents = {blacksmithStart = true},
        }
        mp[7] = {
            -- return from the blacksmith cutscene
            message = { "result", "result2" },
            finish = 8
        }
        mp[8] = {
            message = { "comeBackLater" },
            finish = -1
        }
    end

    if npcName == "strategist" then
        mp[1] = {
            message = { "task" },
        }
        mp[2] = {
            message = { "advice" },
            finish = -1
        }
    end

    --[[if npcName == "strategist" then
        mp[1] = {
            message = { "task", "map" },
            giveItem = "map"
        }
        mp[2] = {
            message = { "advice" },
            finish = -1
        }
    end]]

    if npcName == "sailor" then
        mp[1] = {
            message = { "journey" },
            finish = -1
        }
    end

    if npcName == "wiseman" then
        mp[1] = { -- state 1 always indicates the player hasn't talked to this NPC
            message = { "threat", "threat2", "offer", "offer2" },
        }
        mp[2] = {
            message = { "task" },
            finish = -1
        }
        mp[3] = {
            message = { "proven", "help", "help2", "reward" },
            giveItem = "gem_ruby",
        }
        mp[4] = {
            message = { "reward2" }
        }
        mp[5] = {
            message = { "advice" },
            finish = -1
        }
    end

    if npcName == "teaGirl" then
        mp[1] = {
            message = { "healTut", "healTut2", "healTut3" },
            finish = -1
        }
    end

    if npcName == "balloonGame" then
        mp[1] = {
            message = { "firstTime" },
        }
        mp[2] = {
            message = { "tryIt" },
            options = { yes=5, no=3 },
        }
        mp[3] = {
            message = { "decline" },
            finish = 4
        }
        mp[4] = {
            message = { "backAgain" },
            options = { yes=5, no=3 },
        }
        mp[5] = {
            message = { "instructions", "instructions2" },
            startNext = 6
        }
        mp[6] = {
            startEvents = {balloonGameStart = true},
            finish = 11
        }
        mp[11] = { -- assume failure by default
            -- relays handled in 'challenge.lua'
            message = { "fail" },
            finish = 4
        }
        mp[12] = { -- finished for the first time
            message = { "congrats", "reward" },
            finish = 4
        }
        mp[13] = { -- finished with non-PB
            message = { "congrats", "nonPb" },
            finish = 4
        }
        mp[14] = { -- finished with PB
            message = { "congrats", "pb" },
            finish = 4
        }
    end

    if npcName == "soldierLeader" then
        mp[1] = { -- state 1 always indicates the player hasn't talked to this NPC
            anim = "holdIdle", -- sets current animation, and default animation
            message = { "meet", "meet2" },
            options = { yes=2, no=3 },
        }
        mp[2] = {
            message = { "ready" },
            startNext = 4
        }
        mp[3] = {
            message = { "mission", "mission2", "mission3" },
            startNext = 4
        }
        mp[4] = {
            anim = "holdIdle",
            message = { "front" },
            finish = -1
        }

        mp[10] = {
            anim = "holdIdle",
            message = { "victory", "victory2", "victory3" },
            giveItem = "gem_ruby",
        }
        mp[11] = {
            message = { "bunker" },
        }
        mp[12] = {
            message = { "bunker2" },
            focus = {
                pinId = "elevator",
                scale = 0.5 -- zoom amount
            }
        }
        mp[13] = {
            anim = "holdIdle",
            message = { "bunker3" },
            cover = "soldierLeaderLeave",
            finish = -2 -- dialogue is finished but it does NOT zoom out yet
        }
        
        mp.relays = { -- constantly checking, only relays if the state is LESS than the target state
            {
                condition = "enemyCheck",
                enemy = "daitengu",
                state = 10,
            },
        }
    end

    if npcName == "engineer" then
        mp[1] = { -- state 1 always indicates the player hasn't talked to this NPC
            anim = "sleep", -- sets current animation, and default animation
            message = { "all_dotdotdot" }, -- list of dialogue strings to say
            startNext = 2, -- this is not necessary; by default, it starts next state.
        }
        mp[2] = {
            anim = "idle",
            emote = "startled", -- one-time animation, then goes to default (anim)
            message = { "wake" },
            soundEffect = sounds.npc.hawk, -- sound effect when this state begins
        }
        mp[3] = {
            message = { "apology" },
            emote = "adjust",
        }
        mp[4] = {
            anim = "idle",
            message = { "intro", "intro2" },
            options = { yes=4.5, no=6 }
        }
        mp[4.5] = {
            anim = "idle",
            emote = "adjust",
            message = { "agreeThanks", "backstory", "backstory2" },
            startNext = 5
        }
        mp[5] = {
            relay = { -- if condition is reached, bail on this state and change to the new one
                condition = "itemCheck",
                item = "gauntlets",
                state = 8
            },
            anim = "idle",
            message = { "equipment" },
            finish = -1
        }
        mp[6] = {
            message = { "decline" },
            finish = 4 -- after this message, the dialogue is finished and the state changes to 4
        }
        mp[7] = {
            relay = { -- if condition is reached, bail on this state and change to the new one
                condition = "itemCheck",
                item = "gauntlets",
                state = 8
            },
            anim = "idle",
            message = { "equipment" },
            finish = -1
        }
        mp[8] = {
            anim = "idle",
            message = { "prepared", "tooBusy" },
        }
        mp[9] = {
            anim = "idle",
            message = { "task", "task2" }
        }
        mp[10] = {
            relay = { -- if condition is reached, bail on this state and change to the new one
                condition = "enemyCheck",
                item = "kotengu",
                state = 11
            },
            anim = "idle",
            message = { "lightningRod" },
            finish = -1
        }
        mp[11] = {
            anim = "idle",
            message = { "coworkers" }
        }
        mp[20] = {
            anim = "sleep", -- sets current animation, and default animation
            message = { "all_dotdotdot" },
        }
        mp[21] = {
            anim = "idle",
            emote = "startled", -- one-time animation, then goes to default (anim)
            message = { "wake" },
            soundEffect = sounds.npc.hawk,
        }
        mp[22] = {
            message = { "tired", "success", "success2" },
            emote = "adjust",
        }
        mp[23] = {
            anim = "idle",
            message = { "newModel", "newModel2" },
            -- pan up to show the new model
            focus = {
                pinId = "newCore",
                scale = 0.25 -- zoom amount
            }
        }
        mp[24] = {
            -- since this table does not have 'focus', it will transition back to playerDialogue
            anim = "idle",
            message = { "finalTask", "finalTask2" },
            finish = -1
        }
        mp[30] = {
            anim = "idle",
            emote = "adjust",
            message = { "finished", "finished2", "finished3" },
            --giveItem = "gem_emerald"
            spawn = {class = "resource", id = "diamond", count = 1},
        }
        mp[31] = {
            anim = "idle",
            message = { "finalMessage" },
            finish = -1
        }
        
        mp.relays = { -- constantly checking, only relays if the state is LESS than the target state
            {
                condition = "itemCheck",
                item = "lightning",
                state = 20,
            },
            {
                condition = "stateCheck",
                stateName = {"newCoreActive"},
                val = true,
                state = 30,
            }
        }
    end

    if npcName == "kotenguVictim" or npcName == "kotenguVictim2" then
        mp = createBasicMap("confused")
    end

    if npcName == "soldierWestGate" then mp = createBasicMap("advice") end

    return mp
end

function createBasicMap(strId)
    print ("Creating basic map for " .. strId)
    local mp = {}
    mp[1] = {
        message = { strId },
        finish = -1
    }
    return mp
end
