talk = {}

function talk:init()
    talk.state = 0
    talk.npcName = ""
    talk.talkStr = ""
    talk.npcMap = nil
    talk.npcState = 1
    talk.messageInd = 1
    talk.subConvo = nil
    talk.subInd = 0
    talk.lclTag = "dialogue"
end

function talk:getNpcString(talkStr)
    local lclStr = nil
    if talkStr then
        talk.talkStr = talkStr
        if talkStr:startswith('all_') then
            -- get the string after the all_
            talkStr = string.sub(talkStr, 5)
            lclStr = lcl[talk.lclTag].all[talkStr]
        else
            lclStr = lcl[talk.lclTag][talk.npcName][talkStr]
        end
    end
    if lclStr then return lclStr else return nil end
end

function talk:getTalkString(message)
    return message[talk.messageInd]
end

-- used for conversations that aren't from an NPC, and uses a passed list of strings
function talk:startSub(strList)
    talk.subConvo = strList
    talk.subInd = 1
    talk:sayMessage()
end

function talk:subContinue()
    talk.subInd = talk.subInd + 1
    if talk.subInd > #talk.subConvo then
        talk:done() -- will go back to the main convo now
    else
        talk:sayMessage()
    end
end

function talk:start(name, args)
    talk.state = 1
    talk.messageInd = 1    
    if name then talk.npcName = name end

    if args and args.narration then talk.lclTag = "narration" end

    if talk.lclTag == "narration" then
        talk.npcMap = getNarrationMap(talk.npcName)
    else
        talk.npcMap = getNpcMap(talk.npcName)
    end

    local ns = data.states.npcs[talk.npcName]
    if (args and args.basic) or talk.basic then
        if talk.basic then
            talk.npcState = talk.basic
        else
            talk.basic = 1 -- talk.basic acts as an iterator for npc's that aren't in data.states
            talk.npcState = 1
        end
    elseif ns ~= nil then
        talk.npcState = ns
    else
        talk.npcState = 1
        data.states.npcs[talk.npcName] = 1
    end

    if talk.npcMap then
        local stateObj = talk.npcMap[talk.npcState]
        local talkStr = nil
        local npcObj = npcs:getByName(talk.npcName)
        if stateObj then
            if stateObj.quitTalking then
                talk:done()
                return nil
            end
            if stateObj.relays then
                for _, relayObj in ipairs(stateObj.relays) do
                    local success = talk:relay(relayObj)
                    if success then
                        talk:start()
                        return nil
                    end
                end
            end
            if stateObj.relay then -- single relay
                local success = talk:relay(stateObj.relay)
                if success then
                    talk:start()
                    return nil
                end
            end
            if stateObj.soundEffect then sem:playSound(stateObj.soundEffect) end
            if stateObj.anim then if npcObj then npcObj:setAnim(stateObj.anim) end end
            if stateObj.emote then if npcObj then npcObj:setAnim(stateObj.emote, true) end end
            if stateObj.focus then
                if stateObj.focus.pinId then
                    local focusPin = pins:getByName(stateObj.focus.pinId)
                    if focusPin then
                        local scVl = nil
                        if stateObj.focus.scale then scVl = stateObj.focus.scale end
                        player.focusX = focusPin.x
                        player.focusY = focusPin.y
                        cam:fluxZoom("focusFocus", 1.5, {scale=scVl})
                        cam.smoother = Camera.smooth.damped(1.5)
                    end
                end
            elseif cam.focus ~= "playerDialogue" then
                player.focusX = npcObj.x
                player.focusY = npcObj.y
                cam:fluxZoom("playerDialogue", 1)
            end

            if stateObj.ui then
                dialogue.talking = false
                newui:start(stateObj.ui)
            end

            if stateObj.startEvents then
                events:start(stateObj.startEvents)
            end

            if stateObj.message then
                talk:sayMessage()
            else
                talk:updateFinishState()
            end
        end
    end
end

function talk:relay(relayObj, args)
    local success = false
    local npcName = talk.npcName
    if args and args.npcName then npcName = args.npcName end
    if relayObj.condition == "itemCheck" then
        if allItems[relayObj.item] then
            success = true
        end
    elseif relayObj.condition == "enemyCheck" then
        if allEnemies[relayObj.enemy] then
            success = true
        end
    elseif relayObj.condition == "stateCheck" then -- only checks npc states, and misc states
        if type(relayObj.stateName) == "table" then
            local res = true
            for i, st in ipairs(relayObj.stateName) do
                local suc = false
                if relayObj.val then
                    if data.states.npcs[st] == relayObj.val then suc = true end
                    if data.states.misc[st] == relayObj.val then suc = true end
                elseif data.states.npcs[st] then suc = true end
                if not suc then res = false end
            end
            success = res
        else
            if not talk.basic and data.states.npcs[relayObj.stateName] == relayObj.val then success = true end
        end
    end

    if success then
        if talk.basic then talk.basic = talk.basic + 1
        elseif data.states.npcs[npcName] < relayObj.state then data.states.npcs[npcName] = relayObj.state end
    end

    return success
