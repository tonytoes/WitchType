infoPanel = {}

function infoPanel:reinit()
    infoPanel.sprite = sprites.ui.infoPanel
    infoPanel.x = 0 -- upper-left corner for position
    infoPanel.y = 0
    infoPanel.width = sprites.ui.infoPanel:getWidth()
    infoPanel.height = sprites.ui.infoPanel:getHeight()

    infoPanel.yHidden = 0
    infoPanel.yVisible = 6

    infoPanel.visible = false
    infoPanel.buffer = 4 -- number of pixels barrier above the screen
    infoPanel.tween = nil
    infoPanel.duration = 0.4 -- number of seconds the tween takes to view/hide

    infoPanel.format = "level"
    infoPanel.id = ""
    infoPanel.title = ""
    infoPanel.bestTimeTitle = "Best time: "
    infoPanel.bestTime = ""
    infoPanel.timeToBeat = ""
end

function infoPanel:reset()
    self:init()
    self.y = 0 - ((self.height + self.buffer) * scale )
    self.yHidden = self.y
    self.visible = false
end

function infoPanel:init(id)
    local scrW = love.graphics.getWidth()
    self.x = scrW/2 - (self.width * scale / 2)
    self.yHidden = 0 - ((self.height + self.buffer) * scale )

    infoPanel.format = "level"

    if levelData[id] then
        infoPanel.title = levelData[id].title
        infoPanel.timeToBeat = levelData[id].timeToBeat
    end

    if data.stats and data.stats[id] then
        infoPanel.bestTime = data.stats[id].bestTime

        if infoPanel.bestTime == -1 then
            infoPanel.bestTime = "Not completed"
        else
            infoPanel.bestTime = secondsToTime(infoPanel.bestTime)
        end
    end

    if id then infoPanel.id = id end
end

function infoPanel:toggle(id)
    self:init(id)
    self.visible = not (self.visible and true);

    local destObj = {}
    if self.visible then
        -- Move panel down to be seen
        destObj = {y = self.yVisible}
    else
        -- Move panel up to be hidden
        destObj = {y = self.yHidden}
    end
    self.tween = flux.to(self, self.duration, destObj):ease("cubicout")
end

function infoPanel:draw()
    if self.visible == false then return end
    if self.y + (self.height * scale) < 0 then return end

    setWhite()

    if self.format == "level" then
        -- Draw Panel
        love.graphics.draw(self.sprite, self.x, self.y, nil, scale)

        -- Draw Title
        love.graphics.setFont(fonts.debug)
        love.graphics.print(self.id .. ": " .. self.title, self.x + 9*scale, self.y + 7*scale)
        love.graphics.print(self.bestTimeTitle .. self.bestTime, self.x + 9*scale, self.y + 27*scale)
        love.graphics.print("Time to beat: " .. self.timeToBeat, self.x + 9*scale, self.y + 47*scale)
    end
end
