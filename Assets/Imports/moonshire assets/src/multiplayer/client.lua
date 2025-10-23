-- client is a unique view that relies on host's messages to render everything
client = {}

function client:init()
    self.active = false
    self:initAll()

    -- besides the above, also await any messages to spawn effects. For example, an explosion would be spawned on the client's side
end

function client:initAll()
    client.all = {}
    client.all.enemies = {}
    client.all.npcs = {}
end

function client:update(dt)

end

function client:start()
    self.active = true
    self:initAll()
end