end

-- call this after all npcs are loaded
function talk:checkAllNpcRelays()
    for i,npc in ipairs(npcs) do
        if npc.map and npc.map.relays then
            for _, relayObj in ipairs(npc.map.relays) do
                local success = talk:relay(relayObj, {npcName=npc.name})
                if success then
                    npc:setMapAnim()
                end
            end
        end
    end
end

function talk:sayMessage()
    if not talk.subConvo then
        local talkStr = talk.npcMap[talk.npcState].message
        local lclStr = talkStr
        if type(talkStr) == "table" then
            talkStr = talk:getTalkString(talk.npcMap[talk.npcState].message)
            lclStr = talk:getNpcString(talkStr)
        end

        local ons = nil
        if talk.npcMap[talk.npcState].options then
            if talk.messageInd >= #talk.npcMap[talk.npcState].message then
                ons = talk.npcMap[talk.npcState].options
            end
        end

        if lclStr then
            dialogue:showMessage(lclStr, nil, {options=ons, instant=talk.npcMap[talk.npcState].instant}) --, after_function, args)
        end
    else
        local lclStr = talk.subConvo[talk.subInd]
        if lclStr then
            dialogue:showMessage(lclStr)
        end
    end
end

function talk:continue()
    if not talk.npcMap then return nil end

    local stateChange = true
    if talk.npcMap[talk.npcState].message then
        if #talk.npcMap[talk.npcState].message > 1 then
            talk.messageInd = talk.messageInd + 1
            if talk.messageInd > #talk.npcMap[talk.npcState].message then
                talk.messageInd = 1
            else
                stateChange = false
                talk:sayMessage()
            end
        end
    end

    if stateChange then
        if talk.npcMap[talk.npcState].spawn then
            local spawn = talk.npcMap[talk.npcState].spawn
            if spawn.class then
                if spawn.class == "resource" and spawn.count then
                    local spawnX = player.x
                    local spawnY = player.y
                    local thisNpc = npcs:getByName(talk.npcName)
                    if thisNpc then spawnX = thisNpc.x spawnY = thisNpc.y-3 end
                    for i=1,spawn.count do
                        local dirVec = vector(32, 0)
                        if player.x < spawnX then dirVec = dirVec * -1 end
                        local rotAmt = math.random() * (math.pi/12)
                        if math.random() > 0.5 then rotAmt = -rotAmt end
                        resources:spawn(spawn.id, spawnX, spawnY, {dir=dirVec})
                    end
                end
            end
        end
        -- state change, start next
        if talk.npcMap[talk.npcState].giveItem then
            dialogue.talking = false
            player:itemGet(talk.npcMap[talk.npcState].giveItem)
            if talk.basic then talk.basic = talk.basic + 1 else data.states.npcs[talk.npcName] = data.states.npcs[talk.npcName] + 1 end
        elseif talk.npcMap[talk.npcState].startNext then
            if talk.basic then talk.basic = talk.npcMap[talk.npcState].startNext else data.states.npcs[talk.npcName] = talk.npcMap[talk.npcState].startNext end
            talk:start()
        elseif talk.npcMap[talk.npcState].finish then
            talk:updateFinishState()

            if talk.npcMap[talk.npcState].cover then
                cover:start(talk.npcMap[talk.npcState].cover)
            end
            
            if talk.npcMap[talk.npcState].finish ~= -2 then
                -- end the dialogue
                talk:done()
            else
                talk:basicDone()
            end
        elseif talk.npcMap[talk.npcState].options then
            -- state change handled by answer (dialogue.options)
        else
            if talk.basic then talk.basic = talk.basic + 1
            else data.states.npcs[talk.npcName] = data.states.npcs[talk.npcName] + 1 end
            talk:start()
        end
    end
end

function talk:updateFinishState()
    if not talk.npcMap or not talk.npcState then return nil end
    if talk.npcMap[talk.npcState].finish then
        if talk.npcMap[talk.npcState].finish > -1 then
            if talk.basic then talk.basic = talk.npcMap[talk.npcState].finish
            else data.states.npcs[talk.npcName] = talk.npcMap[talk.npcState].finish end
            
            if not talk.basic then
                local stateObj = talk.npcMap[data.states.npcs[talk.npcName]]
                local npcObj = npcs:getByName(talk.npcName)
                if stateObj.anim then if npcObj then npcObj:setAnim(stateObj.anim) end end
            end
        end
    end
