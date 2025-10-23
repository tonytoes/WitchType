tileStates = {}

function tileStates:startMap()
    for i=1,gameMap.width do
        for j=1,gameMap.height do
            tileStates:spawn(i*16 - 8, j*16 - 8, i .. '-' .. j)
        end
    end
end

function tileStates:spawn(x, y, id)
    local tileState = {}
    tileState.x = x
    tileState.y = y
    tileState.id = id
    tileState.inWater = inWater(x, y, 3)
    tileState.timer = 0.25

    -- 0 = not active, not even close to the player
    -- 1 = within 256 pixels of the player, updating
    -- 2 = has line-of-sight to player
    tileState.state = 0

    function tileState:update(dt)
        self.timer = self.timer - dt
        if self.timer < 0 then
            self.timer = 0.25 -- evaluate tile every quarter second
            -- only need to do this if there is an enemy in state 10+ (pursuing or attacking)
            player.inCombat = false
            for _,e in ipairs(enemies) do if e.state >= 10 then player.inCombat = true end end

            if player.inCombat then
                local distToPlayer = distanceBetween(self.x, self.y, player:getX(), player:getY())
                if distToPlayer < 8 then
                    -- no need to look for the player, they're right on top of the tile
                    self.state = 2
                elseif distToPlayer < 256 then
                    -- only update tiles that are close to the player
                    self.state = 1
                    -- check line-of-sight to the player
                    if lookForPlayer(self.x, self.y, 96) then
                        self.state = 2 -- has line-of-sight
                    end
                else
                    self.state = 0
                end
            else
                self.state = 0
            end
        end
    end

    function tileState:draw()
        if self.state == 0 then love.graphics.setColor(1,1,1,0.25) end
        if self.state == 1 then love.graphics.setColor(120/255, 94/255, 240/255, 0.5) end
        if self.state == 2 then love.graphics.setColor(255/255, 176/255, 0, 1) end
        if self.inWater then love.graphics.setColor(0, 194/255, 255/255, 1) end
        love.graphics.circle("fill", self.x, self.y, 2)
        setWhite()
    end

    table.insert(tileStates, tileState)
end

function tileStates:update(dt)
    if client.active then return nil end
    for _,t in ipairs(tileStates) do
        t:update(dt)
    end
end

function tileStates:draw()
    for _,t in ipairs(tileStates) do
        t:draw()
    end
end

function tileStates:canSeePlayerList() -- list of indices
    local indList = {}
    for i,t in ipairs(tileStates) do
        if t.state == 2 then -- has LOS with player
            table.insert(indList, i)
        end
    end
    return indList
end

function tileStates:viablePursueTiles(x, y) -- list of indices
    local canSeePlayer = tileStates:canSeePlayerList()
    local viableTiles = {}
    local maxDist = distanceBetween(x, y, player:getX(), player:getY()) * 1.15
    for _,i in ipairs(canSeePlayer) do
        local t = tileStates[i]
        if distanceBetween(t.x, t.y, x, y) < maxDist then
            table.insert(viableTiles, i)
        end
    end
    return viableTiles
end

function tileStates:getClosestInd(x, y)
    local ctind = 1
    local cldist = 999999
    for i,t in ipairs(tileStates) do
        local dist = distanceBetween(t.x, t.y, x, y)
        if dist < cldist then
            ctind = i
            cldist = dist
        end
    end
    return ctind
end

-- given a point, return a list of tile indices that are within a certain distance
-- AND have LOS with the point
function getSightTileIndexList(x, y, dist)
    local indList = {}
    for i,t in ipairs(tileStates) do
        if distanceBetween(t.x, t.y, x, y) < dist then
            if not t.inWater and hasLineOfSight(x, y, t.x, t.y, dist) then
                table.insert(indList, i)
            end
        end
    end
    return indList
end
