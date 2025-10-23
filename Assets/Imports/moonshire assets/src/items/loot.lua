loots = {}

loots.all = {}
loots.all.grid = anim8.newGrid(16, 16, 64, 16)

-- NOTE: add the name of all loots that have an animation to this table
loots.all.anims = {}

loots.all.lantern = {
    title = lcl.items.lantern.name,
    desc = lcl.items.lantern.desc,
    spr = sprites.items.icons.lantern,
    spriteSheet = sprites.items.icons.lanternAnim,
    anim = anim8.newAnimation(loots.all.grid('1-4', 1), 0.12),
    shadowSpr = sprites.effects.shadows.medium,
    frameCount = 4,
    shadowY = 0.5,
    scl = 1.1,
    price = 5,
    resourceCost = "gold"
}
table.insert(loots.all.anims, "lantern")

loots.all.money = {
    title = lcl.items.money.name,
    desc = lcl.items.money.desc,
    spr = sprites.items.icons.lantern,
    spriteSheet = sprites.items.icons.coinAnim,
    anim = anim8.newAnimation(loots.all.grid('1-4', 1), {0.75, 0.12, 0.12, 0.12}),
    shadowSpr = sprites.effects.shadows.medium,
    frameCount = 4,
    shadowY = 0.5,
    scl = 1
}
table.insert(loots.all.anims, "money")

loots.all.coin = {
    spriteSheet = sprites.items.icons.coinAnim,
    anim = anim8.newAnimation(loots.all.grid('1-4', 1), 0.11),
    shadowSpr = sprites.effects.shadows.small,
    frameCount = 4,
    shadowY = 0.5,
    scl = 1
}
table.insert(loots.all.anims, "coin")

loots.all.swim = {
    title = lcl.items.swim.name,
    desc = lcl.items.swim.desc,
    spr = sprites.items.icons.tools.swim,
    scl = 1.15
}

loots.all.sword = {
    title = lcl.items.sword.name,
    desc = lcl.items.sword.desc,
    spr = sprites.weapons.sword,
    rot = math.pi/-2,
    scl = 1.1
}

loots.all.gauntlets = {
    title = lcl.items.gauntlets.name,
    desc = lcl.items.gauntlets.desc,
    spr = sprites.items.icons.gauntlets,
    scl = 1.04
}

loots.all.ringVit = {
    title = lcl.items.ringVit.name,
    desc = lcl.items.ringVit.desc,
    spr = sprites.items.icons.ringVit,
    scl = 1.1,
    shadowSpr = sprites.effects.shadows.small,
    shadowY = 1.5,
    price = 50,
    xOff = 0.5
}

loots.all.map = {
    title = lcl.items.map.name,
    desc = lcl.items.map.desc,
    spr = sprites.items.icons.map,
    scl = 1,
    shadowSpr = sprites.effects.shadows.medium,
    shadowY = 1.5,
    price = 3,
    resourceCost = "gold"
}

loots.all.shovel = {
    title = lcl.items.shovel.name,
    desc = lcl.items.shovel.desc,
    spr = sprites.items.icons.shovel,
    scl = 1.1,
    shadowSpr = sprites.effects.shadows.small,
    shadowY = 2.5,
    price = 10,
    resourceCost = "gold"
}

loots.all.multi = {
    title = lcl.items.multi.name,
    desc = lcl.items.multi.desc,
    spr = sprites.items.icons.multi,
    scl = 1,
    shadowSpr = sprites.effects.shadows.medium,
}

loots.all.lightning = {
    title = lcl.items.lightning.name,
    desc = lcl.items.lightning.desc,
    spr = sprites.items.icons.lightning,
    scl = 1,
    shadowSpr = sprites.effects.shadows.medium,
    shadowY = 8,
}


loots.all.resource_diamond = {
    resource = true,
    title = lcl.items.diamond.name,
    desc = lcl.items.diamond.desc,
    spr = sprites.items.resources.diamond1,
    scl = 1,
    shadowSpr = sprites.effects.shadows.small,
    price = 20,
    resourceCost = "gold",
    shadowY = -1,
}


loots.all.dye = {
    title = lcl.items.dye.name,
    desc = lcl.items.dye.desc,
    spr = sprites.items.icons.dye_default,
    scl = 1
}

