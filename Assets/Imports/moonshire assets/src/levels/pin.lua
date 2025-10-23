pins = {}

function pins:new(name, group, x, y, args)
    local pin = {}
    pin.name = name
    pin.group = group
    if not group then pin.group = "default" end
    pin.x = x
    pin.y = y
    
    -- copy over all args properties
    if args then
        for k,v in pairs(args) do
            pin[k] = v -- even though k is the index, I believe the index should be strings, so this should apply all properties
        end
    end

    table.insert(pins, pin)
end

function pins:getByName(name)
    for i,pin in ipairs(pins) do
        if pin.name == name then
            return pin
        end
    end
end
