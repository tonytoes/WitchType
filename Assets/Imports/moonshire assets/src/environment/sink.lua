sinks = {}

function sinks:new(id, x, y, tiledId) -- id is the resource name
    local sink = {}
    sink.loot = id -- resource
    sink.x = x
    sink.y = y
    sink.dead = false
    sink.spr = sprites.environment.sink
    sink.alpha = 0.2
    sink.colorImmune = true
    sink.uniqueName = loadedMap .. "_sink_" .. id .. tiledId
    sink.respawnTime = 600 -- seconds

    if data.states.timers[sink.uniqueName] then
        return nil -- this resource was collected and is still respawning
    end

    sink.grid = anim8.newGrid(16, 16, sink.spr:getWidth(), sink.spr:getHeight())
    sink.anim = anim8.newAnimation(sink.grid('1-4', 1), 0.3 + math.random()*0.03)

    sink.skipWalk = true
    npcs:spawn(sink.uniqueName, x, y, {dieOnTalk=true, visible=false, talkYoff=-10, parent=sink, talkDist=12})

    function sink:interact()
        if self.dead then return nil end
        if self.loot then resources:spawn(self.loot, player:getX(), player:getY(), {instaCollect=true}) end
        addDataTimer(self.uniqueName, self.respawnTime * misc:getResourceMult())
        if allItems["swim"] then --[[ do nothing ]] else player.drownTimer = player.maxSwimTime*2 end
        self.dead = true
        dj.play(sounds.player.splash, "static", "effect", 1, 1)
        particleEvent("splash", self.x, self.y)
    end

    function sink:update(dt)
        if self.dead then return nil end
        if self.anim then self.anim:update(dt) end
    end

    function sink:draw()
        love.graphics.setColor(1, 1, 1, self.alpha)
        self.anim:draw(self.spr, self.x, self.y, nil, 1, 1, 8, 8)
    end

    table.insert(sinks, sink)
end

function sinks:update(dt)
    for _,s in ipairs(sinks) do
        if s.update then s:update(dt) end
    end

    local i = #sinks
    while i > 0 do
        if sinks[i].dead then
            table.remove(sinks, i)
        end
        i = i - 1
    end
end
