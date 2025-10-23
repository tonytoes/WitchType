function getNarrationMap(id, args)
    print("getNarrationMap " .. id)
    if not id then return nil end

    local mp = {}

    if id == "buy" then
        mp[1] = {
            message = { "details" },
            instant = true
        }
        mp[2] = {
            message = { "confirm" },
            startEvents = {showMyResources = true},
            options = { yes=3, no=4 },
        }
        mp[3] = {
            startEvents = {dialogueBuy = true},
            finish = -1
        }
        mp[4] = {
            quitTalking = true
        }
    end

    if id == "soil" then
        mp[1] = {
            message = { "details" },
            startEvents = {showMyResources = true},
            options = { yes=2, no=3 },
        }
        mp[2] = {
            startEvents = {dialogueBuy = true},
            finish = -1
        }
        mp[3] = {
            quitTalking = true
        }
    end

    if id == "gemPedestal" then
        mp[1] = {
            message = { "description" },
        }
        mp[2] = {
            message = { "task" },
            startEvents = {showMyResources = true},
            options = { yes=3, no=4 },
        }
        mp[3] = {
            startEvents = {dialogueBuy = true},
            finish = -1
        }
        mp[4] = {
            quitTalking = true
        }
    end

    return mp
end
