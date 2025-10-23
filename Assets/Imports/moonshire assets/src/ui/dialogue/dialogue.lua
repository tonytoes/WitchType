dialogue = {}

function dialogue:init()
	dialogue.talking = false
	dialogue.can_move = false
	dialogue.conversation = nil
	dialogue.convo_parts = 0
	dialogue.convo_current = 1
	dialogue.message = ""
	dialogue.show = ""
	dialogue.top_or_bottom = "bottom"
	dialogue.after_function = nil
	dialogue.object = nil
	dialogue.parseLen = 34
	
	dialogue.corner_x = 60
	dialogue.corner_y = 510
	dialogue.box_x = 30
	dialogue.box_y = 560
	dialogue.width = 176 * scale
	dialogue.height = 74 * scale
	dialogue.position = 0 -- this is the character of the string it is on
	dialogue.image = nil
	dialogue.no_press = 0
	dialogue.timer = 0
	dialogue.speed = 0.01
	dialogue.boxMiddleY = 28
	dialogue.focus = ""
	
	dialogue.answerSize = 2 -- normal, 1 is smaller spritesheet
	dialogue.answerGap = 38
	dialogue.answerY = 44
	dialogue.answerId = 0
	dialogue.answerShown = false
	dialogue.pitch = 1
	dialogue.npcPitch = 1
end

function dialogue:getCorner()
	dialogue.width = 186 * scale
	dialogue.height = 72 * scale
    dialogue.box_x = love.graphics.getWidth()/2 - (dialogue.width/2)
    dialogue.corner_x = dialogue.box_x + 9 * scale
    if dialogue.top_or_bottom == "top" then
        dialogue.box_y = 4 * scale
		dialogue.boxMiddleY = 28
    elseif dialogue.top_or_bottom == "bottom" then
        dialogue.box_y = 96 * scale
		dialogue.boxMiddleY = 126
    end

	if dialogue.story or dialogue.fullCenter then
		dialogue.width = 220 * scale
		dialogue.height = 360 * scale
		dialogue.box_x = love.graphics.getWidth()/1.9 - (dialogue.width/2)
    	dialogue.corner_x = dialogue.box_x + 9 * scale
		dialogue.box_y = 78 * scale
		dialogue.boxMiddleY = 28
	end

	if dialogue.intro then
		dialogue.width = 64 * scale
		dialogue.height = 360 * scale
		dialogue.box_x = love.graphics.getWidth()/2.5 -- - (dialogue.width/2)
    	dialogue.corner_x = dialogue.box_x + 9 * scale
		dialogue.box_y = 22 * scale
		dialogue.boxMiddleY = 28
	end

    dialogue.corner_y = dialogue.box_y + 2 * scale
    
end

function startConversation(convo_table)
	conversations:init()

	dialogue.conversation = convo_table
	dialogue.convo_parts = table.getn(convo_table)
	dialogue.convo_current = 1
	dialogue:showMessage(unpack(dialogue.conversation[dialogue.convo_current]))
end

function stopConversation()
	dialogue.talking = false
	player.state = 0
	self.customDestX = nil
	self.customDestY = nil
end

