-- values and functions used for Steam-related stuff
steam = {}

function steam:init()
    -- 0: steam is not initialized
    -- 1: steam is initialized
    -- 5: fetching friend list
    -- 6: displaying friend list, possibly waiting for name retrieval
    -- 11: attempting to send invite to selected user
    -- 12: invite sent, attempting to host a game with steam.friend, waiting for client
    -- 13: successfully connected with steam.friend, bringing them to the game
    -- 14: steam.friend is fully connected and in the game
    -- 21: attempting to join a game with steam.friend, waiting for host
    steam.state = 0
    steam.statsReceived = false
    steam.listenSocket = nil -- used for hosting
    steam.connectionId = nil
    steam.connection = nil

    -- {id, text}
    steam.friend = nil -- set when attempting to connect to a Steam friend
    steam.friendList = nil -- list of friends saved to memory
    steam.friendCount = -1 -- set to -1 when count is unknown
    
    steam.retryTimer = 1
    steam.maxRetries = 10
    steam.retry = {}
    steam.retryTotals = {}

    if myOS == "Windows" then
        luasteam = require 'luasteam'
    elseif myOS == "OS X" then
        local base = love.filesystem.getSourceBaseDirectory()
        package.cpath = package.cpath..";" .. base .."/?.so"
        --package.preload['luasteam'] = package.loadlib(luapath, 'luaopen_luasteam_initfunc')
        luasteam = require 'luasteam'
    end
    
    if luasteam and luasteam.init() then
        print("Steam initialized.")
        steam.state = 1

        function luasteam.userStats.onUserStatsReceived()
            steam.statsReceived = true
            print("Steam stats received.")
        end

        function luasteam.networkingSockets.onConnectionChanged(dta)
            print ('Connection changed', dta.connection, dta.state, dta.state_old, dta.endReason, dta.debug)
        
            if steam.state >= 11 and steam.state < 20 and steam.listenSocket then -- establishing connection as host
                if not steam.connectionId then steam.connectionId = dta.connection end
                local result = luasteam.networkingSockets.acceptConnection(steam.connectionId)
            end
        
            -- call 'acceptConnection' to accept the connection
            if dta.connection == steam.connectionId then steam.connection = dta end
        end

        luasteam.userStats.requestCurrentStats()

        -- TODO: only call this when the player first activates multiplayer
        luasteam.networkingUtils.initRelayNetworkAccess()
    else
        print("Steam failed to initialize.")
    end
end

-- NOTE: The Steam APIs handle retries automatically, so this might not be necessary.
function steam:doRetry(id)
    if steam.state == 0 or not steam.statsReceived then return nil end

    if id == "storeStats" then
        print("Attempting to store stats")
        steam.retry.storeStats = not luasteam.userStats.storeStats()
    end

    if id == "getFriendCount" then
        if not steam.friendCount or steam.friendCount == -1 then
            print("Attempting to fetch friend count")
            steam.friendCount = luasteam.friends.getFriendCount(0x4)
        else
            steam.retry.getFriendCount = false
        end
    end

    if id == "inviteFriend" then
        if steam.state == 11 and steam.friend then
            print("Attempting to invite friend: " .. steam.friend.id)
            steam.retry.inviteFriend = not luasteam.friends.inviteUserToGame(luasteam.extra.parseUint64(steam.friend.id), "BETA - Join my game!")
        end
    end

    if id == "createListenSocketP2P" then
        if not steam.listenSocket then
            print("Attempting to create listen socket")
            steam.listenSocket = luasteam.networkingSockets.createListenSocketP2P(0)
        else
            steam.retry.createListenSocketP2P = false
        end
    end

    if id == "connectP2P" then
        if steam.state == 21 and steam.friend then
            if not steam.connectionId then
                print("Attempting to establish connection with friend: " .. steam.friend.id)
                steam.connectionId = luasteam.networkingSockets.connectP2P(luasteam.extra.parseUint64(steam.friend.id), 0)
            else
                steam.retry.connectP2P = false
            end
        end
    end

    if id == "closeListenSocket" then
        if steam.listenSocket then
            luasteam.networkingSockets.closeListenSocket(steam.listenSocket)
            steam.listenSocket = nil
            print("Socket closed")
        end
        steam.retry.createListenSocketP2P = false
        steam.retry.closeListenSocket = false
    end
    
    steam.retryTotals[id] = steam.retryTotals[id] + 1
end

function steam:attemptRetry(id)
    if not steam.retryTotals[id] then steam.retryTotals[id] = 0 end
    if steam.retry[id] then
        steam:doRetry(id)
        if steam.retryTotals[id] >= steam.maxRetries then
            print(id .. " reached max retry count")
            steam.retry[id] = false
            steam.retryTotals[id] = 0
        end
    elseif steam.retryTotals[id] ~= 0 then
        steam.retryTotals[id] = 0
    end
