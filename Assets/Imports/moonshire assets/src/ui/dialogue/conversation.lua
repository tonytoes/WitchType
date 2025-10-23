conversations = {}
conversations.storedState = 0

function updateLevelEnd()
	conversations.levelEnd[1][1] = "Level " .. levelCode .. ": \"" .. levelData[levelCode].title .. "\"\nCompleted in " .. secondsToTime(levelTimer) .. "!"
end

local function endGeneric()
    player.state = conversations.storedState
	player.winTimer = 0
	cam:fluxUnzoom(0.6)
end

local function startNextConversation(obj)
    startConversation(conversations[obj])
end

local function endStory()
	curtain:call("1_meadow", 520, 180) -- check 'startFresh' in data.lua instead for this
	--curtain.backup = 0.6
	player.state = 14
	dj.play(sounds.effects.portalIntro, "static", "effect")
end

local function endLevel()
	player.state = conversations.storedState
	transition:to(currentZone, "levelEnd")
end

local function endPrototype()
	player.state = conversations.storedState
	player.checkpointMap = "demo/start"
	player.checkpointX = 128
	player.checkpointY = 176
	transition:to("demo/start", "door")
end

local function teaFlashback()
	curtain:call("misc/sage", 680, 538, "flashback")
	dj.play(sounds.effects.ambience2, "static", "effect")
end

local function endTeaFlashback()
	data.states["teaGirl"] = 2
	curtain:call("interiors/i_town", 1352, 264, "flashback")
	dj.play(sounds.effects.ambience2, "static", "effect")
end

local function endStartSage()
	cam:fluxUnzoom(0.6)
	player.state = 0
	npcs:triggerByName("sage")
end

local function endStartSage2()
	cam:fluxUnzoom(0.6)
	player.state = 0
	npcs:triggerByName("sage")
end

local function endNil()

end

local function endItemGet()
	print("endItemGet " .. player.itemGetId)
	if player.itemGetId == "gem_amethyst" then
		player:itemGetFinish(false)
		curtain:call("amethyst", nil, nil, "shine")
		dj.play(sounds.effects.ambience2, "static", "effect")
	else
		player.state = 13
		player:itemGetFinish()
	end
end

local function convoStartBalloonGame()
	spawnChallenge("balloonGame", 0, 0)
end

-- Make this just a table of tables of tables of STRINGS (ie, the messages), the face icon, box position, etc.

