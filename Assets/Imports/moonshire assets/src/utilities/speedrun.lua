speedrun = {}

function speedrun:init()
    speedrun.state = 0 -- 0 stopped, 1 in progress, 2 is done
    speedrun.timer = 0
end

function speedrun:start()
    speedrun.state = 1
    speedrun.timer = 0
end

function speedrun:update(dt)
    if speedrun.state == 1 then
        speedrun.timer = speedrun.timer + dt
    end
end

function speedrun:stop()
    speedrun.state = 2
end

function speedrun:draw()
    if speedrun.state > 0 then
        local height = 12 * scale
        local width = 52 * scale
        love.graphics.setColor(0, 0, 0, 0.7)
        love.graphics.rectangle("fill", love.graphics.getWidth() - width, 0, width, height)

        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.setFont(fonts.hud.timer)
        love.graphics.print(disp_time(speedrun.timer), love.graphics.getWidth() - width + 3*scale, 0 * scale)
    end
end