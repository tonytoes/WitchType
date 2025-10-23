Dir = {}
Dir.up = 1
Dir.right = 2
Dir.down = 3
Dir.left = 4

function getVecFromDir(dir)
    local vec = vector(0, 0)
    if dir == Dir.up then
        vec = vector(0, -1)
    elseif dir == Dir.right then
        vec = vector(1, 0)
    elseif dir == Dir.down then
        vec = vector(0, 1)
    elseif dir == Dir.left then
        vec = vector(-1, 0)
    else
        print("Error! Invalid Dir")
    end
    return vec
end

function getVecFromDirStr(dir)
    local vec = vector(0, 0)
    if dir == "up" then
        vec = vector(0, -1)
    elseif dir == "right" then
        vec = vector(1, 0)
    elseif dir == "down" then
        vec = vector(0, 1)
    elseif dir == "left" then
        vec = vector(-1, 0)
    else
        print("Error! Invalid Dir")
    end
    return vec
end

function getFakeDirFromVector(vec, rotateMargin)
    local rad = math.atan2(vec.y, vec.x)
    local dirX = 0
    local dirY = 0
    if rad >= rotateMargin*-1 and rad < math.pi/2 then
        dirX = 1
        dirY = 1
    elseif (rad >= math.pi/2 and rad < math.pi) or (rad < (math.pi - rotateMargin)*-1) then
        dirX = -1
        dirY = 1
    elseif rad < 0 and rad > math.pi/-2 then
        dirX = 1
        dirY = -1
    else
        dirX = -1
        dirY = -1
    end
    return vector(dirX, dirY)
end

function getRadFromVector(vec)
    return math.atan2(vec.y, vec.x)
end

function getOppDir(dir)
    local newDir = dir + 2
    if newDir > 4 then newDir = newDir - 4 end
    return newDir
end

-- Returns the radian equivalent for a given direction string
function getRadianRotation(direction)

    if direction == "right" then
        return 0
    elseif direction == "left" then
        return math.pi
    elseif direction == "up" then
        return (math.pi/2)*3
    elseif direction == "down" then
        return math.pi/2
    else
        return 0
    end

end


-- Returns the radian equivalent for a given direction string
function getDirectionVector(direction)

    if direction == "right" then
        return vector(1, 0)
    elseif direction == "left" then
        return vector(-1, 0)
    elseif direction == "up" then
        return vector(0, -1)
    elseif direction == "down" then
        return vector(0, 1)
    else
        return vector(1, 0)
    end

end

-- Returns the rotation needed for a given direction
function getRotationFromDir(direction)

    if direction == "right" then
        return 0
    elseif direction == "left" then
        return math.pi
    elseif direction == "up" then
        return math.pi/-2
    elseif direction == "down" then
        return math.pi/2
    else
        return 0
    end

end

function getRotationFromVector(vec)
    return math.atan2(vec.y, vec.x)
end

function getVectorFromRad(rad)
    return vector(math.cos(rad), math.sin(rad)):normalized()
end

function distanceBetween(x1, y1, x2, y2)
    return math.sqrt( (x2 - x1)^2 + (y2 - y1)^2 )
end

function getPlayerToSelfVector(x, y)
    return vector(x - player:getX(), y - player:getY()):normalized()
end

function getSelfToPlayerVector(x, y)
    return vector(player:getX() - x, player:getY() - y):normalized()
end

function getFromToVector(fromX, fromY, toX, toY)
    return vector(toX - fromX, toY - fromY):normalized()
end

function toMouseVector(px, py)
    local mx, my = cam:mousePosition()
    return vector.new(mx-px, my-py):normalized()
end

function inRectangle(x, y, rectX, rectY, width, height)
    if x >= rectX and x <= rectX + width and y >= rectY and y <= rectY + height then
        return true
    else
        return false
    end
end

function setWhite()
    love.graphics.setColor(1, 1, 1, 1)
end

function midpoint(x1, y1, x2, y2)
    local p = {}
    p.x = (x1+x2)/2;
    p.y = (y1+y2)/2;
    return p;
end

function updateTimer(v, dt)
    if v > 0 then
        v = v - dt
    elseif v < 0 then
        v = 0
    end
    return v
end