function conversations:init()

	conversations.npcBasic = {
		{"Hi there, I am just a test NPC."},
		{"I don't have anything meaningful to say yet. Check back with me later!", endGeneric}
	}

	conversations.npcQuestion = {
		{"I got a question for you."},
		{"Do you like me?", endGeneric, {answerId = 1}} -- the 1 is the answerId (for the question)
	}

	conversations.npcQuestionYes = {
		{"That's so nice!", endGeneric}
	}

	conversations.npcQuestionNo = {
		{"Why would you say such a thing..!", endGeneric}
	}

	conversations.buyItem = {
		{"$itemName $br$br $itemDesc", nil, {instant=true}},
		{"Buy the $itemName for $itemPriceg?", endGeneric, {answerId = 100}}
	}

	conversations.to_eyeris = {
		{"Jump into the hole?", endGeneric, {answerId = 201}}
	}

	conversations.notEnoughMoney = {
		{"You don't have enough to buy this.", endGeneric}
	}

	conversations.shopkeeper = {
		{"Hi there, welcome to my shop!"},
		{"...I don't have much for sale though. I'll have more in stock soon!", endGeneric}
	}

	conversations.oldLady = {
		{"Hi there, welcome to my shop!"},
		{"...I don't have much for sale though. I'll have more in stock soon!", endGeneric}
	}

	conversations.teaGirl = {
		{"Oh, I don't think I've seen you around before! I love meeting new people, so you're always welcome to visit."},
		{"While you're here, would you like a cup of tea?", endGeneric, {answerId = 14}}
	}

	conversations.teaGirl_yes = {
		{"It's a bit strong, but I think you'll enjoy the flavor. Here you go!"},
		{"The aroma of the tea fills you with nostalgia, reminding you of your home back in Moonshire...", teaFlashback, {instant=true}}
	}

	conversations.teaGirl_no = {
		{"You should reconsider! My tea is made from exotic leaves, it's unlike anything you've had before!"},
		{"Come back soon, won't you?", endGeneric}
	}

	conversations.teaGirl_after = {
		{"I told you it was some strong tea! It was like you were sleepwalking, and you started rolling around the room!"},
		{"You're a very entertaining guest. Come back soon, won't you?", endGeneric}
	}

	conversations.sage = {
		{"Ah, there you are! I was wondering where you wandered off to."},
		{"Are you ready for today's lesson?", endGeneric, {answerId = 13}}
	}

	conversations.sage_yes = {
		{"Good! As your Sage, it's my duty to prepare you for the many dangers of the outside world."},
		{"It's wise to use your size and speed to your advantage. That's why today's lesson will test your ability to dodge my attacks!"},
		{"Don't forget, you can't be hit while you're rolling!", endStartSage}
	}

	conversations.sage_no = {
		{"Don't take too long!", endGeneric}
	}

	conversations.sage2 = {
		{"Well done! Dodging is a reliable way to avoid getting damaged."},
		{"But if you do get hurt, there's no need to worry - just find a weapon, and you can use it to heal!"},
		{"Why not try it out now?", endStartSage2}
	}

	conversations.sage3 = {
		{"Very good. With this skill, the weapons you find throughout your travels will keep you healthy."},
		{"Always remember to make use of your surroundings, and you're sure to overcome any challenge!", endTeaFlashback}
	}

	conversations.guard = {
		{"Up ahead is the town. Keep in mind, it's still in development and there isn't much there yet.", endGeneric}
	}

	conversations.soldierBarracks = {
		{"If you're out exploring, make sure you bring more than just that small sword with you!"},
		{"Weapons like spears and greatswords are powerful, AND they protect you from taking damage!", endGeneric}
	}

	conversations.soldierBarracks2 = {
		{"Don't forget, you can throw any weapon by holding down the pick-up button."},
		{"The weapon will break when you do this, but it's a great option for ranged damage."},
		{"Or, you can just drop the weapon by double tapping the pick-up button. But that's not as exciting...", endGeneric}
	}

	conversations.soldierHouse = {
		{"Ugh... a slime got into the house earlier, and it made a HUGE mess. Took me all day to clean up.", endGeneric}
	}

	conversations.soldierWestTown = {
		{"The monsters have been getting more aggressive recently. Be careful out there.", endGeneric}
	}

	conversations.soldierEastGate = {
		{"Were you out there in the forest...? I didn't realize anyone had left town."},
		{"Actually, you don't look familiar to me. Are you one of the new ones?", endGeneric, {answerId = 11, answerSize = 1}}
	}
	conversations.soldierEastGate_yes = {
		{"That explains why we haven't met, since your group just arrived yesterday, right?", startNextConversation, {object="soldierEastGate_final"}}
	}
	conversations.soldierEastGate_no = {
		{"Well, I've never been good at remembering faces. And it doesn't help that I can't even see yours under that cloak.", startNextConversation, {object="soldierEastGate_final"}}
	}
	conversations.soldierEastGate_final = {
		{"Here's some advice: don't wander away from town. It's dangerous out there.", endGeneric}
	}


	conversations.engineer = {
		{"Uh... sorry 'bout that. The manager would wring my neck if he knew I was sleepin' on the job."},
		{"Everyone else went to fix the old Lightning Core. There's some kind of malfunction that's way above my paygrade."},
		{"Say... you might be able to help me out here. What do you say? Could you lend a hand?", endGeneric, {answerId = 16, answerSize = 1}}
	}
	conversations.engineer_yes = {
		{"That's a kind offer, but you don't look equipped for electrical work!"},
		{"If you're actually willing to help out, go grab some safety gear from the storage platform East of here.", endGeneric}
	}
	conversations.engineer_no = {
		{"I don't blame ya. If you're not on payroll, why bother?", endGeneric}
	}


	conversations.soldierLeaderRuins = {
		{"We sent for reinforcements hours ago, and you're the only one that showed up?"},
		{"Well, it's better than nothing. Did anyone brief you on the mission?", endGeneric, {answerId = 15, answerSize = 1}}
	}
	conversations.soldierLeaderRuins_yes = {
		{"Good. I hope you're ready for a fight. That red beast appeared out of nowhere and wounded two of my soldiers earlier.", startNextConversation, {object="soldierLeaderRuins_final"}}
	}
	conversations.soldierLeaderRuins_no = {
		{"There's a strange structure in the ground up ahead, and we believe it's the entrance to some kind of underground vault."},
		{"Problem is, the last time we approached, some kind of large red beast appeared out of nowhere and attacked!"},
		{"We were completely unprepared for a fight, so we had to retreat. Now we're back, and we're out for blood.", startNextConversation, {object="soldierLeaderRuins_final"}}
	}
	conversations.soldierLeaderRuins_final = {
		{"I'm putting you on the frontlines. So go on up ahead, and we'll back you up!", endGeneric}
	}


	local function soldierLeaderGift()
		data.states["soldierLeader"] = 1
		player:itemGet("gem_ruby")
	end

	conversations.soldierLeader = {
		{"Ah, there you are! Thanks to your earlier victory, we were able to investigate the area more thoroughly."},
		{"As a reward for your bravery, I'd like you to take this.", soldierLeaderGift}
	}

	conversations.soldierLeader_complete = {
		{"How far up does that elevator go...? I'll keep watch here while you explore up above.", endGeneric}
	}


	conversations.balloonGame = {
		{"Got time to play a quick game? I'm promoting a new type of weapon, and I need skilled fighters to test it out!"},
		{"Want to give it a shot?", endGeneric, {answerId = 12, answerSize = 1}}
	}
	conversations.balloonGame_return = {
		{"Welcome back! Want to try the game again?", endGeneric, {answerId = 12, answerSize = 1}}
	}
	conversations.balloonGame_yes = {
		{"Great! The rules are simple: you've got 30 seconds to pop all the balloons."},
		{"Prepare yourself...!", convoStartBalloonGame}
	}
	conversations.balloonGame_no = {
		{"If you change your mind, let me know!", endGeneric}
	}
	conversations.balloonGame_completeFirst = {
		{"Amazing! You managed to finish with a final time of $winTimer!"},
		{"You've proven yourself to be proficient with the boomerang, so if you ever want to use one while exploring, stop by anytime!", endGeneric}
	}
	conversations.balloonGame_completeAgain = {
		{"Well done! You managed to finish with a final time of $winTimer!"},
		{"Your personal fastest time is $bestBalloonTime. Keep practicing, and you might be able to beat it!", endGeneric}
	}
	conversations.balloonGame_completeBest = {
		{"Amazing! You managed to finish with a final time of $winTimer!"},
		{"This is your new personal best! Keep it up!", endGeneric}
	}
	conversations.balloonGame_fail = {
		{"Not quite fast enough! If you want to try again, let me know!", endGeneric}
	}

	local function blacksmithOnEnd()
		data.states["blacksmith"] = 1
		startConversation(conversations.blacksmith_offer)
	end

	local function blacksmithCraft()
		curtain:call("blacksmithCutscene")
	end

	local function blacksmithFinish()
		data.states["blacksmith"] = 3
		player:itemGet("upgrade_moonstoneSword")
	end

	conversations.blacksmith = {
		{"You'll end up dead if you go out in the wilderness without the proper equipment!"},
		{"Lucky for you, I can make any weapon that you've used before. Even better, I'll do it for free! We want all our soldiers armed to the teeth!", blacksmithOnEnd},
	}
	conversations.blacksmith_offer = {
		{"Want me to make you a new weapon?", endGeneric, {answerId = 21}}
	}
	conversations.blacksmith_offer_yes = {
		{"Finally! I've been itchin' to craft a proper Moonstone Blade!", blacksmithCraft}
	}
	conversations.blacksmith_offer_no = {
		{"Your loss! Don't forget, it's free!", endGeneric}
	}
	conversations.blacksmith_offer_complete = {
		{"All finished. That's some of my finest work!", endGeneric},
	}


	conversations.story = {
		{"Long ago, in a faraway kingdom lived a wise Sage, along \nwith her loyal apprentice.\n            \n" ..
		"One evening, the Sage received a vision. She saw the \nend of the world - a cataclysm.\n            \n" ..
		"Desperate to prevent this disaster, the Sage began \nto study. Specifically, she studied the world outside \nof her homeland, knowing that the answers she needed \nwould not be found inside the kingdom. Slowly she began \nto form a plan.\n            \n" ..
		"...But it was too late. The cataclysm had begun."},
		{"Although her research was incomplete, the Sage had \ndiscovered a way to escape. Using all of her power, she \nmanaged to make a connection to a distant world.\n            \n" ..
		"The Sage called to her apprentice:\n            \n" ..
		"\"My loyal student, I'm afraid you must burden this task \nalone. I can form this gateway, but I am unable to travel \nthrough it myself.\n            \n" ..
		"I know little of the lands I am sending you to, but I \nknow that the answers are there.\"\n            \n" ..
		"Armed only with a sword, the apprentice ventured \nthrough the gateway, not knowing if they would ever \nsee the Sage again...",
		endStory}
	}

	conversations.intro = {
		{"To escape the threat facing their homeland, the Sage's apprentice ventured through a portal leading to unknown lands...", endStory}
	}

	conversations.hope = {
		{"There must be a way to save Moonshire...                                        ", endNil}
	}

	conversations.inv_dungSign = {
		{"Legacy dungeon has officially closed. The rooms and enemies were too outdated, and are no longer compatible with the game's code.", endGeneric}
	}

	conversations.inv_ruinsCaveSign = {
		{"Thank you for finding this cave. I will put something cool in here, I promise."},
		{"For now it is empty. I hope you have a good day anyway.", endGeneric}
	}

	conversations.inv_testAreaSign = {
		{"TURN BACK! Many monsters ahead!"},
		{"This is where I put enemies while I test their AI. It's just for testing, and there isn't anything interesting here.", endGeneric}
	}

	conversations.inv_volcanoSign = {
		{"I hope you enjoy this incomplete area. Turn back to see the new content!", endGeneric}
	}

	conversations.itemGet = {}

	local function createItemConvo(upperName, desc, desc2) -- uppercase name of color
		if desc2 then
			return {
				{"You got the " .. upperName .. "!"},
				{desc},
				{desc2, endItemGet}
			}
		else
			return {
				{"You got the " .. upperName .. "!"},
				{desc, endItemGet}
			}
		end
		return cnv
	end

	conversations.itemGet.lantern = createItemConvo("Lantern",
		"This will act as a personal light source, providing better visibility in dark areas.")
	conversations.itemGet.gauntlets = createItemConvo("Alchemical Gauntlets",
		"Your hands are now protected! Electrical, burning, and poisonous objects can now be picked up safely.",
		"You are also protected if your sword ever conducts electricity.")
	conversations.itemGet.lightning = createItemConvo("Lightning spell",
		"When you heal by destroying a weapon, all nearby enemies will be struck by a powerful, explosive lightning strike.")
	conversations.itemGet.ringVit = createItemConvo("Ring of Vitality",
		"Your maximum health has permanently increased by 1.")
	conversations.itemGet.map = createItemConvo("Map",
		"This overworld map can be opened from the menu, and will display your current location.")
	conversations.itemGet.multi = createItemConvo("Multi",
		"BETA - enables multiplayer")
	conversations.itemGet.moonstone = createItemConvo("Moonstone",
		"It's a lightweight and nearly unbreakable stone. Maybe someone could make use of this...")
	conversations.itemGet.moonstoneSword = createItemConvo("Moonstone Sword",
		"The blade is incredibly dense, but light as a feather. Your sword will deal more damage to enemies!")
	conversations.itemGet.swim = createItemConvo("Flotation Device",
		"You can now swim forever, without fear of sinking!",
		"...Wait, how did you find this?!")
	conversations.itemGet.ring = createItemConvo("Gemstone Ring",
		"Attach different gemstones to unlock unique abilities. Open the Jewelry pause menu to see your options.")
	conversations.itemGet.necklace = createItemConvo("Gemstone Necklace",
	"Attach different gemstones to unlock unique abilities. Open the Jewelry pause menu to see your options.")

	local function createDyeConvo(clr) -- uppercase name of color
		return {
			{"You got the " .. clr .. " Dye!"},
			{"You can recolor your outfit using the dyes you collect in the pause menu.", endItemGet}
		}
	end

	conversations.itemGet.dye_red = createDyeConvo("Red")
	conversations.itemGet.dye_orange = createDyeConvo("Orange")
	conversations.itemGet.dye_yellow = createDyeConvo("Yellow")
	conversations.itemGet.dye_green = createDyeConvo("Green")
	conversations.itemGet.dye_blue = createDyeConvo("Blue")
	conversations.itemGet.dye_purple = createDyeConvo("Purple")

	local function createGemConvo(clr) -- uppercase name of color
		return {
			{"You got the " .. clr .. "!"},
			{"Gems can be attached to pieces of jewelry to unlock unique abilities. Open the Jewelry pause menu to see your options.", endItemGet},
		}
	end

	conversations.itemGet.gem_ruby = createGemConvo("Ruby")
	conversations.itemGet.gem_emerald = createGemConvo("Emerald")
	conversations.itemGet.gem_amethyst = createGemConvo("Amethyst")

