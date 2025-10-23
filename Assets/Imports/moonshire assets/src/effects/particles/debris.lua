local function debrisInit(particle, x, y, args)

    if args and args.zeroGravity then
        particle.physics = world:newCircleCollider(x, y, 4)
        particle.physics:setCollisionClass("Ignore")
    else
        particle.physics = particleWorld:newCircleCollider(x, y, 4)
        particle.physics:setCollisionClass("Particle")
    end
    particle.physics:setFixedRotation(true)
    particle.physics.parent = particle

    particle.sprite = sprites.effects.rock
    particle.rot = math.random() * 3.14
    particle.rotSpeed = math.random() * 0.1 + 0.01

    particle.timer = 3
    particle.upTimer = 0
    particle.alpha = 1
    particle.animDelay = 0
    particle.fade = false
    particle.fadeFactor = 1
    particle.scaleX = 1
    particle.startX = x
    particle.startY = y

    if args then
        if args.num == 1 then
            particle.physics:setLinearVelocity(-80, -150)
        elseif args.num == 2 then
            particle.physics:setLinearVelocity(80, -150)
        elseif args.num == 3 then
            particle.physics:setLinearVelocity(-120, -60)
        elseif args.num == 4 then
            particle.physics:setLinearVelocity(120, -60)
        end

        if args.type then particle.type = args.type end

        if args.type == "grass" or args.type == "minGrass" or args.type == "vine" then
            particle.fade = true
            particle.fadeFactor = 2
            particle.scaleX = 1
            local grassInt = math.random(1, 3)
            particle.sprite = sprites.effects.grass[grassInt]
            if args.type == "vine" then particle.sprite = sprites.effects.vine[grassInt] end
            if args.type == "minGrass" then particle.sprite = sprites.effects.minGrass[grassInt] end
            local dir = getPlayerToSelfVector(x, y):rotated(math.random(-2, 2)*math.random()/1.5)*math.random(40, 90)
            particle.physics:setLinearVelocity(dir.x, dir.y - 60)
        end

        if args.type == "rockShard" then
            local rockInt = math.random(1, 2)
            particle.sprite = sprites.effects.rock[rockInt]

            particle.animDelay = 1.5
            particle.timer = 2
            particle.fade = true
            particle.fadeFactor = 4

            local dir = vector(-1,0):rotated(math.random()*math.pi) * math.random(150, 500)
            particle.physics:setLinearVelocity(dir.x, dir.y)
        end

        if args.type == "rockShardGrey" then
            local rockInt = math.random(1, 2)
            particle.sprite = sprites.effects.rockGrey[rockInt]

            particle.animDelay = 1.5
            particle.timer = 2
            particle.fade = true
            particle.fadeFactor = 4

            local dir = vector(-1,0):rotated(math.random()*math.pi) * math.random(150, 500)
            particle.physics:setLinearVelocity(dir.x, dir.y)
        end

        if args.type == "scrapShard" then
            local rockInt = math.random(1, 3)
            particle.sprite = sprites.debris["scrap" .. rockInt]

            particle.animDelay = 1.5
            particle.timer = 2
            particle.fade = true
            particle.fadeFactor = 4

            local dir = vector(-1,0):rotated(math.random()*math.pi) * math.random(150, 500)
            particle.physics:setLinearVelocity(dir.x, dir.y)
        end

        if args.type == "wood" or args.type == "woodDark" or args.type == "shardL" then
            particle.sprOptions = { "wood", "woodAlt", "woodShade", "woodSmall", "woodSmall", "woodSmallShade" }
            if args.type == "woodDark" then particle.sprOptions = { "woodDark", "woodDark", "woodSmallDark", "woodSmallDark" } end
            if args.type == "shardL" then particle.sprOptions = { "shardL", "shardL2" } end

            particle.animDelay = 1.5
            particle.timer = 2
            particle.fade = true
            particle.fadeFactor = 4

            local dir = vector(-1,0):rotated(math.random()*math.pi) * math.random(100, 300)
            particle.physics:setLinearVelocity(dir.x, dir.y)
        end

        if args.type == "log" then
            particle.sprite = sprites.rubble.log

            particle.animDelay = 1.5
            particle.timer = 2
            particle.fade = true
            particle.fadeFactor = 4

            local dir = vector(-1,0):rotated(math.random()*math.pi) * math.random(100, 300)
            particle.physics:setLinearVelocity(dir.x, dir.y)
        end

        if args.type == "greenCore" then
            local rockInt = math.random(1, 4)
            particle.sprite = sprites.debris["greenCore" .. rockInt]
            particle.physics:setMass(0.5)
            particle.timer = 10

            local dir = vector(-1,0):rotated(math.random()*math.pi*2) * math.random(100, 250)
            particle.physics:setLinearVelocity(dir.x, dir.y)
        end

        if args.type == "potShard" or args.type == "steelShard" then
            local shardInt = math.random(1, 2)
            particle.sprite = sprites.effects.shard[shardInt]
            if args.type == "steelShard" then particle.sprite = sprites.effects.steelShard[shardInt] end

            particle.animDelay = .15
            particle.timer = 0.4
            particle.fade = true
            particle.fadeFactor = 8

            --local dir = vector(-1,0):rotated(math.random()*math.pi) * math.random(100, 180)
            --local rot = math.random()*math.pi/4
            local dir = getPlayerToSelfVector(x, y):rotated(math.random(-2, 2)*math.random()/1.5)*math.random(100, 180)
            --if math.random() > 0.5 then rot = rot * -1 end
            if args and args.upwards then dir = vector(0, -1):rotated(rot) * math.random(100, 180) end

            particle.physics:setLinearVelocity(dir.x, dir.y)
        end

        if args.type == "wood1" then
            particle.sprite = sprites.debris.wood1

            particle.animDelay = .15
            particle.timer = 0.4
            particle.fade = true
            particle.fadeFactor = 8

            local dir = getPlayerToSelfVector(x, y):rotated(math.random(-2, 2)*math.random()/1.5)*math.random(100, 180)
            particle.physics:setLinearVelocity(dir.x, dir.y)
        end

        if particle.sprOptions then -- used for rubble
            -- set the sprite to a random one from the list
            local sprName = particle.sprOptions[math.random(1, #particle.sprOptions)]
            particle.sprite = sprites.rubble[sprName]
        end
    end

    function particle:update(dt)
        self.rot = self.rot + self.rotSpeed
        if self.animDelay > 0 then self.animDelay = self.animDelay - dt end
        if self.fade and self.animDelay <= 0 then
            self.alpha = self.alpha - dt*self.fadeFactor
        end
        self.upTimer = self.upTimer + dt

        if self.type == "greenCore" then
            local mult = 100
            if self.upTimer > 2 then mult = 175 * self.upTimer end
            local destVec = getFromToVector(self.physics:getX(), self.physics:getY(), self.startX, self.startY) * mult
            self.physics:applyForce(destVec.x, destVec.y)
            if self.upTimer < 2 then
                destVec = destVec:rotated(math.pi/2):normalized()*30
                self.physics:applyForce(destVec.x, destVec.y)
            end
        end
    end

    function particle:draw()
        love.graphics.setColor(1,1,1,self.alpha)
        local px, py = self.physics:getPosition()
        love.graphics.draw(self.sprite, px, py, self.rot, self.scaleX, nil, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
        setWhite()
    end

    return particle

end

return debrisInit