local function createDye(clr) -- lowercase name of color
    return {
        title = lcl.items.colors[clr],
        shopTitle = lcl.items.dye.name:gsub('{a}', lcl.items.colors[clr]),
        desc = lcl.items.dye.desc:gsub('{a}', lcl.items.colors[clr]),
        spr = sprites.items.icons["dye_" .. clr],
        scl = 0.88,
        shadowSpr = sprites.effects.shadows.small,
        shadowY = -2.5
    }
end

loots.all.dye_red = createDye('red')
loots.all.dye_orange = createDye('orange')
loots.all.dye_yellow = createDye('yellow')
loots.all.dye_green = createDye('green')
loots.all.dye_blue = createDye('blue')
loots.all.dye_purple = createDye('purple')
loots.all.dye_white = createDye('white')

loots.all.dye_orange.price = 10
loots.all.dye_purple.price = 10

local function createGem(clr) -- lowercase name of color
    return {
        title = lcl.items.gems[clr].name,
        shopTitle = lcl.items.gems[clr].name,
        desc = lcl.items.gems[clr].desc,
        spr = sprites.items.icons.gems[clr],
        scl = 1,
        shadowSpr = sprites.effects.shadows.small,
        shadowY = -2.5
    }
end

loots.all.gem_ruby = createGem('ruby')
loots.all.gem_garnet = createGem('garnet')
loots.all.gem_topaz = createGem('topaz')
loots.all.gem_emerald = createGem('emerald')
loots.all.gem_sapphire = createGem('sapphire')
loots.all.gem_amethyst = createGem('amethyst')

loots.all.ring = {
    title = lcl.items.ring.name,
    desc = lcl.items.ring.desc,
    spr = sprites.items.icons.ring,
    shadowSpr = sprites.effects.shadows.small,
    shadowY = 0.5,
    price = 30,
    scl = 1,
    resourceCost = "gold"
}

loots.all.necklace = {
    title = lcl.items.necklace.name,
    desc = lcl.items.necklace.desc,
    spr = sprites.items.icons.necklace,
    shadowSpr = sprites.effects.shadows.small,
    xOff = -2,
    shadowY = 1.75,
    price = 20,
    scl = 1,
    resourceCost = "gold"
}

loots.all.ring_ruby = {
    title = lcl.items.rings.ruby.name,
    desc = lcl.items.rings.ruby.desc,
    spr = sprites.items.icons.ring_ruby,
    scl = 1
}
loots.all.necklace_ruby = {
    title = lcl.items.necklaces.ruby.name,
    desc = lcl.items.necklaces.ruby.desc,
    spr = sprites.items.icons.necklace_ruby,
    scl = 1
}
loots.all.bracelet_ruby = {
    title = lcl.items.bracelet.name,
    desc = lcl.items.bracelet.desc,
    spr = sprites.items.icons.bracelet_ruby,
    scl = 1
}

loots.all.ring_emerald = {
    title = lcl.items.rings.emerald.name,
    desc = lcl.items.rings.emerald.desc,
    spr = sprites.items.icons.ring_emerald,
    scl = 1
}
loots.all.necklace_emerald = {
    title = lcl.items.necklaces.emerald.name,
    desc = lcl.items.necklaces.emerald.desc,
    spr = sprites.items.icons.necklace_emerald,
    scl = 1
}

loots.all.ring_amethyst = {
    title = lcl.items.rings.amethyst.name,
    desc = lcl.items.rings.amethyst.desc,
    spr = sprites.items.icons.ring_amethyst,
    scl = 1
}
loots.all.necklace_amethyst = {
    title = lcl.items.necklaces.amethyst.name,
    desc = lcl.items.necklaces.amethyst.desc,
    spr = sprites.items.icons.necklace_amethyst,
    scl = 1
}

-- pass in loot.all id
-- alpha handled externally
function drawLoot(ltid, x, y, scl)
    local lt = loots.all[ltid]
    local xOffset = 0
    local rotation = 0
    if lt then
        if lt.rot then rotation = lt.rot end
        if lt.xOff then xOffset = lt.xOff end
        if lt.spriteSheet then
            lt.anim:draw(lt.spriteSheet, x + xOffset, y, rotation, lt.scl*scl, lt.scl*scl, 8, 8)
        else
            love.graphics.draw(lt.spr, x + xOffset, y, rotation, lt.scl*scl, lt.scl*scl, lt.spr:getWidth()/2, lt.spr:getHeight()/2)
        end
    end
