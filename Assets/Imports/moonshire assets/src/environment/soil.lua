soils = {}

function soils:spawn(id, x, y, args)
    local soil = {}
    soil.id = id
    soil.x = x
    soil.y = y
    soil.args = args
    soil.state = 0 -- 0: empty, 1: planting, 2: planted, 3: grown
    soil.spr = sprites.environment.dirt
    soil.spr2 = sprites.environment.dirt2 -- overlap
    soil.npcName = "soil_" .. soil.id
    soil.filled = false

    -- define these in Tiled
    soil.plant = "shrub"
    soil.cost = 3 -- assumes to be seeds
    soil.rewardType = "resource"
    soil.rewardFlavor = "gold"
    soil.rewardCount = 3
    soil.sceneDur = 4

    soil.animTimer = 0
    soil.animCount = 0
    soil.animMax = 3

    soil.seeds = {} -- list of simple objects for the planting animation
    soil.seedTimer = 0
    soil.seedCount = 0

    -- copy over all args properties
    if args then
        for k,v in pairs(args) do
            soil[k] = v -- even though k is the index, I believe the index should be strings, so this should apply all properties
        end
    end

    if soil.reward then soil.rewardFlavor = soil.reward end

    if data.states.misc["soil-" .. soil.id] then
        soil.state = data.states.misc["soil-" .. soil.id]
    end

    if soil.state == 0 then
        npcs:spawn(soil.npcName, x, y, {visible=false, talkYoff=-18, parent=soil, talkDist=16, talkCushion=18})
    end

    if id == "eyeris" then
        soil.plant = "eyerisElevator"
        soil.rewardType = "none"
    end

    function soil:spawnReward()
        if self.rewardType then
            if self.rewardType == "resource" then
                while self.rewardCount > 0 do
                    local vec = getFromToVector(player:getX(), player:getY(), self.x, self.y) * math.random(22, 42)
                    local rotAmt = math.random() * math.pi/2.5
                    if math.random() > 0.5 then rotAmt = -rotAmt end
                    vec:rotateInplace(rotAmt)
                    resources:spawn(self.rewardFlavor, self.x, self.y, {dir=vec})
                    self.rewardCount = self.rewardCount - 1
                end
            end
        end
    end

    function soil:grow(slow)
        if slow then self.state = 2 end
        if self.plant == "eyerisElevator" then
            effects:spawn("leavesElevatorGrow", self.x, self.y)
            self.dead = true
        elseif self.plant == "tree" then
            spawnTree(self.x, self.y-2, "blossom", "soil-" .. self.id, {fruit=true, grow=slow})
        elseif self.plant == "climbVine" then
            walls:deleteByName(self.id)
            self.margin = 26
            self.animMax = 3 -- number of vines to create
            if slow then
                self.animTimer = -1
                self.animCount = 0
            else
                for i=1,self.animMax do
                    local scX = 1 if i % 2 == 0 then scX = -1 end
                    spawnPlant(self.plant, self.x, self.y + ((i-1)*self.margin), {flipX=scX}) -- insta grow vines on room start
                end
            end
            spawnPlant(self.plant, self.x, self.y, {grow=slow})
        else
            spawnPlant(self.plant, self.x, self.y, {grow=slow})
        end

        if slow then self:spawnReward() end
    end

    if soil.state >= 3 then soil:grow(false) end

    function soil:interact()
        dialogue:setFocus({ price=self.cost, resourceCost="seed", npcName=self.npcName })
        talk:start("soil", {basic=true, narration=true})
    end

    function soil:plantSeeds()
        talk:done()
        cutscene:start("quickLook", {skipBars=true, lookAtX=self.x, lookAtY=self.y, lookDur=self.sceneDur})
        self.state = 1 -- planting
        self.seedCount = self.cost
        self.seedTimer = 0.5

        for i,n in ipairs(npcs) do
            if n.name == self.npcName then
                n.dead = true
            end
        end
    end
    
    function soil:spawnSeed()
        local sd = {}
        sd.spr = sprites.items.resources["seed" .. math.random(1,2)]
        sd.x = self.x
        sd.y = self.y + 2
        sd.yOff = -24
        flux.to(sd, 0.5, {yOff = 0}):ease("quadin"):oncomplete(function() sd.dead = true end)
        table.insert(self.seeds, sd)
    end

    function soil:update(dt)
        if self.seedTimer > 0 then self.seedTimer = self.seedTimer - dt end
        if self.state == 1 then
            if self.seedTimer < 0 then
                self.seedCount = self.seedCount - 1
                self:spawnSeed()
                self.seedTimer = 0.3
                if self.seedCount <= 0 then
                    self.state = 1.5
                    self.seedTimer = 2
                end
            end
        elseif self.state == 1.5 then
            if self.seedTimer < 0 then
                self.state = 2
                self.seedTimer = 1 -- used for transition to grown state
                soil:grow(true)
            end
        elseif self.state == 2 then
            if self.seedTimer < 0 then
                self.state = 3
                data.states.misc["soil-" .. self.id] = self.state
            end
        elseif self.state == 3 and not self.filled then
            self.filled = true
            self.spr = sprites.environment.dirtDone
            self.spr2 = nil
            talk:checkAllNpcRelays() -- needed to state update after planting
        end

        if #self.seeds > 0 then
            for i,sd in ipairs(self.seeds) do
                if sd.dead then table.remove(self.seeds, i) end
            end
        end

        if self.animTimer ~= 0 then self.animTimer = self.animTimer - dt end
        if self.animTimer < 0 then
            self.animCount = self.animCount + 1
            self.animTimer = 0.2
            if self.margin then
                local scX = 1 if self.animCount % 2 == 0 then scX = -1 end
                spawnPlant(self.plant, self.x, self.y + ((self.animCount-1)*self.margin), {grow=true, flipX=scX})
            end
            if self.animCount >= self.animMax then
                self.animCount = 0
                self.animTimer = 0
                self.animMax = 0
            end
        end
    end

    function soil:draw()
        setWhite()

        -- base layer of the soil
        love.graphics.draw(self.spr, self.x, self.y, nil, nil, nil, self.spr:getWidth()/2, self.spr:getHeight()/2)

        -- draw seeds
        if #self.seeds then
            for _,sd in ipairs(self.seeds) do
                love.graphics.draw(sd.spr, sd.x, sd.y + sd.yOff, nil, nil, nil, sd.spr:getWidth()/2, sd.spr:getHeight()/2)
            end
        end

        -- overlap layer of the soil
        if self.spr2 then love.graphics.draw(self.spr2, self.x, self.y, nil, nil, nil, self.spr:getWidth()/2, self.spr:getHeight()/2) end
    end

    table.insert(soils, soil)
end

function soils:update(dt)
    for i, soil in ipairs(soils) do
        soil:update(dt)
    end

    for i=#soils,1,-1 do
        if soils[i].dead then
            table.remove(soils, i)
        end
    end
end

function soils:draw()
    for i, soil in ipairs(soils) do
        soil:draw()
    end
end
