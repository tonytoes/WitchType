function createCollisionClasses()
    world:addCollisionClass('Ignore', {ignores = {'Ignore'}})
    world:addCollisionClass('Ground', {ignores = {'Ignore'}})
    world:addCollisionClass('Player', {ignores = {'Ignore'}})
    world:addCollisionClass('Wall', {ignores = {'Ignore'}})
    world:addCollisionClass('Prop', {ignores = {'Ignore'}})
    world:addCollisionClass('Transition', {ignores = {'Ignore'}})
    world:addCollisionClass('Enemy', {ignores = {'Ignore', 'Player'}})
    world:addCollisionClass('Enemy2', {ignores = {'Ignore', 'Player', 'Ground', 'Enemy', 'Enemy2'}})
    world:addCollisionClass('Projectile', {ignores = {'Ignore', 'Enemy', 'Enemy2', 'Player', 'Ground', 'Transition'}})
    world:addCollisionClass('AirItem', {ignores = {'AirItem', 'Ignore', 'Enemy', 'Enemy2', 'Player', 'Ground', 'Transition', 'Projectile'}})

    particleWorld:addCollisionClass('Particle', {ignores = {'Particle'}})
end