elevators = {}

function elevators:init()
    elevators.moving = false
    elevators.partner = ""
end

function elevators:getStats(ele)
    if ele.id == "groundToCloud" then
        ele.sprite = sprites.elevators.elevator
        ele.activeSpr = sprites.elevators.elevatorActive
        ele.moveType = "cloud"
        ele.partner = "cloudToGround"
        ele.dir = "up"
        ele.destMap = "dungeons/cloud/cloudMain"
    end
    if ele.id == "cloudToGround" then
        ele.sprite = sprites.elevators.elevator
        ele.activeSpr = sprites.elevators.elevatorActive
        ele.moveType = "cloud"
        ele.partner = "groundToCloud"
        ele.dir = "down"
        ele.destMap = "6_ruins"
    end

    if ele.id == "cloudToBoss" then
        ele.sprite = sprites.elevators.green
        ele.activeSpr = sprites.elevators.greenActive
        ele.moveType = "cloudBoss"
        ele.partner = "bossToCloud"
        ele.dir = "up"
        ele.destMap = "dungeons/cloud/cloudBoss"
    end
    if ele.id == "bossToCloud" then
        ele.sprite = sprites.elevators.green
        ele.activeSpr = sprites.elevators.greenActive
        ele.moveType = "cloudBoss"
        ele.partner = "cloudToBoss"
        ele.dir = "down"
        ele.destMap = "dungeons/cloud/cloudMain"
    end

    if ele.id == "eyerisToCave" then
        ele.sprite = sprites.elevators.leaves
        ele.moveType = "leaves"
        ele.partner = "caveToEyeris"
        ele.dir = "up"
        ele.destMap = "caves/c_marsh"
    end
    if ele.id == "caveToEyeris" then
        ele.sprite = sprites.elevators.leaves
        ele.moveType = "leaves"
        ele.partner = "eyerisToCave"
        ele.dir = "down"
        ele.destMap = "caves/c_eyeris"
        ele.fullyUnder = true
    end

    return ele
end

