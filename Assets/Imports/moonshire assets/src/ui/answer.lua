answer = {}

function answer:init()
    -- 0: inactive
    -- 1: asking
    answer.state = 0
    answer.scenarioType = nil
    answer.scenarioId = nil
    answer.hoverInt = 2 -- 1 = yes, 2 = no
    answer.prevHoverInt = 2

    answer.spriteSheet = sprites.ui.answerFrameNewHoverSmall
    answer.grid = anim8.newGrid(53, 37, answer.spriteSheet:getWidth(), answer.spriteSheet:getHeight())
    answer.anim = anim8.newAnimation(answer.grid('1-2', 1), 0.5)
end

function answer:update(dt)
    if self.state == 1 then
        local gap = 26
        self.leftX = love.graphics.getWidth()/2 - gap * scale
        self.rightX = love.graphics.getWidth()/2 + gap * scale
        self.anim:update(dt)

        local mx, my = love.mouse.getPosition()
        if settings.useMouse then
            if distanceBetween(mx, my, self.leftX, dialogue.answerY * scale) < 18*scale then self.hoverInt = 1 end
            if distanceBetween(mx, my, self.rightX, dialogue.answerY * scale) < 18*scale then self.hoverInt = 2 end
        end

        if self.hoverInt ~= self.prevHoverInt then
            dj.play(sounds.ui.hoverChange, "static", "effect", 0.8)
            self.prevHoverInt = self.hoverInt
        end
    end
end

function answer:draw()
    if self.state == 1 then
        setWhite()
        local frameSpr = sprites.ui.answerFrameNewSmall
        local hoverX = self.leftX
        local btnHeight = 9
        if self.hoverInt == 2 then hoverX = self.rightX end

        if dialogue.position > dialogue.parseLen*4 then
            dialogue.answerY = 144
        elseif dialogue.position > dialogue.parseLen*3 then
            dialogue.answerY = 144
        elseif dialogue.position > dialogue.parseLen*2 then
            dialogue.answerY = 140
        elseif dialogue.position > dialogue.parseLen then
            dialogue.answerY = 134
        else
            dialogue.answerY = 132
        end

        self.anim:draw(self.spriteSheet, hoverX, dialogue.answerY * scale, nil, scale, nil, 53/2, 37/2)

        love.graphics.setFont(fonts.dialogue.answer)
        love.graphics.draw(frameSpr, self.leftX, dialogue.answerY * scale, nil, scale, nil, frameSpr:getWidth()/2, frameSpr:getHeight()/2)
        love.graphics.printf(lcl.system.yes, self.leftX - 1000, (dialogue.answerY - btnHeight/2) * scale, 2000, "center")
        love.graphics.draw(frameSpr, self.rightX, dialogue.answerY * scale, nil, scale, nil, frameSpr:getWidth()/2, frameSpr:getHeight()/2)
        love.graphics.printf(lcl.system.no, self.rightX - 1000, (dialogue.answerY - btnHeight/2) * scale, 2000, "center")
    end
end

function answer:ask(answerId)
    self.state = 1
    self.hoverInt = 2 -- hover over 'no' at first
    dialogue.answerId = answerId
end

function answer:click()
    if self.state == 1 then
        if self.hoverInt == 1 then
            answer:yes()
        elseif self.hoverInt == 2 then
            answer:no()
        end
        dj.play(sounds.ui.confirm, "static", "effect", 1)
    end
end

function answer:yes()
    answer:reset()
    if talk.state > 0 then talk:answer("yes") return nil end
end

function answer:no()
    answer:reset()
    if talk.state > 0 then talk:answer("no") return nil end
end

function answer:reset()
    self.state = 0
    self.scenarioType = nil
    self.scenarioId = nil
    self.hoverInt = 2
    dialogue.answerShown = false
end
