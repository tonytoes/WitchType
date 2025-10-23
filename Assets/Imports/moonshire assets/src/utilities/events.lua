events = {}

function events:start(eventList)
    if not eventList then return nil end
    for k, v in pairs(eventList) do
        if k == "soundEffect" then
            sem:playSound(v)
        elseif k == "music" then
            startMusic(v, true)
        elseif k == "triggerBoss" then
            enemies:triggerBoss()
        elseif k == "setCutsceneTimer" then
            cutscene.timer = v
        elseif k == "shiftFocusY" then
            player.focusY = player.focusY + v
        elseif k == "spawnLoot" then
            loots:spawn(v, player.focusX, player.focusY)
        elseif k == "spawnMapWeapon" then
            if gameMap.layers["Weapons"] then
                for i, obj in ipairs(gameMap.layers["Weapons"].objects) do
                    if not v or (v and obj.name == v) then
                        weapons:spawn(obj.name, obj.x, obj.y, obj.properties)
                    end
                end
            end
        elseif k == "destroyParticles" then
            particles:destroyAll()
        elseif k == "setBackground" then
            background:set(v)
        elseif k == "setFakeLayer" then
            misc:setFakeLayer(v)
        elseif k == "resetNpcs" then
            removeTable(npcs)
            weapons:removeNpcWeapons()
            if gameMap.layers["NPC"] then
                for i, obj in ipairs(gameMap.layers["NPC"].objects) do
                    npcs:spawn(obj.name, obj.x, obj.y, obj.properties)
                end
                talk:checkAllNpcRelays()
            end
        elseif k == "resetElevators" then
            print('resetting elevators')
            removeTable(elevators)
            if gameMap.layers["Elevators"] then
                for i, obj in ipairs(gameMap.layers["Elevators"].objects) do
                    elevators:spawn(obj.name, obj.x, obj.y, obj.properties)
                end
            end
        elseif k == "talkToNpc" then
            print(v)
            local thenpc = npcs:getByName(v)
            if thenpc then
                player:setPosition(thenpc.x - 32, thenpc.y)
                cam:fluxZoom()
                cutscene:finish()
                thenpc:talk()
            end
        elseif k == "cancelCutscene" then
            cutscene:basicFinish()
        elseif k == "playerState" then
            player.state = v
        elseif k == "endDialogue" then
            talk:done()
        elseif k == "balloonGameStart" then
            spawnChallenge("balloonGame", 0, 0)
        elseif k == "changeMap" then
            loadMap(v)
        elseif k == "playerX" then
            player:setX(v)
        elseif k == "playerY" then
            player:setY(v)
        elseif k == "camX" then
            cam.x = v
            cam:lookAt(cam.x, cam.y)
        elseif k == "camY" then
            cam.y = v
            cam:lookAt(cam.x, cam.y)
        elseif k == "dialogueBuy" then
            talk:trade()
        elseif k == "showMyResources" then
            if type(v) == "string" then
                player:showResource(v, {timer=999, myCount=true})
            else
                player:showResource(dialogue.focusResourceCost, {timer=999, myCount=true})
            end
        elseif k == "hideMyResources" then
            player.resource.timer = -1
        elseif k == "blacksmithStart" then
            talk:basicDone()
            data.states.misc.greatsword = true
            data.states.npcs["blacksmith"] = data.states.npcs["blacksmith"] + 1
            cover:start("blacksmith")
        end
    end
end