function elevators:spawn(id, x, y, args)
    elevators.fullyUnder = false

    if args then
        if args.bailWithBossCheck then
            if allEnemies[args.bailWithBossCheck] then
                return nil 
            end
        end

        if args.bailWithoutBossCheck then
            if not allEnemies[args.bailWithoutBossCheck] then
                return nil 
            end
        end
    end
    
    local elevator = {}
    elevator.id = id
    elevator.x = x
    elevator.y = y
    elevator.args = args
    elevator.moveType = "cloud"
    elevator.skipWalk = true -- cutscene walk is handled in this file rather than npc

    -- 0: inactive
    -- 1: turning on, player is walking on it
    -- 2: activated, pausing before moving
    -- 10: arriving
    elevator.state = 0 -- inactive, but check for special entrance
    elevator.timer = 0

    elevator = elevators:getStats(elevator)
    if not elevator.sprite then return nil end
    elevator.spr = elevator.sprite

    -- change this once you do anims
    elevator.width = elevator.sprite:getWidth()
    elevator.height = elevator.sprite:getHeight()

    npcs:spawn("elevator_" .. elevator.id, x, y, {visible=false, dieOnTalk=true, talkYoff=-18, parent=elevator, talkDist=22})

    function elevator:interact()
        player.focusY = 100000
        player:cutsceneWalk(self.x, self.y, nil, {cutsceneParent='elevator_' .. self.id})
        self.state = 1
        self.timer = 1.5

        player.eleId = self.id
        player.focusX = self.x
        player.focusY = self.y
        cam:fluxZoom("focusFocus", 0.6)
    end

    function elevator:update(dt)
        if self.state > 0 then
            if self.timer > 0 then self.timer = self.timer - dt end
            if self.timer < 0 then
                if self.state == 1 then -- turning on complete, player is standing on it
                    if self.activeSpr then
                        spawnBlast(self.x, self.y, 64, "soft", 0.5)
                        shake:standard(1)
                        self.timer = 1
                        self.spr = self.activeSpr
                        self.state = 2
                        dj.play(sounds.misc.elevatorActivate, "static", "effect", 1)
                    else
                        self.state = 3
                        self:move()
                    end
                elseif self.state == 2 then -- activated, pausing before moving
                    self.state = 3 -- in flux's hands now
                    self:move()
                end
            end

            if self.state == 10 then
                player.state = 13
            end
        end
    end

    function elevator:move()
        local onDone = function()
            player.specialStart = 2 -- elevator arrive
            elevators.partner = self.partner
            curtain:call(elevator.destMap, 100, 100, "up")
        end
        if self.moveType == "cloud" and self.dir == "up" then
            dj.play(sounds.misc.elevatorRise, "static", "effect", 0.6)
            local destY = self.y + 14
            flux.to(elevator, 1.8, {y = destY}):ease("sineinout"):oncomplete(function()
                dj.play(sounds.misc.elevatorRise2, "static", "effect", 0.8)
                flux.to(elevator, 1, {y = destY-178}):ease("sinein"):oncomplete(onDone)
            end)
        end
        if (self.moveType == "cloudBoss") and self.dir == "up" then
            dj.play(sounds.misc.elevatorRise, "static", "effect", 0.8)
            local destY = self.y - 156
            flux.to(elevator, 1.25, {y = destY}):ease("sinein"):oncomplete(onDone)
        end
        if (self.moveType == "cloud" or self.moveType == "cloudBoss") and self.dir == "down" then
            dj.play(sounds.misc.elevatorFall, "static", "effect", 0.8)
            local destY = self.y + 224
            flux.to(elevator, 1.25, {y = destY}):ease("sinein"):oncomplete(onDone)
        end

        if self.moveType == "leaves" and self.dir == "up" then
            dj.play(sounds.misc.elevatorRise, "static", "effect", 0.8)
            local destY = self.y - 156
            flux.to(elevator, 2, {y = destY}):ease("sinein"):oncomplete(onDone)
        end
        if self.moveType == "leaves" and self.dir == "down" then
            dj.play(sounds.misc.elevatorFall, "static", "effect", 0.8)
            local destY = self.y + 224
            flux.to(elevator, 1.25, {y = destY}):ease("sinein"):oncomplete(onDone)
        end

        elevators.moving = true
        elevators.fullyUnder = self.fullyUnder
    end

    function elevator:land()
        elevators.moving = false
        self.state = 0
        self.spr = self.sprite
        player.state = 0
        player.cutsceneParent = nil
        shake:standard(2)
        dj.play(sounds.misc.elevatorStop, "static", "effect", 1)
        cam:fluxUnzoom(1)
    end

    function elevator:arrive()
        if self.activeSpr then self.spr = self.activeSpr end
        elevators.fullyUnder = self.fullyUnder
        self.state = 10
        dj.play(sounds.misc.elevatorRise, "static", "effect", 0.6)
        local destY = self.y

        player.state = 13
        player.cutsceneParent = "elevator_" .. self.id
        player.focusX = self.x
        player.focusY = self.y
        cam:fluxZoom("focusFocus", 0.05)

        if self.dir == "down" then
            self.y = self.y + 264
        elseif self.dir == "up" then
            self.y = self.y - 264
        end

        flux.to(elevator, 3, {y = destY}):ease("quadout"):oncomplete(function()
            elevator:land()
        end)
    end

    function elevator:draw()
        love.graphics.draw(self.spr, self.x, self.y, nil, nil, nil, self.width/2, self.height/2)
    end

    table.insert(elevators, elevator)
end

function elevators:update(dt)
    for _,e in ipairs(elevators) do
        e:update(dt)
    end
end

function elevators:drawUnder()
    for _,e in ipairs(elevators) do
        if e.fullyUnder then
            e:draw()
        end
    end
end
