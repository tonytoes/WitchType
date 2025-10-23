local function tinyInit(particle, x, y, args)

    particle.physics = particleWorld:newCircleCollider(x, y, 2)
    particle.physics:setFixedRotation(true)
    particle.physics:setCollisionClass("Particle")
    particle.physics.parent = particle

    particle.style = args.style
    particle.vec = args.vec
    particle.sprite = sprites.effects.pixel
    particle.timer = args.time * 1.2
    particle.alpha = 1
    particle.rad = 2

    particle.physics:setLinearVelocity(particle.vec:unpack())
    flux.to(particle, args.time, {alpha = 0}):ease("quadout")

    function particle:update(dt)
        
    end

    function particle:draw()
        love.graphics.setColor(1,1,1,self.alpha)
        local px, py = self.physics:getPosition()
        love.graphics.draw(self.sprite, px, py, self.rot, nil, nil, self.sprite:getWidth()/2, self.sprite:getHeight()/2)
        setWhite()
    end

    return particle

end

return tinyInit