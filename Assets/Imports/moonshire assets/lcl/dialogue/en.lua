lcl.dialogue = {
    all = { -- strings available to all NPCs
        dotdotdot = "...",
        dotx8 = "........",
    },
    soldierEastGate = {
        -- outside of the town, the soldier sees the player approach unexpectedly
        confused = "Were you out there in the forest...? I didn't realize anyone had left town.",

        -- 'one of the new ones' is intentionally vague, since the soldier assumes you are a fellow soldier (human)
        confused2 = "Actually, you don't look familiar to me. Are you one of the new ones?",

        yesNew = "That explains why we haven't met, since your group just arrived yesterday, right?",
        noNew = "Well, I've never been good at remembering faces. And it doesn't help that I can't even see yours under that cloak.",

        advice = "Here's some advice: don't wander away from town. It's dangerous out there."
    },
    soldierBarracks = {
        armorAdvice = "Weapons like spears and axes are powerful, AND they protect you from taking damage!",
        armorAdvice2 = "Make sure you grab any weapon you can find before leaving town. There's tons of monsters wandering around.",
    },
    soldierWestGate = {
        advice = "If you want to catch up with the others, be sure to follow the torches.",
    },
    shopkeeper = {
        hello = "Hi there, welcome to my shop!",
        hello2 = "...I don't have much for sale though. I'll have more in stock soon!",
    },
    farmer = {
        task = "It ain't easy feedin' a whole army. Plant any extra seeds you find in these soil patches - if you do all 3, I'll give ya somethin' for your work!",
        thanks = "Thanks for lending a hand with plantin' those seeds! It ain't often I see folks with a green thumb around here.",
        reward = "Here's a little somethin' for your help. I think this color suits you!",
        advice = "Keep on plantin' those seeds you find. You never know what might grow!",
    },
    blacksmith = {
        -- first meeting the blacksmith
        warning = "You'll end up dead if you go out in the wilderness without the proper equipment!",
        warning2 = "There's plenty of weapons here in town... but between you and me, it's all junk. I'm gettin' paid for quantity, not quality.",
        request = "With the right materials, I could arm these soldiers with the finest weaponry you've ever seen! Ore doesn't grow on trees though.",
        request2 = "Want to support the troops? With 5 ore, I could start producing a brand new weapon!",

        notEnough = "Do I look like I was born yesterday? You don't have enough ore! Get outta here!",
        notNow = "Good luck surviving without my finest work...",

        -- player provides the ore
        start = "Ah, finally... some quality materials to work with! I'm sick of makin' weapons out of scrap metal.",
        start2 = "Sit tight, I'll have this ready in no time.",

        result = "All finished. Thanks to your donation, I was able to start producing Greatswords!",
        result2 = "Try it out, you might like a heavy weapon like this!",

        comeBackLater = "Come back later, I might have more weapons for you to try out!",

        -- no longer used
        warning3 = "Lucky for you, I can make any weapon that you've used before. Even better, I'll do it for free! We want all our soldiers armed to the teeth!",
        offer = "Want me to make you a new weapon?",
        offerNo = "Your loss! Don't forget, it's free!",
        finished = "All finished. That's some of my finest work!",
    },
    strategist = {
        -- first time meeting the strategist, as usual, he mistakes the player as a soldier
        task = "Ah, perfect timing. There's a group of soldiers out in the field that are in need of reinforcements. I don't know where you're currently stationed, but I'm reassigning you to this mission.",
        map = "You'll need to navigate the island on your own in order to reach these soldiers. Take this map, and be sure to check it if you ever lose your way.",
        advice = "It's dangerous out there, but as long as you don't get lost, you'll be able to catch up with the others. Head West out of town, and follow the torches.",
    },
    sailor = {
        journey = "More and more people are coming to this island... It's great for business, but I can barely keep up!",
    },
    wiseman = {
        -- first time talking to the wise man, who recognizes that the player is from Moonshire
        threat = "That disguise cannot fool me. I know where you come from, and I know that you are not human. It's bold of you to come here.",
        threat2 = "You see, with all the monsters wandering these lands, most soldiers assume any non-human is out to kill them. You are no exception to this rule.",

        offer = "Fear not, since I am no stranger to your history... the history of Moonshire. I believe I can help you find all the answers you seek.",
        offer2 = "Before I reveal this information, I must see for myself the proof of your lineage. A demonstration of magic will remove any doubt of your identity.",

        task = "You'll need to pick up a weapon first. If you are a true Moonshirian, press and hold the pickup button to heal yourself. That is the proof I require.",
        proven = "To think... I've finally seen that magic again after all these years. You've traveled far from Moonshire to visit us here.",

        help = "Though, it is not me that you are meant to speak with. I've kept this information to myself, but one of your people is currently here on the island. She can be found West of here, all the way at the coast.",
        help2 = "Reaching her will be no easy task. The swamps are crawling with bunyip, and there's a river you'll have to find a way to cross.",
        
        reward = "Before you go, please take this.",
        reward2 = "You'll likely find many gemstones like this during your time on the island. They can be combined with jewelry to unlock hidden effects. You can configure this in your pause menu.",

        advice = "This journey will require more help from us humans. Perhaps if you earn the trust of the soldiers, they'll help you find a way to the Western coast.",
    },
    teaGirl = {
        -- meet the tea girl in her house
        healTut = "You know how to pick up weapons, right? I know your secret technique... you're able to heal yourself by destroying your weapons!",
        healTut2 = "Don't deny it! While carrying a weapon, hold the 'pickup' button to heal. This will destroy the weapon, but your health will be completely restored.",
        healTut3 = "Your secret is safe with me. Be careful out there, and don't forget to heal!",
    },
    balloonGame = {
        firstTime = "Got time to play a quick game? I'm promoting a new type of weapon, and I need skilled fighters to test it out!",
        tryIt = "Want to give it a shot?",
        backAgain = "Welcome back! Want to try the game again?",
        decline = "If you change your mind, let me know!",

        -- start the balloon game
        instructions = "Great! The rules are simple: you've got 30 seconds to pop all the balloons.",
        instructions2 = "Prepare yourself...!",

        congrats = "Well done! You managed to finish with a final time of {winTimer}!",
        reward = "You've proven yourself to be proficient with the boomerang, so if you ever want to use one while exploring, stop by anytime!",
        nonPb = "Your personal fastest time is {bestBalloonTime}. Keep practicing, and you might be able to beat it!",
        pb = "This is your new personal best! Keep it up!",
        fail = "Not quite fast enough! If you want to try again, let me know!",
    },
    soldierLeader = {
        -- First time speaking to the soldier leader, near the ruins
        meet = "We sent for reinforcements hours ago, and you're the only one that showed up?",
        meet2 = "Well, it's better than nothing. Did anyone brief you on the mission?",

        -- The player claims that they know the mission already
        ready = "Good. I hope you're ready for a fight. That red beast appeared out of nowhere and wounded two of my soldiers earlier.",

        -- The player asks for a mission brief
        mission = "There's a strange structure in the ground up ahead, and we believe it's the entrance to some kind of underground vault.",
        mission2 = "Problem is, the last time we approached, some kind of large red beast appeared out of nowhere and attacked!",
        mission3 = "We were completely unprepared for a fight, so we had to retreat. Now we're back, and we're out for blood.",

        front = "I'm putting you on the frontlines. So go on up ahead, and we'll back you up!",

        victory = "VICTORY! That demon will think twice before attacking us again.",
        victory2 = "Well done on the battlefield. Your fighting skills really turned the tides in our favor.",
        victory3 = "Take this as a reward for your bravery. It'll make you an even stronger asset to the team.",

        bunker = "These ruins were unearthed recently, and that demon has been flying around the area ever since.",
        bunker2 = "This platform at the center of it all... something about it is very suspicious, and we're here to investigate.",
        bunker3 = "This task is now assigned to you. I'll be returning to town to report our victory. Good luck out there.",
    },
    engineer = {
        -- The engineer is sleeping, and when the player approaches, he is startled and wakes up
        wake = "AH...!!",
        apology = "Uh... sorry 'bout that. The manager would wring my neck if he knew I was sleepin' on the job.",

        -- Cloud area has debris and monsters, this engineer is the only person around
        intro = "Everyone else went to fix the old Lightning Core. There's some kind of malfunction that's way above my paygrade.",
        intro2 = "Say... you might be able to help me out here. What do you say? Could you lend a hand?",
       
        agreeThanks = "Thanks, I owe you one.",
        
        -- The engineer provides directions on where to find safety equipment (which turns out to be the Alchemical Gauntlets)
        equipment = "If you're willing to help out, go grab some safety gear from the storage platform East of here.",
        
        -- Player declines, this is the engineer's response
        decline = "I don't blame ya. If you're not on payroll, why bother?",

        -- Agree to help the engineer, and the player has the Alchemical Gauntlets
        prepared = "Excellent! With those gauntlets of yours, you'll have a much easier time getting around here.",
        
        -- The engineer explains what is going on
        backstory = "If you didn't know, this facility is powered by a Lightning Core, which is a large device that absorbs nearby electrical energy.",
        backstory2 = "That old core is on the fritz though. There's a malfunction that nobody can figure out, and it's starting to get dangerous.",
        
        tooBusy = "I'm currently installing a replacement Lightning Core, and it's been awhile since I've seen any of my coworkers... something doesn't seem right.",

        -- Instructions to the player on what to do in the cloud area
        task = "I need you to go check on the defective Lightning Core to see what the problem is. Just follow this green path West and up to the elevator.",
        task2 = "You might need to move some platforms around to get there... it's been awhile since we've had a flightless guest.",

        -- guidance on how to clear the green debris that's blocking the path
        lightningRod = "Use a Lightning Rod to clear any debris blocking the path. Charge up your attack, and that lightning will blast it away!",

        -- After the player explores and fights the brainwashed tengu, the player can optionally talk to the engineer again
        coworkers = "The core malfunction must really be aggravating my coworkers. Why else would they attack you...?",

        -- The engineer is sleeping again since the lights of the dungeon went out, after the boss was defeated
        tired = "Sorry... I got so tired when the lights went out.",

        -- The player returns to the engineer after defeating the Lightning Core
        success = "That must mean the old core is offline!",
        success2 = "That's a huge relief... I was worried I'd have to work overtime.",

        -- camera pans up to show the new model of Lightning Core that the engineer installed; it is not powered on.
        newModel = "While you were off dealing with the malfunction, I finished installing the new model!",
        newModel2 = "It's powered by 4 cores at once, so we should be seeing some huge efficiency improvements.",

        -- engineer explains how to turn on the new Lightning Core
        finalTask = "We still need to activate it, which requires striking each core with lightning at the same time.",
        finalTask2 = "Since you've got that old Lightning Core on you, would you do the honors?",

        -- after the new lightning core is activated by the player
        finished = "It works! Finally, it's a huge relief to be done with that old core. You're free to keep it if you want.",
        finished2 = "Between you and me... I'm really pushing for a promotion this year. You'd be doin' me a huge solid if you didn't report this incident.",
        finished3 = "Here, you can take this. Don't tell anyone I gave it to you, alright?",

        finalMessage = "Thanks for stoppin' by. I owe you one!"
    },
    kotenguVictim = {
        -- The kotengu have been brainwashed by the cloud boss, and after the boss is defeated, they regain consciousness
        confused = "What happened...? I can't remember anything after we got up there..."
    },
    kotenguVictim2 = {
        -- The kotengu have been brainwashed by the cloud boss, and after the boss is defeated, they regain consciousness
        confused = "These working conditions are ridiculous... I don't even know how long I've been here!"
    },
}