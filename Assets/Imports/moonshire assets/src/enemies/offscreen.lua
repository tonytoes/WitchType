offscreen = {}

function offscreen:init()
    offscreen.timer = 0
    offscreen.timerAtt = false -- execute attack when timer hits 0
    offscreen.startBuffer = 0
    offscreen.endBuffer = 0
    offscreen.repeatCounter = 0

    offscreen.attObj = {}
    offscreen.attMap = {}
    offscreen.attMapInd = 0 -- 0 when not in progress
end

function offscreen:attack(attObj)
    if not attObj then return nil end
    offscreen.attObj = attObj

    -- attObj has id and flavor
    if attObj.id == "effectAtPlayer" then
        effects:spawn(attObj.flavor, player:getX(), player:getY())
    end

    if attObj.id == "effectAtPin" or attObj.id == "enemyAtPin" then
        for i, v in ipairs(pins) do
            local spawnHere = false
            
            if attObj.pinId then
                if type(attObj.pinId) == "table" then
                    for j, w in ipairs(attObj.pinId) do
                        if w == v.name then
                            spawnHere = true
                        end
                    end
                elseif attObj.pinId == v.name then
                    spawnHere = true
                end
            end
            if attObj.pinGroup then
                for j, w in ipairs(pins) do
                    local groupList = w.group:split(",")
                    for k, x in ipairs(groupList) do
                        if x == attObj.pinGroup then spawnHere = true end
                    end
                end
            end

            if spawnHere then
                if attObj.id == "effectAtPin" then
                    effects:spawn(attObj.flavor, v.x, v.y)
                elseif attObj.id == "enemyAtPin" then
                    spawnEnemy(v.x, v.y, attObj.flavor, {useSpecialIntro = true})
                end
            end
        end
    end

    if attObj.totalTimes then
        if offscreen.repeatCounter < attObj.totalTimes-1 then
            offscreen.repeatCounter = offscreen.repeatCounter + 1
            offscreen.timer = 1
            if attObj.interval then offscreen.timer = attObj.interval end
        else
            offscreen.timer = 0
            offscreen.repeatCounter = 0
        end
    end

    if offscreen.repeatCounter == 0 then
        if offscreen.attMapInd > 0 and offscreen.attMapInd < #offscreen.attMap then
            offscreen.attMapInd = offscreen.attMapInd + 1
            offscreen.timer = 1
            if offscreen.attObj.bufferTime then offscreen.timer = offscreen.attObj.bufferTime end
            local attObj = offscreen.attMap[offscreen.attMapInd]
            offscreen.attObj = attObj
            offscreen.timerAtt = true
        end
    end

end

function offscreen:startAttMap(map, args)
    if not map then return nil end
    offscreen.attMap = map
    offscreen.attMapInd = 1 if args and args.startInd then offscreen.attMapInd = args.startInd end
    local attObj = offscreen.attMap[offscreen.attMapInd]
    offscreen:attack(attObj)
end

function offscreen:momFlowerAttack()
    local attMap = {
        {
            id = "momFlowers",
            flavor = "playerPosition",
            bufferTime = 1,
            repeatAttack = 6
        }
    }    
end

function offscreen:update(dt)
    if offscreen.timer > 0 then
        offscreen.timer = offscreen.timer - dt
        if offscreen.timer < 0 then
            if offscreen.repeatCounter > 0 or offscreen.timerAtt then
                offscreen.timerAtt = false
                offscreen:attack(offscreen.attObj)
            else
                offscreen.timer = 0
            end
        end
    end
end

function offscreen:draw()

end