end

function talk:done()
    if talk.subConvo then
        talk.subConvo = nil
        talk.subInd = 0
        if talk.npcMap then -- go back to main conversation
            player:itemGetFinish(false)
            cam:fluxZoom("playerDialogue", 0.6)
            if talk.state > 0 then talk:start() end
        else
            player:itemGetFinish(true)
        end
    else
        talk.state = 0
        talk.npcMap = nil
        talk.basic = 1
        talk.lclTag = "dialogue"
        dialogue.talking = false
        player.state = 0
        player.winTimer = 0
        player.resource.timer = -1
        cam:fluxUnzoom(0.6)

        for i,npc in ipairs(npcs) do
            if npc.talking then npc:doneTalking() end
        end
    end
end

function talk:basicDone() -- unrelated to talk.basic lol
    talk.state = 0
    talk.basic = 1
    talk.lclTag = "dialogue"
    talk.npcMap = nil
    dialogue.talking = false
end

function talk:answer(ar)
    if not ar then return nil end
    local stateObj = talk.npcMap[talk.npcState]
    if stateObj.options then
        if ar == "yes" and stateObj.options.yes ~= nil then
            if stateObj.trade then
                local res = talk:trade(stateObj.trade)
                if res then -- if the trade is successful
                    data.states.npcs[talk.npcName] = stateObj.options.yes
                else
                    if stateObj.options.notEnough then
                        data.states.npcs[talk.npcName] = stateObj.options.notEnough
                    else
                        data.states.npcs[talk.npcName] = stateObj.options.no
                    end
                end
            elseif talk.basic then talk.basic = stateObj.options.yes
            else data.states.npcs[talk.npcName] = stateObj.options.yes end
        elseif ar == "no" and stateObj.options.no ~= nil then
            if talk.basic then talk.basic = stateObj.options.no
            else data.states.npcs[talk.npcName] = stateObj.options.no end
        end
    end
    talk:start()
end

function talk:trade(tradeObj)
    local res = false
    local rtype = dialogue.focusResourceCost
    local price = dialogue.focusPrice
    local itemId = dialogue.itemId

    local buyClass = "store"
    if dialogue.focusNpcName then
        if dialogue.focusNpcName:startswith("soil_") then buyClass = "soil" end
        if dialogue.focusNpcName:startswith("gemPedestal") then buyClass = "gemPedestal" end
    end

    if tradeObj then
        if tradeObj.resourceCost then rtype = tradeObj.resourceCost end
        if tradeObj.cost then price = tradeObj.cost end
        if tradeObj.itemId then itemId = tradeObj.itemId end
        buyClass = "trade"
    end

    if rtype and price then
        local myCount = resources:getCount(rtype)
        if myCount >= price then
            res = true
            if buyClass == "store" then
                talk:done()
                player:itemGet(dialogue.itemId)
                dj.play(sounds.misc.purchase, "static", "effect")

                for i,n in ipairs(shopItems) do
                    if n.id == dialogue.itemId then shopItems[i].dead = true end
                end
            elseif buyClass == "trade" then -- updates the npc state
                res = true
            elseif buyClass == "soil" then
                local soilId = dialogue.focusNpcName:sub(6)
                for i,sl in ipairs(soils) do
                    if sl.id == soilId then sl:plantSeeds() end
                end
            elseif buyClass == "gemPedestal" then
                if dialogue.focusNpcName then
                    for i,t in ipairs(trees) do
                        if t.uid and t.uid == dialogue.focusNpcName then
                            t:placeDiamond()
                        end
                    end
                end
            end

            for i,n in ipairs(data.items.resources) do
                if n.id == rtype then
                    data.items.resources[i].count = data.items.resources[i].count - price
                    if data.items.resources[i].count <= 0 then data.items.resources[i].count = 0 end
                end
            end
            player:showResource(rtype, {timer=0.65, myCount=true})
        elseif buyClass == "store" then
            dialogue:showMessage(lcl.narration.buy.notEnough)
        elseif buyClass == "soil" then
            dialogue:showMessage(lcl.narration.soil.notEnough)
        elseif buyClass == "gemPedestal" then
            dialogue:showMessage(lcl.narration.gemPedestal.notEnough)
        end
    end

    return res -- used for the trade version
end

function talk:update(dt)

end