function dialogue:showMessage(message, after_function, args)
	dialogue.talking = true
	dialogue.speed = 0.02
	dialogue.position = 0
	dialogue.showBox = true
	dialogue.top_or_bottom = "bottom"
	dialogue.story = false
	dialogue.intro = false
	dialogue.timer = 0.3
	dialogue.answerId = 0
	dialogue.instant = false
	dialogue.answerSize = 1 -- reset back to full size
	dialogue.fullCenter = false
	dialogue.doParse = true
	dialogue.autoScroll = false
	dialogue.options = nil

	dialogue.font = fonts.dialogue.text2
	if lcl.lang ~= "en" then dialogue.font = fonts.dialogue.text3 end
	
	dialogue.args = args
	if args and args.answerId then dialogue.answerId = args.answerId end
	if args and args.answerSize then dialogue.answerSize = args.answerSize end
	if args and args.pitch then dialogue.pitch = args.pitch end
	if args and args.showBox ~= nil then dialogue.showBox = args.showBox end
	if args and args.fullCenter then dialogue.fullCenter = args.fullCenter end
	if args and args.doParse ~= nil then dialogue.doParse = args.doParse end
	if args and args.autoScroll ~= nil then dialogue.autoScroll = args.autoScroll end
	if args and args.options then dialogue.options = args.options end

	if gamestate < 1 then
		dialogue.font = fonts.newMenu.intro
		dialogue.story = true
		dialogue.intro = true
		dialogue.showBox = false
		dialogue.speed = 0.038
		dialogue.timer = 0.02
	end

	if dialogue.fullCenter then
		dialogue.font = fonts.dialogue.text3
		dialogue.speed = 0.045
	end

	dialogue:getCorner()
	
	dialogue.after_function = after_function
	dialogue.can_move = false
	dialogue.message = message

	if utf8string.find(message, "{itemName}") then dialogue.message = dialogue.message:gsub("{itemName}", dialogue.focus) end
	if utf8string.find(message, "{itemPrice}") then dialogue.message = dialogue.message:gsub("{itemPrice}", dialogue.focusPrice) end
	if utf8string.find(message, "{itemDesc}") then dialogue.message = dialogue.message:gsub("{itemDesc}", dialogue.focusDesc) end
	if utf8string.find(message, "{resourceCost}") then dialogue.message = dialogue.message:gsub("{resourceCost}", lcl.items[dialogue.focusResourceCost].name) end
	if utf8string.find(message, "{winTimer}") then dialogue.message = dialogue.message:gsub("{winTimer}", disp_time(player.winTimer, 2)) end
	if utf8string.find(message, "{bestBalloonTime}") then dialogue.message = dialogue.message:gsub("{bestBalloonTime}", disp_time(data.states.challenges["balloonGame"], 2)) end

	if dialogue.doParse then
		local parseLen = 35
		if gamestate < 1 then parseLen = 36 end
		dialogue.parseLen = parseLen
		dialogue.message = dialogue:parse(dialogue.message, parseLen)
	end
	
	dialogue.length = utf8string.len(dialogue.message)
	dialogue.image = image

	if args and args.instant then
		dialogue.instant = true
		dialogue.timer = 0.5 -- slightly longer to account for the instant
	end

	if args and args.object then dialogue.object = args.object end
end

function dialogue:answer(id)
	dialogue.answerShown = false
	-- all of the answer code got moved to answer.lua
end

function dialogue:update(dt)

	if dialogue.timer > 0 then
		dialogue.timer = dialogue.timer - dt
	end

	if dialogue.timer < 0 and dialogue.instant then
		dialogue.position = dialogue.length
	end

	if dialogue.talking == true then
		local newFrame = false
		if dialogue.position >= dialogue.length and (dialogue.answerId > 0 or dialogue.options) and dialogue.answerShown == false then
			answer:ask(dialogue.answerId) -- this is the answerId for 'buying' stuff
			dialogue.answerShown = true
		end
		if dialogue.position < dialogue.length and dialogue.timer < 0 then
			dialogue.timer = dialogue.speed
			dialogue.position = dialogue.position + 1
			newFrame = true			
		end
		dialogue.show = utf8string.sub(dialogue.message, 0, dialogue.position)
		player.postBuffer = 0.5

		dialogue.pitch = dialogue.npcPitch

		if newFrame then
			local nextChar = utf8string.sub(dialogue.show, -1)
			if nextChar == ',' or nextChar == ';' or nextChar == ':' then dialogue.timer = 0.2 end
			if nextChar == '.' or nextChar == '?' or nextChar == '!' then dialogue.timer = 0.3 end

			if nextChar ~= ' ' and nextChar ~= '\n' then
				dj.play(sounds.ui.text, "static", "effect", 0.7, dialogue.pitch)
			end
		end
    end

	if dialogue.autoScroll and dialogue.position >= dialogue.length then
		dialogue:continue()
	end
end

function dialogue:checkAfterFunction()
    if dialogue.after_function ~= nil then
        if dialogue.object ~= nil then
            dialogue.after_function(dialogue.object)
        else
            dialogue.after_function()
        end
    end
