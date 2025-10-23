spikes = {}

function spikes:spawn(x, y, id, args)
    local spike = {}
    spike.x = x
    spike.y = y
    spike.id = id
    spike.perm = false -- determines if the spike is permanently up
    spike.checkDist = 8
    spike.hitRad = 5
    spike.hitTime = 0.5
    spike.offX = 0
    spike.offY = 0
    spike.spr = sprites.environment.hazards.vine
    if sprites.environment.hazards[id] then spike.spr = sprites.environment.hazards[id] end
    spikes.sound = sounds.environment.vineSpike
    
    spike.hiddenGx = '1-2'
    spike.hiddenTime = 0.5+math.random()*0.1
    spike.risingGx = '3-5'
    spike.risingTime = 0.06
    spike.fullGx = 6
    spike.fullTime = 0.35
    spike.retractGx = '7-11'
    spike.retractTime = 0.08

    if id == "vine" then
        spike.y = spike.y - 2 --manually move it up a bit
        spike.offX = 0.5
        spike.offY = -10
        spike.frameW = 24
        spike.frameH = 30
    end

    -- copy over all args properties
    if args then
        for k,v in pairs(args) do
            spike[k] = v -- even though k is the index, I believe the index should be strings, so this should apply all properties
        end
    end

    spike.animations = {}

    spike.grid = anim8.newGrid(spike.frameW, spike.frameH, spike.spr:getWidth(), spike.spr:getHeight())
    spike.animations.hidden = anim8.newAnimation(spike.grid(spike.hiddenGx, 1), spike.hiddenTime)
    spike.animations.rising = anim8.newAnimation(spike.grid(spike.risingGx, 1), spike.risingTime, function() spike.anim = spike.animations.full end)
    spike.animations.full = anim8.newAnimation(spike.grid(spike.fullGx, 1), spike.fullTime, function() if spike.perm == false then spike.anim = spike.animations.retract end end)
    spike.animations.retract = anim8.newAnimation(spike.grid(spike.retractGx, 1), spike.retractTime, function() spike.anim = spike.animations.hidden end)

    spike.anim = spike.animations.hidden

    if spike.perm then
        spike.anim = spike.animations.full
    end

    function spike:rise()
        self.anim = self.animations.rising
        local snd = sounds.environment.vineSpike
        if self.sound then snd = self.sound end
        print(snd)
        spawnHitbox({shape="circle", x=self.x, y=self.y, rad=self.hitRad}, {timer=self.hitTime, grow=true, damage=1})
        sem:playSound(snd, {volume=0.75, pitchRand=0.2})
    end

    function spike:update(dt)
        if self.anim == self.animations.hidden then
            if distanceBetween(self.x, self.y, player:getX(), player:getY()) < self.checkDist then
                self:rise()
            end
            for i,e in ipairs(enemies) do
                if e.physics and distanceBetween(self.x, self.y, e.physics:getX(), e.physics:getY()) < self.checkDist then
                    self:rise()
                end
            end
        end

        self.anim:update(dt)
    end

    function spike:draw()
        setWhite()
        self.anim:draw(self.spr, self.x + self.offX, self.y + self.offY, nil, nil, nil, self.frameW/2, self.frameH/2)
    end

    table.insert(spikes, spike)
end

function spikes:update(dt)
    for _,s in ipairs(spikes) do
        s:update(dt)
    end
end
