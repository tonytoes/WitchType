structures = {}

function spawnStructure(id, x, y)
    local structure = {}
    structure.id = id
    structure.x = x
    structure.y = y
    structure.layerOff = 0
    structure.timer = 0
    structure.visible = true
    structure.active = true

    if id:startswith('cave') then
        structure.type = 'cave'
        structure.width = 48
        structure.height = 39
        structure.layerOff = structure.height/2
        structure.spr = sprites.environment.cave
        spawnWall(nil, x, y+12, 16, 20)
        spawnWall(nil, x+32, y+12, 16, 20)
        spawnWall(nil, x+14, y+5, 20, 7)

        if id == 'caveLevel1' then
            spawnTransition(x+16, y+8, 16, 8, 'toLevel1', nil, nil, "circle")
        end
    end

    if id:startswith('elevator') then
        structure.type = 'elevator'
        structure.width = 48
        structure.height = 48
        structure.spr = sprites.environment.elevator
        structure.activeSpr = sprites.environment.elevatorActive
        structure.layerOff = -100
        structure.state = 0
        structure.visible = false
        structure.active = false
        structure.talkable = false

        if id:startswith('elevatorToSkyBoss') then
            structure.spr = sprites.environment.elevatorCloud
            structure.activeSpr = sprites.environment.elevatorCloudActive
        end

        npcs:spawn("inv_" .. structure.id, x, y, {dieOnTalk=true, talkYoff=-18, parent=structure, talkDist=22})

        function structure:interact()
            player.focusY = 100000
            player:cutsceneWalk(self.x, self.y)
            self.state = 1
            self.timer = 1.5
        end

        function structure:update(dt)
            self.talkable = false

            if player.state == 0 or player.state == 13 then
                self.visible = true
            end

            if self.type == 'elevator' then
                local noChallenge = true
                for _,s in ipairs(challenges) do
                    if distanceBetween(s.x, s.y, self.x, self.y) < 16 then
                        noChallenge = false
                    end
                end

                if noChallenge then
                    if self.state == 0 and player.state == 0 then
                        self.talkable = true
                    elseif self.state == 0 then
                        self.active = true
                    elseif self.active == true then
                        self.timer = self.timer - dt
                    end
                end

                if self.timer < 0 then
                    if self.state == 1 then
                        spawnBlast(self.x, self.y, 64, "soft", 0.5)
                        shake:standard(1)
                        self.timer = 1
                        self.spr = self.activeSpr
                        self.state = 2
                        dj.play(sounds.misc.elevatorActivate, "static", "effect", 1)
                        dj.play(sounds.player.dieLand, "static", "effect", 1)
                    elseif self.state == 2 then
                        self.state = 3
                        self.dead = true
                        player.state = 14
                        if self.id == 'elevatorSky' then
                            effects:spawn("skyElevatorRise", self.x, self.y)
                        elseif self.id == 'elevatorFromSky' then
                            effects:spawn("skyElevatorDescend", self.x, self.y)
                        elseif self.id == 'elevatorToSkyBoss' then
                            effects:spawn("cloudElevatorRise", self.x, self.y)
                        end
                        -- make player invisible, delete self, spawn effect that looks like elevator/player
                    end
                end
            end
        end
    end

    function structure:draw()
        if self.visible == false then return end
        setWhite()
        if self.type == 'elevator' then
            love.graphics.draw(self.spr, self.x, self.y, nil, 1, nil, self.spr:getWidth()/2, self.spr:getHeight()/2)
        end
        if self.type == 'cave' then
            love.graphics.draw(self.spr, self.x, self.y-7)
        end
    end

    table.insert(structures, structure)
end

function structures:update(dt)
    for _,s in ipairs(structures) do
        if s.update then
            s:update(dt)
        end
    end

    local i = #structures
    while i > 0 do
        if structures[i].dead then
            table.remove(structures, i)
        end
        i = i - 1
    end
end

function respawnAllStructures()

    removeTable(structures)
    if gameMap.layers["Structures"] then
        for i, obj in ipairs(gameMap.layers["Structures"].objects) do
            spawnStructure(obj.name, obj.x, obj.y)
        end
    end

end
