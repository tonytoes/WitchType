misc = {}

function misc:init()
    -- 11 intro 'hope' message timer
    -- 21 spawn large reward
    -- 101 eyeris intro
    misc.state = 0
    misc.timer = 0
    misc.special = 0 -- used for some events
    misc.lightningTrack = nil
end

function miscUpdate(dt)
    if globalStun > 0 then
        globalStun = globalStun - dt
    end

    if globalStun < 0 then
        globalStun = 0
    end

    if misc.timer > 0 then
        misc.timer = misc.timer - dt
    end

    if misc.timer < 0 then
        misc.timer = 0

        if gamestate == 0.2 then
            misc.state = 1
            startConversation(conversations.intro)
        end

        if misc.state == 11 then
            misc.state = 0
            print('showing goal')
            dialogue:showMessage(lcl.narration.goal .. '                                        ', nil, {fullCenter=true, showBox=false, doParse=false, autoScroll=true})
            dialogue.font = fonts.misc.hopeText
        end

        if misc.state == 21 then
            misc.state = 0
            if misc.reward == "lightning" then
                cover:start("cloudBossReward")
            end
        end

        if misc.state == 101 then -- eyeris eyeball
            misc.state = 0
            cover:start('eyeris')
        end
    end

    if loadedMap == "caves/c_marsh" then -- check for eyeris cutscene
        if not allEnemies['eyeris'] and misc.state ~= 101 then
            local pn = pins:getByName("i")
            if pn and distanceBetween(pn.x, pn.y, player:getX(), player:getY()) < 32 then
                misc.state = 101
                misc.timer = 8.6
                misc:spawnStuff('eyerisEyeIntro')
                sem:playSound(sounds.misc.spookyStart, {volume=1})
            end
        end
    end

    if misc.lightningTrack then
        local finished = true
        for i,l in ipairs(misc.lightningTrack) do
            if l.timer then
                finished = false
                if l.timer > 0 then l.timer = l.timer - dt end
                if l.timer < 0 then
                    if l.enemy and not l.enemy.dead and l.enemy.physics then
                        l.x = l.enemy.physics:getX()
                        l.y = l.enemy.physics:getY()
                    end
                    effects2:spawn("playerLightning", l.x, l.y)
                    l.timer = 0
                end
            end
        end
        if finished then misc.lightningTrack = nil end
    end
end

function misc:setAmethystCave()
    gameMap.dark = 40
    gameMap.darkType = "amethyst"
    gameMap.pierceVisible = true
    -- kill all enemies
    for i=#enemies,1,-1 do
        if enemies[i].physics ~= nil then
            enemies[i].physics:destroy()
        end
        table.remove(enemies, i)
    end
end

function misc:prepareLargeReward(id)
    misc.reward = id
    if id == "lightning" then
        misc.state = 21
        misc.timer = 5
    end
end

function misc:setFakeLayer(val)
    if val ~= nil then -- toggle
        gameMap.fakeLayer = val
    else
        gameMap.fakeLayer = not gameMap.fakeLayer
    end

    if gameMap.fakeLayer then
        for _,w in ipairs(waters) do
            if w.offFake then w.dead = true end
        end
        if gameMap.layers["Water"] then
            for i, obj in ipairs(gameMap.layers["Water"].objects) do
                if obj.properties.fake then
                    spawnWater(obj.x, obj.y, obj.width, obj.height, obj.type, {fake=true})
                end
            end
        end
    else
        for _,w in ipairs(waters) do
            if w.fake then w.dead = true end
        end
        if gameMap.layers["Water"] then
            for i, obj in ipairs(gameMap.layers["Water"].objects) do
                if obj.properties.offFake then
                    spawnWater(obj.x, obj.y, obj.width, obj.height, obj.type, {offFake=true})
                end
            end
        end
    end
end

function misc:spawnStuff(id)
    if id == "afterCloudBoss" then
        local myPin = pins:getByName("cloudBossPin")
        if myPin then
            effects2:spawn("simpleSpawn", myPin.x, myPin.y-16, {spawnWeapon="glassAxe"})
            effects2:spawn("simpleSpawn", myPin.x+16, myPin.y+16, {spawnWeapon="leaf"})
            effects2:spawn("simpleSpawn", myPin.x-16, myPin.y+16, {spawnWeapon="leaf"})
            effects2:spawn("simpleSpawn", myPin.x-48, myPin.y, {enemy={x=myPin.x-48, y=myPin.y, class="dummy"}})
            effects2:spawn("simpleSpawn", myPin.x+48, myPin.y, {enemy={x=myPin.x+48, y=myPin.y, class="dummy"}})
        end
    end
    if id == "eyerisEyeIntro" then
        local spawnVec = vector(360, 0)
        for i=1,72 do
            local thisVec = spawnVec * (math.random()/3 + 1)
            effects:spawn("eyeIntro", player:getX() + thisVec.x, player:getY() + thisVec.y)
            spawnVec = spawnVec:rotated(math.pi/36)
        end
    end
end

-- used for the multiple lightning strikes in a row
function misc:addLightning(x, y, time, en)
    if not misc.lightningTrack then misc.lightningTrack = {} end
    table.insert(misc.lightningTrack, {x=x, y=y, timer=time, enemy=en})
end

function misc:verifyAssist(willSave)
    if not data.assist then return end
    data.assist.enabled = false
    if data.assist.health ~= 0 or
        data.assist.weaponArmor ~= 0 or
        data.assist.weaponDamage ~= 0 or
        data.assist.resourceBonus ~= 0 or
        data.assist.movementSpeed ~= 0 or
        data.assist.gameSpeed ~= 0 then
            data.assist.enabled = true
    end
    if willSave then
        dataAssist = copy(data.assist)
        love.filesystem.write(data.config.fileNumber .. "_assist.lua", table.show(dataAssist, "dataAssist"))
        dataAssist = nil
    end
end

function misc:getAssist(id)
    if not data.assist or not data.assist.enabled then return 0 end
    if data.assist[id] ~= nil then return data.assist[id] end
    return 0
end

function misc:getResourceMult()
    local res = 1
    if allGems.amethyst then res = 0.25 end
    return res
end

function misc:getColorStrFromGem(gm)
    if gm == "ruby" then return "red" end
    if gm == "garnet" then return "orange" end
    if gm == "topaz" then return "yellow" end
    if gm == "emerald" then return "green" end
    if gm == "sapphire" then return "blue" end
    if gm == "amethyst" then return "purple" end
    return "white"
end

function misc:setColorFromColor(clr)
    local clrTbl = {1, 1, 1, 1}
    if clr == "red" then clrTbl = {203/255, 50/255, 50/255, 1} end
    if clr == "orange" then clrTbl = {239/255, 120/255, 39/255, 1} end
    if clr == "yellow" then clrTbl = {251/255, 242/255, 54/255, 1} end
    if clr == "green" then clrTbl = {45/255, 216/255, 132/255, 1} end
    if clr == "blue" then clrTbl = {54/255, 111/255, 243/255, 1} end
    if clr == "purple" then clrTbl = {165/255, 86/255, 255/255, 1} end
    love.graphics.setColor(clrTbl)
end