end

function conversations:stateAdjust(name)
	if not data.states[name] then return name end

	local npcState = -1
	npcState = data.states[name]

	if name == "soldierEastGate" then
		if npcState > 0 then -- you've already spoken, and you said yes (1) or no (2)
			return "soldierEastGate_final"
		end
	end

	if name == "soldierLeader" then
		if npcState == 1 then
			return "soldierLeader_complete"
		end
	end

	if name == "blacksmith" then
		if npcState == 1 then -- you've spoken once
			return "blacksmith_offer"
		end
	end

	if name == "teaGirl" then
		if npcState == 2 then -- you've had the flashback
			return "teaGirl_after"
		end
	end

	if name == "balloonGame" then
		if player.winTimer == 9999 then
			player.winTimer = 0
			return "balloonGame_fail"
		elseif player.winTimer == 0 then
			if npcState and npcState > 0 then return "balloonGame_return" else return "balloonGame" end
		elseif npcState == 2 then
			return "balloonGame_completeFirst"
		elseif npcState == 3 then
			return "balloonGame_completeAgain"
		elseif npcState == 4 then
			return "balloonGame_completeBest"
		end
	end

	-- nothing was changed...
	return name
end

function conversations:stateAdjust2(name, args)

	if name == "sage" then
		if args and args.extraState == 2 then
			return "sage2"
		elseif args and args.extraState == 4 then
			return "sage3"
		end
	end

	return name

end
