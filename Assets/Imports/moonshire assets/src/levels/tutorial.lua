tutorials = {}

function spawnTutorial(id, x, y, args)

    local tutorial = {}
    tutorial.id = id
    tutorial.x = x
    tutorial.y = y
    tutorial.textPosX = x
    tutorial.textPosY = y
    tutorial.state = 0
    tutorial.timer = 0
    tutorial.text = ""
    tutorial.uniqueId = math.random()
    tutorial.startDist = 32
    tutorial.endDist = 48

    tutorial.sprite = nil

    if data.states.misc["tutorial-" .. id] then
        return nil -- tutorial has already been completed
    end

    if id == 'walk' then
        local ctrlStr = "WASD"
        if settings.controlScheme == 'controller' then ctrlStr = "Joystick" end
        if settings.controlScheme == 'keyboardOnly' then ctrlStr = "Arrow Keys" end

        tutorial.timer = 2
        tutorial.text = ctrlStr .. " " .. lcl.system.tutorial.toMove
        tutorial.startDist = 48
        tutorial.endDist = 64
    end

    if id == 'sword' then
        local ctrlStr = "Left Click"
        if settings.controlScheme == 'controller' then ctrlStr = "A Button" end
        if settings.controlScheme == 'keyboardOnly' then ctrlStr = "Z" end

        tutorial.text = ctrlStr .. " " .. lcl.system.tutorial.toAttack
        tutorial.textPosX = 820
        tutorial.textPosY = 410
        tutorial.endDist = 96
    end

    if id == 'pickup' then
        local ctrlStr = "Right Click"
        if settings.controlScheme == 'controller' then ctrlStr = "Y" end
        if settings.controlScheme == 'keyboardOnly' then ctrlStr = "X" end

        tutorial.text = ctrlStr .. " " .. lcl.system.tutorial.toPickup
        tutorial.textPosX = 770
        tutorial.textPosY = 518
        tutorial.startDist = 64
        tutorial.endDist = 88
        tutorial.markReady = true
    end

    if id == 'dodge' then
        local ctrlStr = "Spacebar"
        if settings.controlScheme == 'controller' then ctrlStr = "B" end

        tutorial.text = ctrlStr .. " " .. lcl.system.tutorial.toDodge
        tutorial.text2 = lcl.system.tutorial.invincible
        tutorial.textPosX = x + 32
        tutorial.textPosY = y - 92
        tutorial.startDist = 64
        tutorial.endDist = 112
    end

    if id == 'heal' then
        local ctrlStr = "Right Click"
        if settings.controlScheme == 'controller' then ctrlStr = "Y" end
        if settings.controlScheme == 'keyboardOnly' then ctrlStr = "X" end

        tutorial.text = lcl.system.tutorial.healing1
        tutorial.text2 = lcl.system.tutorial.healing2:gsub("{a}", ctrlStr)
        tutorial.textPosX = x
        tutorial.textPosY = y - 32
        tutorial.startDist = 80
        tutorial.endDist = 128
    end

    function tutorial:update(dt)

        if self.state == 0 and player.state == 0 and distanceBetween(self.x, self.y, player:getX(), player:getY()) < self.startDist then

            if self.timer > 0 then self.timer = self.timer - dt end
            if self.timer < 0 then
                self.timer = 0

                if self.id == 'walk' then
                    self.state = 1
                    effects:spawn("tutorial", self.textPosX, self.textPosY, {text=self.text, uniqueId=self.uniqueId})
                end
            end

            if self.id ~= 'walk' then
                self.state = 1
                if self.text2 then self.timer = 0.5 end
                effects:spawn("tutorial", self.textPosX, self.textPosY, {text=self.text, uniqueId=self.uniqueId})
                if self.markReady then weapons:markReady() end
            end

            data.states.misc["tutorial-" .. self.id] = 1
        end

        if self.state == 1 then
            if distanceBetween(self.x, self.y, player:getX(), player:getY()) > self.endDist then
                effects:trigger(self.uniqueId)
                self.dead = true
                self.state = 2
            end
            if self.text2 then
                if self.timer > 0 then self.timer = self.timer - dt end
                if self.timer < 0 then
                    self.timer = 0
                    effects:spawn("tutorial", self.textPosX, self.textPosY + 14, {text=self.text2, uniqueId=self.uniqueId})
                    self.text2 = nil
                end
            end
        end

    end

    table.insert(tutorials, tutorial)
end

function tutorials:update(dt)
    for _,t in ipairs(tutorials) do
        t:update(dt)
    end
    local i = #tutorials
    while i > 0 do
        if tutorials[i].dead then
            table.remove(tutorials, i)
        end
        i = i - 1
    end
end

function tutorials:endById(id)
    for _,t in ipairs(tutorials) do
        if t.id == id then
            effects:trigger(t.uniqueId)
            t.dead = true
            t.state = 2
        end
    end
end
