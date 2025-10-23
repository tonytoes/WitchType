chests = {}

function chests:getStats(c)
    c.size = "small"
    c.loot = {
        class = "resource",
        id = "gold",
        count = 5
    }

    if c.id == 'cloudColor' then c.loot = "dye_yellow"
    elseif c.id == 'cloudFight' then c.loot = "gauntlets" c.size = "big"
    elseif c.id == 'swampFight' then c.loot = "dye_blue"
    elseif c.id == 'swampCaveFight' then c.loot = "dye_purple"
    elseif c.id == 'cloudCave' then c.loot = "dye_orange"
    end

    return c
end

function spawnChest(x, y, id, args)
    if args and args.bossCheck then
        -- this chest is a boss reward. Only spawn it in if the boss has been defeated
        if allEnemies[args.bossCheck] then
            -- boss has been defeated
        else return nil end
    end

    if args and args.challengeCheck then
        -- this chest is a challenge reward. Only spawn it in if the challenge was cleared
        if data.states.challenges[args.challengeCheck] then
            -- challenge was cleared
        else return nil end
    end

    -- arbitrarily move the chest up 4 pixels
    y = y - 4

    local chest = {}
    chest.chest = true -- used for parent stuff
    chest.state = 0
    chest.id = id
    chest.centerX = x
    chest.centerY = y
    chest.size = "small"
    chest.layer = -1
    chest.electrified = false
    chest.timer = 0
    chest.freezeOnOpen = true

    chest = chests:getStats(chest)

    -- copy over all args properties
    if args then
        for k,v in pairs(args) do
            chest[k] = v -- even though k is the index, I believe the index should be strings, so this should apply all properties
        end
    end

    if chest.lootId then -- passed in through Tiled (args)
        if chest.lootClass then
            chest.loot = {
                class = chest.lootClass,
                id = chest.lootId,
                count = chest.lootCount
            }
        else
            chest.loot = chest.lootId
        end
    end

    --if chest.loot:startswith("money") then chest.freezeOnOpen = false end

    npcs:spawn("chest-" .. id, x, y-2, {visible=false, parent=chest, customDestX=0, customDestY=20, finishLookY=-1})

    -- if the id is in this list, the chest was already opened
    if data.states.chests[id] then
        chest.state = 2
    end

    chest.spr = sprites.chests[chest.size].closed
    if chest.state >= 1 then chest.spr = sprites.chests[chest.size].open end
    chest.width = chest.spr:getWidth()
    chest.height = chest.spr:getHeight()
    chest.x = x - chest.width/2
    chest.y = y - chest.height/2

    chest.shadowSpr = sprites.effects.shadows.chestSmall
    chest.shadowOffY = 5
    if chest.width > 21 then chest.shadowSpr = sprites.effects.shadows.chestBig chest.shadowOffY = 6 end

    -- Wall spawned overtop of the chest, passed chest as parent
    spawnWall(nil, chest.x, chest.y + (chest.height-10), chest.width, 10, nil, nil, chest)

    if chest.electrified then
        chest.electricSheet = sprites.effects.smallCharge
        chest.electricGrid = anim8.newGrid(16, 16, chest.electricSheet:getWidth(), chest.electricSheet:getHeight())
        chest.electricAnim = anim8.newAnimation(chest.electricGrid('1-9', 1), 0.1, function() chest.electricRot = math.random() * math.pi * 2 end)
        chest.electricRot = 0
    end

    function chest:interact()
        if self.state == 0 and not self.electrified then
            self.state = 0.5 -- being opened

            player.focusX = self.centerX
            player.focusY = self.centerY + 11
            cam:fluxZoom("focusFocus", 0.7)

            local destX = self.centerX
            local destY = self.centerY + 14
            local destTime = 0.5
            self.timer = destTime + 0.1

            if distanceBetween(player:getX(), player:getY(), destX, destY) < 2 then
                player:cutscene(vector(0, -1))
            else
                player:cutsceneWalk(destX, destY, destTime, {finalY = -1})
            end
        end
    end

    function chest:update(dt)
        --if distanceBetween(self.x+self.width/2, self.y+self.height/2, player:getX(), player:getY()) < 24 then
            --self:interact()
        --end

        if self.timer > 0 then
            self.timer = self.timer - dt
            if self.timer < 0 then
                self.timer = 0
                if self.state == 0.5 then -- being opened
                    self:open()
                elseif self.state == 1 then -- finished opening, no scene
                    self.state = 2
                    if not self.freezeOnOpen and player.state ~= 16 then -- no itemget cutscene
                        cam:fluxUnzoom(0.75)
                        player.state = 0
                    end
                end
            end
        end

        if self.electrified then
            self.electricAnim:update(dt)
        end
    end

    function chest:spawnLoot()
        if type(self.loot) == "string" then
            if self.loot:startswith("money") then
                local money = tonumber(self.loot:sub(6))
                if money then
                    for i=1,money do
                        local spawnDir = vector(25 + math.random(0, 10), 0):rotated(math.random()*math.pi*-1)
                        loots:spawn("coin", self.centerX, self.centerY, {dir=spawnDir, bounce=true})
                    end
                end            
            else
                loots:spawn(self.loot, self.centerX, self.centerY, {dir=vector(0, 14), bounce=true, chest=true})
            end
        elseif type(self.loot) == "table" then
            if self.loot.class == "resource" then
                self.freezeOnOpen = false
                if self.loot.count and self.loot.count >= 1 then
                    for i=1,self.loot.count do
                        local spawnDir = vector(25 + math.random(0, 10), 0):rotated(math.random()*math.pi*-1)
                        resources:spawn(self.loot.id, player:getX(), player:getY(), {dir=spawnDir, magnet=true})
                    end
                else

                end
            elseif self.loot.class == "message" and self.loot.id then
                local mstr = lcl.narration[self.loot.id]
                effects:spawn("tutorial", self.centerX, self.centerY - 22, {text=mstr})
                cutscene:returnToPlayer()
            else
            end
        end
    end

    function chest:open()
        self.state = 1
        self.spr = sprites.chests[self.size].open
        dj.play(sounds.items.chest, "static", "effect")
        shake:standard(1)
        data.states.chests[self.id] = true
        self:spawnLoot()

        self.timer = 0.5
    end

    function chest:draw()
        setWhite()
        love.graphics.draw(self.shadowSpr, self.centerX, self.centerY + self.shadowOffY, 0, 1, 1, self.shadowSpr:getWidth()/2, self.shadowSpr:getHeight()/2)
        love.graphics.draw(self.spr, self.x, self.y)

        if self.electrified then
            local offX = 0
            local scl = 1.1
            if self.size == "big" then offX = 2 scl = 1.75 end
            self.electricAnim:draw(self.electricSheet, self.centerX, self.centerY, self.electricRot, scl, scl, 8, 8)
        end
    end
    
    table.insert(chests, chest)
end

function chests:update(dt)
    for _,c in ipairs(chests) do
        c:update(dt)
    end
end

function chests:draw(layer)
end

function chests:getBigLoot(id)
    if id == 'test2' then
        return sprites.items.boomerang
    end
end
