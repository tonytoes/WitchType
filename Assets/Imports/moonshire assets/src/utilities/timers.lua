-- handles data.states.timers
function addDataTimer(id, time) data.states.timers[id] = time end

function updateDataTimers(dt)
    if data.states.timers and #data.states.timers then
        for i, timer in pairs(data.states.timers) do
            data.states.timers[i] = timer - dt
            if data.states.timers[i] <= 0 then
                data.states.timers[i] = nil
            end
        end
    end
end
