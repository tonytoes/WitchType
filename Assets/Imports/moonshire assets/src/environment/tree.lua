trees = {}

function spawnTree(x, y, treeType, class, args)
    local tree = {}
    tree.x = x
    tree.y = y
    tree.name = treeType
    tree.class = class
    tree.width = 12
    tree.height = 12
    tree.frameW = 12
    tree.frameH = 12
    tree.sprite = sprites.environment.trees[treeType]
    tree.shadowSpr = sprites.effects.shadows.tree
    tree.shadowYOff = 2.5
    tree.layer = 1
    tree.yOff = 0 -- oy is height - yOff. Aka, it moves the sprite down this number of pixels
    tree.shadowSc = 1
    tree.smYOff = 0
    tree.scaleX = 1
    tree.scaleY = 1
    tree.fruit = nil
    tree.fruitRespawnTime = 600 -- seconds

    tree.floatTime = 0.7 + math.random()*0.2
    tree.floatY = 0
    tree.floatMax = 1

    -- copy over all args properties
    if args then
        for k,v in pairs(args) do
            tree[k] = v -- even though k is the index, I believe the index should be strings, so this should apply all properties
        end
    end

    if tree.class and tree.class == "fake" then tree.fake = true end

    -- call this function if the tree floats, to start the cycle
    function tree:floatUp(dest, start)
        local time = self.floatTime
        if start then time = math.random() end
        self.tween = flux.to(self, time, {floatY = dest}):ease("sineinout"):oncomplete(function() self:floatDown(self.floatMax*-1) end)
    end

    function tree:floatDown(dest)
        self.tween = flux.to(self, self.floatTime, {floatY = dest}):ease("sineinout"):oncomplete(function() self:floatUp(self.floatMax) end)
    end

    if parent then tree.parent = parent end

    if tree.name == "standard" or tree.name == "blossom" then
        tree.frameW = 44 tree.frameH = 54
        tree.yOff = 8
        tree.grid = anim8.newGrid(tree.frameW, tree.frameH, tree.sprite:getWidth(), tree.sprite:getHeight())
        tree.anim = anim8.newAnimation(tree.grid('1-4', 1), 0.2 + math.random()*0.03)
    end

    if tree.name == "big" then
        tree.width = 18
        tree.height = 14
        tree.yOff = 9
        tree.shadowSpr = sprites.effects.shadows.bigTree
        tree.shadowYOff = 2.5

        tree.frameW = 78 tree.frameH = 144
        tree.grid = anim8.newGrid(tree.frameW, tree.frameH, tree.sprite:getWidth(), tree.sprite:getHeight())
        tree.anim = anim8.newAnimation(tree.grid('1-4', 1), 0.2 + math.random()*0.03)
    end

    if tree.name == "raft" then
        tree.sprite = sprites.environment.trees.raft
        tree.width = 28
        tree.height = 16
        tree.yOff = 8
        tree.float = true
        tree.shadowSpr = sprites.blank
    end

    if tree.name == "ship" then
        tree.sprite = sprites.environment.trees.ship
        tree.width = 77
        tree.height = 20
        tree.yOff = 12
        tree.float = true
        tree.shadowSpr = sprites.blank

        if tree.class and tree.class == "left" then tree.scaleX = -1 end
    end

    if tree.name:startswith("fir") then
        tree.width = 8
        tree.height = 8
        tree.yOff = 10
        tree.shadowSpr = sprites.effects.shadows.tree
        tree.shadowYOff = -2
    end

    if tree.name:startswith("pillar") then
        tree.width = 14
        tree.height = 14
        tree.yOff = -5.5
        tree.shadowSpr = sprites.effects.shadows.pillar
        tree.shadowYOff = 0
        tree.shadowSc = 1.15
    end

    if tree.name == "tableMap" then
        tree.width = 48
        tree.height = 26
        tree.shadowSpr = sprites.blank
        tree.yOff = 13
    end

    if tree.name:startswith("kiln") then
        tree.width = 30
        tree.height = 14
        tree.yOff = 6.5
        tree.shadowSpr = sprites.effects.shadows.campfire
        tree.shadowYOff = -1
        tree.shadowSc = 1.3
    end

    if tree.name:startswith("banner") then
        tree.width = 3
        tree.height = 3
        tree.yOff = 0
        tree.shadowSpr = sprites.effects.shadows.small
        tree.shadowYOff = 0.5
        tree.shadowSc = 1
        tree.scaleX = 1
        if tree.class and tree.class == "right" then tree.scaleX = -1 end

        tree.sprite = sprites.environment.trees[tree.name]
        tree.grid = anim8.newGrid(32, 64, tree.sprite:getWidth(), tree.sprite:getHeight())
        tree.anim = anim8.newAnimation(tree.grid('1-6', 1), 0.16 + math.random()*0.04)

        function tree:update(dt)
            self.anim:update(dt)
        end

        function tree:draw()
            love.graphics.setColor(1,1,1,1)
            self.anim:draw(self.sprite, self.x, self.y + self.yOff, nil, self.scaleX, 1, 16, 62)
        end
    end

    if tree.name == "newCore" then
        tree.width = 4
        tree.height = 4
        tree.yOff = -6
        tree.shadowSpr = sprites.effects.shadows.small
        tree.shadowYOff = 0
        tree.shadowSc = 1
        tree.scaleX = 1
        tree.float = true
        tree.conductor = true -- will be struck by lightning spell AND lightning rod special

        if data.states.misc["newCoreActive"] then
            tree.charged = true
            tree.sprite = sprites.environment.trees.orbGreen
            tree.grid = anim8.newGrid(18, 18, tree.sprite:getWidth(), tree.sprite:getHeight())
            tree.anim = anim8.newAnimation(tree.grid('1-6', 1), 0.11 + math.random()*0.02)
        else
            tree.sprite = sprites.environment.trees.orbDefault
            tree.grid = anim8.newGrid(18, 18, tree.sprite:getWidth(), tree.sprite:getHeight())
            tree.anim = anim8.newAnimation(tree.grid('1-2', 1), 0.12 + math.random()*0.03)
        end

        function tree:update(dt)
            self.anim:update(dt)
            if not self.charged and data.states.misc["newCoreActive"] then
                self.dead = true
                spawnTree(self.x, self.y, "newCore")
            end
        end

        function tree:draw()
            love.graphics.setColor(1,1,1,1)
            self.anim:draw(self.sprite, self.x, self.y + self.yOff + self.floatY, nil, self.scaleX, 1, 9, 9)
        end
    end

    if tree.name == "gemPedestal" then
        if not tree.class then return nil end
        tree.uid = tree.name .. "-" .. tree.class
        tree.width = 17
        tree.height = 9
        tree.yOff = -7
        tree.sprite = sprites.environment.trees.gemPedestal
        tree.shadowSpr = nil
        tree.timer = 0
        tree.shakeOff = 0
        tree.colorImmune = true
        -- NOTE: tree.class represents the unique ID for this gem pedestal

        if data.states.misc[tree.uid] then
            tree.gem = data.states.misc[tree.uid]
            tree.state = 100 -- done
        else
            tree.gem = nil
            tree.state = 0 -- awaiting diamond
            npcs:spawn(tree.uid, tree.x, tree.y, {visible=false, talkYoff=-43, parent=tree, talkDist=24, talkCushion=0, talkCushionY=28, finishLookY=-1})
        end

        function tree:interact()
            dialogue:setFocus({ price=1, resourceCost="diamond", npcName=self.uid })
            talk:start("gemPedestal", {basic=true, narration=true})
            misc.lastStatue = self.uid
        end

        function tree:placeDiamond()
            talk:done()
            cutscene:start("quickLook", {skipBars=true, lookAtX=self.x, lookAtY=self.y+20, lookDur=9999})
            player:cutsceneWalk(self.x, self.y + 12, 0.5, {finalY=-1}) -- player walks up to the pedestal
            self.state = 1 -- prepping to put diamond in
            self.timer = 1 -- time to wait before spawning the diamond sprite on the pedestal

            for i,n in ipairs(npcs) do
                if n.name == self.uid then
                    n.dead = true
                end
            end
        end

        function tree:chooseGem()
            -- choice is in newui.gem
            cutscene:start("quickLook", {skipBars=true, lookAtX=self.x, lookAtY=self.y, lookDur=9999})
            self.state = 10 -- prepping to change color
            self.timer = 1.5
        end

        function tree:update(dt)
            if self.timer > 0 then self.timer = self.timer - dt end
            if self.timer < 0 then
                self.timer = 0
                if self.state == 1 then
                    self.state = 2 -- diamond is in
                    self.timer = 0.5 -- wait for half a second before making the player step back
                    self.gem = "diamond"
                    shake:standard(1)
                    sem:playSound(sounds.player.dieLand, {volume=1, pitch=1.3})
                elseif self.state == 2 then
                    self.state = 3 -- player steps back
                    self.timer = 2.75 -- wait before the statue glows
                    player:cutsceneWalk(self.x, self.y + 66, 1.45, {finalY=-1}) -- player steps back
                elseif self.state == 3 then -- statue glows
                    self.state = 4
                    self.timer = 2
                    self.eyeSpr = sprites.environment.gemStatueEyes
                    blasts:standard(self.x, self.y - 10, 4)
                    shake:standard(1)
                    sem:playSound(sounds.misc.elevatorActivate, {volume=0.65, pitch=0.7})
                elseif self.state == 4 then -- statue speaks
                    self.state = 6
                    self.timer = 2.75
                    sem:playSound(sounds.misc.statueSpeak, {volume=1, pitch=0.85})
                    effects:spawn("tutorial", self.x, self.y + 12, {text=lcl.narration.gemPedestal.accept, exitTimer=2})
                elseif self.state == 5 then -- statue tells you to choose SKIPPED NOW
                    self.state = 6
                    self.timer = 1.75
                    effects:spawn("tutorial", self.x, self.y + 12, {text=lcl.narration.gemPedestal.choose, exitTimer=1})
                elseif self.state == 6 then -- start the gem choice newui
                    self.state = 7 -- waiting for the player's choice
                    newui:start("gemChoice")
                elseif self.state == 10 then
                    -- change color
                    self.eyeColor = misc:getColorStrFromGem(newui.gem)
                    self.gem = newui.gem
                    blasts:standard(self.x, self.y - 10, 4)
                    shake:standard(1)
                    sem:playSound(sounds.misc.elevatorActivate, {volume=0.65, pitch=0.7})
                    self.state = 11
                    self.timer = 1.5
                elseif self.state == 11 then
                    self.state = 12 -- start shaking
                    self.shakeTimer = 0.04
                    self.timer = 2
                    self.shakeOff = 1
                    sem:playSound(sounds.misc.statueShake, {volume=0.5, pitch=1})
                elseif self.state == 12 then
                    -- explode
                    self.state = 100
                    data.states.misc[tree.uid] = self.gem
                    spawnLob("gemPedestalReward", self.x, self.y - 110, vector(0, 1), {gem=self.gem})
                    particleEvent("rockBreakBigGrey", self.x, self.y - 40)
                    blasts:standard(self.x, self.y - 42, 4)
                    shake:standard(2)
                    sem:playSound(sounds.destroy.crumble, {volume=0.65})
                    sem:playSound(sounds.jewelry.gemEquip, {volume=0.65})
                end
            end

            if self.state == 12 then -- shaking
                self.shakeTimer = self.shakeTimer - dt
                if self.shakeTimer < 0 then
                    self.shakeTimer = 0.04
                    self.shakeOff = self.shakeOff * -1
                end
            end
        end

        function tree:draw()
            love.graphics.draw(self.sprite, self.x, self.y + self.yOff, nil, 1, 1, self.sprite:getWidth()/2, self.sprite:getHeight()/2)

            -- draw statue
            if self.state < 100 then
                local stspr = sprites.environment.gemStatue
                love.graphics.draw(stspr, self.x + self.shakeOff, self.y + self.yOff - 5.5, nil, 1, 1, stspr:getWidth()/2, stspr:getHeight()-2)
                if self.eyeSpr then
                    if self.eyeColor then misc:setColorFromColor(self.eyeColor) end
                    love.graphics.draw(self.eyeSpr, self.x + self.shakeOff, self.y + self.yOff - 5.5, nil, 1, 1, self.eyeSpr:getWidth()/2, self.eyeSpr:getHeight()-2)
                    setWhite()
                end
            end

            if self.gem then
                local gmspr = sprites.items.icons.smallGems[self.gem]
                if gmspr then
                    love.graphics.draw(gmspr, self.x, self.y + self.yOff + 6, nil, 1, 1, gmspr:getWidth()/2, gmspr:getHeight()/2)
                end
            end
        end
    end

    if tree.name == "campfire" then
        tree.width = 6
        tree.height = 6
        tree.yOff = 2
        tree.shadowSpr = sprites.effects.shadows.campfire
        tree.shadowYOff = 1
        tree.shadowSc = 0.95
        tree.scaleX = 1

        tree.sprite = sprites.environment.trees[tree.name]
        tree.grid = anim8.newGrid(50, 50, tree.sprite:getWidth(), tree.sprite:getHeight())
        tree.anim = anim8.newAnimation(tree.grid('1-5', 1), 0.1)

        spawnLightSource(tree.x, tree.y, 52, "", 4)

        function tree:update(dt)
            self.anim:update(dt)
        end

        function tree:draw()
            love.graphics.setColor(1,1,1,1)
            self.anim:draw(self.sprite, self.x, self.y + self.yOff, nil, self.scaleX, 1, 25, 35)
        end
    end

    if tree.name:startswith("streetlight") then
        tree.width = 4
        tree.height = 4
        tree.yOff = 3
        tree.shadowSpr = sprites.effects.shadows.mediumTall
        tree.shadowYOff = 0.5
        tree.shadowSc = 1
        tree.colorImmune = true

        tree.x = tree.x - 2
        tree.y = tree.y - 2
        newSpawnLightSource(tree.x, tree.y, 64, {color="green"})
    end

    if tree.name:startswith("sign") then
        tree.width = 6
        tree.height = 6
        tree.yOff = -5.5
        tree.shadowSpr = sprites.effects.shadows.small
        tree.shadowYOff = 0
        tree.shadowSc = 1

        tree.x = tree.x + (16-tree.width)/2
        tree.y = tree.y + 2
    end

    if tree.name:startswith("stump") then
        tree.width = 12
        tree.height = 9
        tree.yOff = 6
        tree.shadowSpr = sprites.effects.shadows.stump
        tree.shadowYOff = 0.5
        tree.shadowSc = 1
        tree.extraLayerSpr = sprites.environment.trees.stumpLayer
        tree.smYOff = -100
    end

    local onHitFunk = nil
    if tree.fruit then
        onHitFunk = function()
            if tree.fruit then
                tree.fruit = nil
                spawnLob("apple", tree.x-8, tree.y+3, vector(-1, 0.5))
                spawnLob("apple", tree.x+8, tree.y+3, vector(1, 0.5))
                addDataTimer('tree-' .. tree.class, tree.fruitRespawnTime * misc:getResourceMult())
            end
        end
        if data.states.timers['tree-' .. tree.class] then
            tree.fruit = nil -- timer is still going for this tree's fruit
        end
    end
    spawnWall(nil, tree.x - tree.width/2, tree.y - tree.height/2, tree.width, tree.height, nil, nil, {parent=tree, onHit=onHitFunk})

    if not tree.update then
        function tree:update(dt)
            if self.anim then self.anim:update(dt) end
        end
    end

    if not tree.draw then
        function tree:draw()
            setWhite()
            if tree.anim then
                tree.anim:draw(tree.sprite, tree.x, tree.y, nil, tree.scaleX, tree.scaleY, tree.frameW/2, tree.frameH-tree.yOff)
                if tree.fruit then
                    tree.anim:draw(sprites.environment.trees.appleOverlay, tree.x, tree.y, nil, tree.scaleX, tree.scaleY, tree.frameW/2, tree.frameH-tree.yOff)
                end
            else
                love.graphics.draw(self.sprite, self.x, self.y + self.floatY, nil, tree.scaleX, tree.scaleY, self.sprite:getWidth()/2, self.sprite:getHeight()-tree.yOff)
            end
        end
    end

    tree.extraLayer = {}
    function tree.extraLayer:draw()
        setWhite()
        love.graphics.draw(tree.extraLayerSpr, tree.x, tree.y, nil, nil, nil, tree.extraLayerSpr:getWidth()/2, tree.extraLayerSpr:getHeight()-tree.yOff)
    end

    if tree.float then
        tree:floatUp(tree.floatMax, true)
    end

    if tree.grow then
        local growTime = 2
        if tree.growTime then growTime = tree.growTime end
        tree.scaleX = 0
        tree.scaleY = 0
        sem:playSound(sounds.effects.flowerGrow)
        flux.to(tree, growTime, {scaleX = 1, scaleY = 1}):ease("elasticout")
    end
    
    table.insert(trees, tree)
end

function trees:update(dt)
    for _,t in ipairs(trees) do
        if t.update then t:update(dt) end

        if t.y + 2 < player:getY() then
            --t.layer = -1
            t.layer = 1
        else
            t.layer = 1
        end
    end

    local i = #trees
    while i > 0 do
        if trees[i].dead then table.remove(trees, i) end
        i = i - 1
    end
end