end

function steam:update(dt)
    if self.state ~= 0 then
        luasteam.runCallbacks()

        self.retryTimer = self.retryTimer - dt
        if self.retryTimer <= 0 then
            self.retryTimer = 1
            steam:attemptRetry("storeStats")
            steam:attemptRetry("getFriendCount")
            steam:attemptRetry("inviteFriend")
            steam:attemptRetry("createListenSocketP2P")
            steam:attemptRetry("connectP2P")
            steam:attemptRetry("closeListenSocket")

            steam:updateFriendNames()
        end
    end

    if steam.state == 5 and steam.friendCount ~= -1 then
        -- friend list has been received
        steam.state = 6
        if steam.friendCount > 0 then
            for i = 1, steam.friendCount do
                steam.friendList[i] = {id = luasteam.friends.getFriendByIndex(i - 1, 0x4)} -- get text later, after id is fetched
            end
            if pause.state == 11 then newui:start("inviteSteamFriends") end
            if pause.state == 12 then newui:start("joinSteamFriends") end
        else
            print("No friends found.")
        end
    end

    if steam.state == 6 then

    end

    if steam.state == 11 and not steam.retry.inviteFriend then
        -- invite must have sent successfully
        steam.state = 12
    end

    if steam.state == 12 then -- creating socket
        -- attempting to create a socket
        if steam.listenSocket then
            -- socket created successfully
            steam.state = 13
            print("Socket created successfully")
        else
            steam.retry.createListenSocketP2P = true
        end
    end

    if steam.state == 13 then
        -- waiting for steam.friend to connect
        -- start watching for connection responses
        if steam.connectionId and steam.connection then
            if steam.connection.state == "Connected" then
                print("Connection with client established: " .. steam.connectionId)
                steam.state = 14
            elseif steam.connection.state == "ClosedByPeer" or steam.connection.state == "ProblemDetectedLocally" then
                print("Connection with client failed: " .. steam.connectionId)
                luasteam.networkingSockets.closeConnection(steam.connectionId)
                steam.connectionId = nil
                steam.connection = nil
                steam.retry.connectP2P = false
                steam.state = 1
            end
        end
    end

    if steam.state == 14 then

    end

    if steam.state == 21 then
        -- check if connection has been made
        if steam.connectionId and steam.connection then
            if steam.connection.state == "Connected" then
                print("Connection with host established: " .. steam.connectionId)
                steam.state = 22
            elseif steam.connection.state == "ClosedByPeer" or steam.connection.state == "ProblemDetectedLocally" then
                print("Connection with host failed: " .. steam.connectionId)
                luasteam.networkingSockets.closeConnection(steam.connectionId)
                steam.connectionId = nil
                steam.connection = nil
                steam.retry.connectP2P = false
                steam.state = 1
            end
        end
    end

    if steam.state == 22 then
        -- once we receive a message from the host, we can start the game
    end
end

function steam:inviteFriend(frnd)
    if frnd then steam.friend = frnd end
    if steam.friend then
        steam.state = 11
        steam.retry.inviteFriend = true
    else
        print("No friend selected.")
    end
end

function steam:joinFriend(frnd)
    if frnd then steam.friend = frnd end
    if steam.friend then
        steam.state = 21
        steam.retry.connectP2P = true
    else
        print("No friend selected.")
    end
end

function steam:unlockAchievement(id)
    if data.states.achievements and not data.states.achievements[id] then
        data.states.achievements[id] = true
        -- do a new achievement effect/sound?
    end
    if steam.statsReceived then
        local success, achieved = luasteam.userStats.getAchievement(id)
        if success and not achieved then
            print('Unlocked achievement: ' .. id)
            luasteam.userStats.setAchievement(id)
            steam.retry.storeStats = true
        end
    end
end

function steam:getFriendList()
    steam.state = 5 -- getting friend list
    steam.friendCount = -1
    steam.friendList = {}

    steam.retry.getFriendCount = true
end

function steam:closeMyConnection()
    if steam.connectionId then
        luasteam.networkingSockets.closeConnection(steam.connectionId)
        steam.connectionId = nil
        print("Closed connection.")
    end
end

function steam:updateFriendNames()
    if not steam.friendCount or steam.friendCount <= 0 then return nil end
    if steam.state == 6 then -- getting friend list
        for i = 1, steam.friendCount do
            if steam.friendList[i] and steam.friendList[i].id and not steam.friendList[i].text then
                steam.friendList[i].text = luasteam.friends.getFriendPersonaName(steam.friendList[i].id)
            end
        end
    end
end