function getPerfectY(destY)
    local tileNum = math.floor(destY / 16)
    return (tileNum * 16) + 8.7
end

function secondsToTime(sec)
    local minutes = math.floor(sec/60)
    local seconds = math.floor(sec%60)
    if seconds < 10 then seconds = "0" .. seconds end
    return minutes .. ":" .. seconds
end

function dirToInt(dir)
    if dir == "up" then
        return -1
    elseif dir == "down" then
        return 1
    elseif dir == "right" then
        return 1
    elseif dir == "left" then
        return -1
    else
        return dir
    end
end

-- 'startswith' courtesy of StackOverflow
-- https://stackoverflow.com/questions/22831701/lua-read-beginning-of-a-string
string.startswith = function(self, str) 
    return self:find('^' .. str) ~= nil
end

-- 'spairs' courtesy of StackOverflow
-- https://stackoverflow.com/questions/15706270/sort-a-table-in-lua
function spairs(t, order)
    -- collect the keys
    local keys = {}
    for k in pairs(t) do keys[#keys+1] = k end

    -- if order function given, sort by it by passing the table and keys a, b,
    -- otherwise just sort the keys 
    if order then
        table.sort(keys, function(a,b) return order(t, a, b) end)
    else
        table.sort(keys)
    end

    -- return the iterator function
    local i = 0
    return function()
        i = i + 1
        if keys[i] then
            return keys[i], t[keys[i]]
        end
    end
end

-- adapted from StackOverflow
-- https://stackoverflow.com/questions/401847/circle-rectangle-collision-detection-intersection
function circleVsRect(circle, rect)
    -- circle: { x, y, r }
    -- rect: { x, y, width, height }
    local circleDistance = {}
    circleDistance.x = math.abs(circle.x - (rect.x+rect.width/2));
    circleDistance.y = math.abs(circle.y - (rect.y+rect.height/2));

    if (circleDistance.x > (rect.width/2 + circle.r)) then return false end
    if (circleDistance.y > (rect.height/2 + circle.r)) then return false end

    if (circleDistance.x <= (rect.width/2)) then return true end
    if (circleDistance.y <= (rect.height/2)) then return true end

    cornerDistance_sq = (circleDistance.x - rect.width/2)^2 +
                         (circleDistance.y - rect.height/2)^2

    return (cornerDistance_sq <= (circle.r^2))
end

-- 'copy' courtesy of StackOverflow
-- https://stackoverflow.com/questions/640642/how-do-you-copy-a-lua-table-by-value
function copy(obj, seen)
    if type(obj) ~= 'table' then return obj end
    if seen and seen[obj] then return seen[obj] end
    local s = seen or {}
    local res = setmetatable({}, getmetatable(obj))
    s[obj] = res
    for k, v in pairs(obj) do res[copy(k, s)] = copy(v, s) end
    return res
  end

-- 'split' courtesy of StackOverflow
-- https://stackoverflow.com/questions/1426954/split-string-in-lua
function split (inputstr, sep)
    if sep == nil then
            sep = "%s"
    end
    local t={}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
            table.insert(t, str)
    end
    return t
end

-- disp_time courtesy of StackOverflow
-- https://stackoverflow.com/questions/45364628/lua-4-script-to-convert-seconds-elapsed-to-days-hours-minutes-seconds
function disp_time(time, shortVal)
    local hours = math.floor(math.mod(time, 86400)/3600)
    local minutes = math.floor(math.mod(time,3600)/60)
    local seconds = math.floor(math.mod(time,60))

    local hund = math.floor((time-math.floor(time))*100)

    if shortVal and shortVal == 4 then
        return string.format("%01d:%02d:%02d",hours,minutes,seconds)
    end
    if shortVal and shortVal == 3 then return string.format("%02d:%02d.%02d",minutes,seconds,hund) end
    if shortVal and shortVal == 2 then return string.format("%02d.%02d",seconds,hund) end
    return string.format("%02d:%02d:%02d.%02d",hours,minutes,seconds,hund)
  end

-- dump courtesy of StackOverflow
-- converts a table to a string, so you can print(dump(myTable))
-- https://stackoverflow.com/questions/9168058/how-to-dump-a-table-to-console
function dump(o)
    if type(o) == 'table' then
       local s = '{ '
       for k,v in pairs(o) do
          if type(k) ~= 'number' then k = '"'..k..'"' end
          s = s .. '['..k..'] = ' .. dump(v) .. ','
       end
       return s .. '} '
    else
       return tostring(o)
    end
 end

-- chatgpt
function rotate_vector_towards_point(input_vector, reference_x, reference_y, point_x, point_y, rotation_amount)
    -- Create a copy of the input vector
    local vector_copy = {x = input_vector.x, y = input_vector.y}

    -- Calculate vector from the reference point to the new point
    local target_vector = {x = point_x - reference_x, y = point_y - reference_y}

    -- Normalize both vectors
    local vector_length = math.sqrt(vector_copy.x * vector_copy.x + vector_copy.y * vector_copy.y)
    local target_length = math.sqrt(target_vector.x * target_vector.x + target_vector.y * target_vector.y)
    vector_copy.x = vector_copy.x / vector_length
    vector_copy.y = vector_copy.y / vector_length
    target_vector.x = target_vector.x / target_length
    target_vector.y = target_vector.y / target_length

    -- Calculate the dot product
    local dot_product = vector_copy.x * target_vector.x + vector_copy.y * target_vector.y

    -- Check if the vector is already pointing towards the new point
    if dot_product < 1 then
        -- Calculate the cross product
        local cross_product = vector_copy.x * target_vector.y - vector_copy.y * target_vector.x

        -- Determine the rotation direction
        local rotation_direction = 1  -- 1 for counterclockwise, -1 for clockwise
        if cross_product < 0 then
            rotation_direction = -1
        end

        -- Calculate the rotation angle
        local rotation_angle = rotation_direction * rotation_amount

        -- Perform the rotation using a rotation matrix
        local rotated_vector = vector(
            vector_copy.x * math.cos(rotation_angle) - vector_copy.y * math.sin(rotation_angle),
            vector_copy.x * math.sin(rotation_angle) + vector_copy.y * math.cos(rotation_angle)
        )

        return rotated_vector
    end

    -- If the vector is already pointing towards the new point, return the input vector as is
    return input_vector
end

function capitalizeFirstLetter(str)
    return (str:gsub("^%l", string.upper))
end

function capitalizeAllLetters(str)
    return str:gsub("%a", string.upper)
end

function isBossFight()
    local isBoss = false
    for i,e in ipairs(enemies) do
        if e.boss then
            isBoss = true
        end
    end
    return isBoss
end

-- function that rounds a decimal number into a rounded string version to the hundredths place
function round(num)
    return string.format("%.2f", num)
end

function lookForPlayer(selfX, selfY, dist, lookScaleX)
    if player.state >= 14 and player.state < 15 then return false end
    if selfX == nil or selfY == nil then return false end
    local distBet = distanceBetween(selfX, selfY, player:getX(), player:getY())
    if distBet > dist then return false end
    if distBet <= 0 then return true end

    -- Only look at player if they are in the direction enemy is facing
    if lookScaleX and lookScaleX == 1 and selfX > player:getX() then return false end
    if lookScaleX and lookScaleX == -1 and selfX < player:getX() then return false end

    local obstacles = world:queryLine(selfX, selfY, player:getX(), player:getY(), {'Wall'})
    return #obstacles == 0
end

function hasLineOfSight(fromX, fromY, toX, toY)
    if distanceBetween(fromX, fromY, toX, toY) == 0 then return true end
    local obstacles = world:queryLine(fromX, fromY, toX, toY, {'Wall'})
    return #obstacles == 0
end

function tableContainsValue(tbl, val)
    for i,v in ipairs(tbl) do
        if v == val then return true end
    end
    return false
end

-- prints all values stored in the table
function printTable(tbl)
    for k,v in pairs(tbl) do
        print(k, v)
    end
end

function myPrint(str, id) -- if there's an id, only will print if debugging matches this ID
    if debugging then
        if id then if debugging == id then print(str) end
        else print(str) end
    end
end

function getHourDifference(time1, time2)
    -- time1 and time2 are os.time() values, where time1 is the earlier of the two
    -- this function returns the difference in hours between the two times
    return ((time2 - time1) / 3600)
end