end

function loots:spawn(id, x, y, args) -- tangible loot that can be collected in the world
    local loot = {}
    loot.id = id
    loot.x = x
    loot.y = y
    loot.dir = nil
    loot.bounceY = 0
    loot.scale = 1
    loot.state = 0 -- grounded, 1 = in air, 2 = magnet, 11 = grand reward pause, 12 = float towards player
    loot.timer = 0.58 -- not used
    loot.magnet = false
    loot.speed = 0
    loot.shadowY = 1
    loot.timer = 0
    loot.colorImmune = true

    loot.floatTime = 0.8
    loot.floatY = 0
    loot.floatMax = 1

    -- call this function if the loot floats, to start the cycle
    function loot:floatUp(dest, start)
        local time = self.floatTime
        if start then time = math.random() end
        self.tween = flux.to(self, time, {floatY = dest}):ease("sineinout"):oncomplete(function() self:floatDown(self.floatMax*-1) end)
    end

    function loot:floatDown(dest)
        self.tween = flux.to(self, self.floatTime, {floatY = dest}):ease("sineinout"):oncomplete(function() self:floatUp(self.floatMax) end)
    end

    function loot:startGrand()
        loot.state = 11
        loot.timer = 2
        loot.float = true
    end

    -- if magnet is true, it will go to state 2 partway through bounce
    if id == "coin" then loot.magnet = true loot.scale = 0.75 end
    if id == "lightning" then loot:startGrand() end

    if args and args.dir then loot.dir = args.dir end
    if args and args.chest then loot.chest = true end

    if args and args.bounce then
        loot.state = 1
        local totalTime = 0.9
        local height = -28
        if id == "coin" then finalHeight = -6 totalTime = 0.5 + math.random()*0.4 end

        flux.to(loot, totalTime/2, {bounceY = height}):ease("quadout"):oncomplete(function()
            if loot.magnet then
                loot.state = 2
                flux.to(loot, totalTime, {bounceY = -6}):ease("sineinout")
            else
                flux.to(loot, totalTime/2, {bounceY = 0}):ease("quadin"):oncomplete(function()
                    if loot.chest and not loot.magnet then loot:collect() end
                end)
            end
        end)
    end

    if loot.float then
        loot:floatUp(loot.floatMax, true)
    end

    function loot:collect()
        self.dead = true

        if self.id == "coin" then
            dj.play(sounds.items.coin, "static", "effect", 1)
            data.money = data.money + 1
        else
            player:itemGet(self.id)
        end

    end

    function loot:update(dt)
        if self.state == 2 then
            self.speed = self.speed + dt*400
            if self.speed > 1200 then self.speed = 1200 end
            self.dir = getFromToVector(self.x, self.y, player:getX(), player:getY() + 6) * self.speed
        end

        if self.dir and self.state >= 1 then
            self.x = self.x + self.dir.x * dt -- speed is baked into dir
            self.y = self.y + self.dir.y * dt
        end

        self.timer = self.timer - dt
        if self.timer <= 0 then
            if self.id == "coin" then
                --self.state = 2
            end
            if self.state == 11 then
                self.state = 12 -- floating towards player
            end
        end

        if self.state == 11 or self.state == 12 then
            player.focusX = self.x
            player.focusY = self.y
        end

        if self.state == 12 then
            self.dir = getFromToVector(self.x, self.y, player:getX(), player:getY()) * 50
        end

        if self.state == 0 or self.state == 2 or self.state == 12 then
            local distCheck = 3 if self.state == 12 then distCheck = 8 end
            if distanceBetween(self.x, self.y, player:getX(), player:getY() + 6) < distCheck then
                self:collect()
            end
        end
    end

    function loot:draw()
        drawLoot(self.id, self.x, self.y + self.bounceY + self.floatY, self.scale)
    end

    table.insert(loots, loot)
end

function loots:update(dt)
    for _,l in ipairs(loots.all.anims) do
        loots.all[l].anim:update(dt)
    end
    
    for _,l in ipairs(loots) do
        l:update(dt)
    end

    local i = #loots
    while i > 0 do
        if loots[i].dead then
            table.remove(loots, i)
        end
        i = i - 1
    end
end
