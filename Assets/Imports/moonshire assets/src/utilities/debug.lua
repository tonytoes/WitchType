debug = {}

function debug:init()
    debug.x = 2
    debug.y = 30
    debug.width = 30
    debug.height = 80
    debug.active = false
    debug.invincible = false
    debug.showCollisions = false
    debug.showHitboxes = false
    debug.showDebugInfo = false
    debug.hideHUD = false
    debug.hidePlayer = false
    debug.timer = 0
end

debug.warpList = {
    {id = "1_meadow", text = "Meadow", args = {x = 520, y = 344}},
    {id = "2_forest", text = "Forest", args = {x = 256, y = 212}},
    {id = "3_town", text = "Town", args = {x = 656, y = 400}},
    {id = "4_camp", text = "Camp", args = {x = 608, y = 336}},
    {id = "5_swamp", text = "Swamp", args = {x = 1082, y = 472}},
    {id = "6_ruins", text = "Ruins", args = {x = 760, y = 586}},
    {id = "7_waterfall", text = "Waterfall", args = {x = 616, y = 856}},
    {id = "dungeons/cloud/cloudMain", text = "Cloud Main", args = {x = 1144, y = 552}},
    {id = "dungeons/cloud/cloudEast", text = "Cloud East", args = {x = 790, y = 312}},
    {id = "dungeons/cloud/cloudWest", text = "Cloud West", args = {x = 2000, y = 1120}},
    {id = "caves/c_swamp", text = "Swamp Cave", args = {x = 1336, y = 680}},
    {id = "caves/c_marsh", text = "Marsh Cave", args = {x = 848, y = 688}},
    {id = "caves/c_volcano", text = "Volcano", args = {x = 960, y = 800}},
    {id = "dungeons/cloud/cloudBoss", text = "Lightning Boss", args = {x = 760, y = 700}},
    {id = "caves/c_eyeris", text = "Eyeris", args = {x = 816, y = 560}},
    {id = "7_waterfall", text = "Mom", args = {x = 704, y = 456}},
    {id = "overworld/a1", text = "overworld/a1", args = {x = 360, y = 160}},
}

debug.weaponList = {
    {id = "spear", text = lcl.items.weapons.spear},
    {id = "greataxe", text = lcl.items.weapons.greataxe},
    {id = "boomerang", text = lcl.items.weapons.boomerang},
    {id = "glassAxe", text = lcl.items.weapons.glassAxe},
    {id = "torch", text = lcl.items.weapons.torch},
    {id = "lightningRod", text = lcl.items.weapons.lightningRod},
    {id = "fan", text = lcl.items.weapons.fan},
}

debug.itemList = {
    {id = "lantern", text = lcl.items.lantern.name},
    {id = "swim", text = lcl.items.swim.name},
    {id = "gauntlets", text = lcl.items.gauntlets.name},
    {id = "map", text = lcl.items.map.name},
    {id = "lightning", text = lcl.items.lightning.name},
    {id = "gold", text = lcl.items.gold.name, args = {class="resource"}},
    {id = "bone", text = lcl.items.bone.name, args = {class="resource"}},
    {id = "ore", text = lcl.items.ore.name, args = {class="resource"}},
    {id = "fish", text = lcl.items.fish.name, args = {class="resource"}},
    {id = "seed", text = lcl.items.seed.name, args = {class="resource"}},
    {id = "battery", text = lcl.items.battery.name, args = {class="resource"}},
    {id = "diamond", text = lcl.items.diamond.name, args = {class="resource"}},
    {id = "gem_ruby", text = lcl.items.gems.ruby.name},
    {id = "gem_garnet", text = lcl.items.gems.garnet.name},
    {id = "gem_topaz", text = lcl.items.gems.topaz.name},
    {id = "gem_emerald", text = lcl.items.gems.emerald.name},
    {id = "gem_sapphire", text = lcl.items.gems.sapphire.name},
    {id = "gem_amethyst", text = lcl.items.gems.amethyst.name},
    {id = "dye_red", text = lcl.items.dye.name:gsub("{a}", lcl.items.colors.red)},
    {id = "dye_orange", text = lcl.items.dye.name:gsub("{a}", lcl.items.colors.orange)}, 
    {id = "dye_yellow", text = lcl.items.dye.name:gsub("{a}", lcl.items.colors.yellow)},
    {id = "dye_green", text = lcl.items.dye.name:gsub("{a}", lcl.items.colors.green)},
    {id = "dye_blue", text = lcl.items.dye.name:gsub("{a}", lcl.items.colors.blue)},
    {id = "dye_purple", text = lcl.items.dye.name:gsub("{a}", lcl.items.colors.purple)},   
}

debug.enemyList = {
    {id = "slimeRed", text = "Slime"},
    {id = "carnivorock", text = "Carnivorock"},
    {id = "kotengu", text = "Kotengu"},
    {id = "cloudSpirit", text = "Cloud Spirit"},
    {id = "hornetSoldier", text = "Hornet Soldier"},
    {id = "hornetWorker", text = "Hornet Worker"},
    {id = "puff", text = "Puff"},
    {id = "eyeRed", text = "Red Eye"},
}

debug.recordingList = {
    {id = "standard", text = "Standard", args = {width = 1920, height = 1080}},
    {id = "zoom", text = "Zoom", args = {width = 1920, height = 1080, scFactor = 8}},
    {id = "vertical", text = "Vertical", args = {width = 1080, height = 1920, scFactor = 6}},
    {id = "twitter", text = "Twitter", args = {width = 1280, height = 720, scFactor = 7.5}},
}

function debug:update(dt)
    if debug.timer > 0 then debug.timer = debug.timer - dt end
    if debug.timer < 0 then debug.timer = 0 end

    if love.keyboard.isDown("lctrl") and love.keyboard.isDown("lalt") and love.keyboard.isDown("d") then
        if debug.timer <= 0 and player.state == 0 then
            if not debug.active then sem:playSound(sounds.spells.heal, {volume=0.33, pitch=0.75}) end
            debug.active = true
            debug.timer = 2
            pause.targetState = 20
            pause:start()
        end
    end
end

function debug:draw()
    if debug.active and debug.showDebugInfo then
        debug.width = 30*scale
        debug.height = 80*scale
        debug.x = 2*scale
        debug.y = love.graphics.getHeight() - debug.height - 2*scale

        love.graphics.setColor(0, 0, 0, 0.5)
        love.graphics.rectangle("fill", debug.x, debug.y, debug.width, debug.height)
        love.graphics.setFont(fonts.debug)
        love.graphics.setColor(1, 1, 1, 1)

        local gap = 6*scale
        local margin = 2*scale
        love.graphics.print("d1: " .. d1, debug.x + margin, debug.y + margin)
        love.graphics.print("d2: " .. d2, debug.x + margin, debug.y + margin + gap)
    end
end