end

function dialogue:continue()
	if dialogue.answerId > 0 or dialogue.options then return end
    if dialogue.talking == true then
		if dialogue.position > dialogue.length - 1 then -- make this "if any key is down"
			dialogue.show = ""
			if talk.subConvo then
				talk:subContinue()
			elseif talk.state > 0 then
				talk:continue()
			else
				if dialogue.conversation == nil then
					dialogue.talking = false
					dialogue.position = 0
				else
					dialogue.convo_current = dialogue.convo_current + 1
					self:checkAfterFunction()
					if dialogue.convo_current > dialogue.convo_parts then
						dialogue.talking = false -- check convo_after function
					else
						dialogue:showMessage(unpack(dialogue.conversation[dialogue.convo_current]))
						if gamestate == 0.2 then
							menu:turnRed()
						end
					end
				end
			end
		elseif dialogue.position > 1 and not dialogue.autoScroll then -- only allow skipping after the first character is shown
			dialogue.position = dialogue.length -- show all text at once
		end
	end
end

function dialogue:draw()
    if dialogue.talking == true then

		if dialogue.showBox then
			love.graphics.setColor(1,1,1, 0.8)
			local spr = sprites.ui.dialogueBack
			love.graphics.draw(spr, love.graphics.getWidth()/2, self.boxMiddleY * scale, nil, scale, nil, spr:getWidth()/2, spr:getHeight()/2)
		
			setWhite()
			spr = sprites.ui.dialogueFrame
			love.graphics.draw(spr, love.graphics.getWidth()/2, self.boxMiddleY * scale, nil, scale, nil, spr:getWidth()/2, spr:getHeight()/2)
		end

		setWhite()
        love.graphics.setFont(dialogue.font)
        love.graphics.print(dialogue.show, dialogue.corner_x, dialogue.corner_y)
        if dialogue.image ~= nil then
            love.graphics.draw(dialogue.image, 640*scale, 318*scale, 0, scale, scale, dialogue.image:getWidth()/2, dialogue.image:getHeight()/2)
        end
        love.graphics.setLineWidth(1)
    end
end

function dialogue:parse(str, charCount)
	-- str is a line of dialogue in a monospace font
	-- if the string exceeds a certain number of characters
	-- represented by charCount, it will replace the previous 
	-- space with a newline character. This process repeats
	-- for the remainder of the string
	
	-- first, find any newlines that already exist in str
	-- make sure these get retained
	

	local words = {}
	for word in utf8string.gmatch(str, "[^%s]+") do
		table.insert(words, word)
	end

	-- then, iterate through the table and add a newline
	-- character to the string when the character count
	-- exceeds the limit
	local count = 0
	for i, word in ipairs(words) do
		count = count + utf8string.len(word)

		-- if {br} is found, reset count and add a newline
		if utf8string.find(word, "{br}") then
			count = 0
			words[i] = utf8string.gsub(word, "{br}", "\n")
		elseif count > charCount then
			words[i-1] = words[i-1] .. "\n"
			count = utf8string.len(word)
		end

		count = count + 1 -- account for the space
	end

	-- return the full string
	-- put a space between each word, unless there is a newline
	-- character, in which case, don't
	local newStr = ""
	for i, word in ipairs(words) do
		newStr = newStr .. word .. " "
	end
	newStr = utf8string.gsub(newStr, "\n ", "\n") -- don't want spaces right after line break

	return newStr
end

function dialogue:setFocus(args)
	dialogue.itemId = ""
	dialogue.focus = ""
	dialogue.focusPrice = ""
	dialogue.focusNpcName = ""
	dialogue.focusDesc = ""
	dialogue.focusResourceCost = ""

	if args then
		if args.itemId then dialogue.itemId = args.itemId end
		if args.focus then dialogue.focus = args.focus end
		if args.price then dialogue.focusPrice = args.price end
		if args.npcName then dialogue.focusNpcName = args.npcName end
		if args.desc then dialogue.focusDesc = args.desc end
		if args.resourceCost then dialogue.focusResourceCost = args.resourceCost end
	end
end
