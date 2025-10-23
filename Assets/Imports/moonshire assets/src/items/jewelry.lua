jewelry = {}

function jewelry:init()
    jewelry.healthRegen = false
    jewelry.healthRegenTimer = 0
    jewelry.healthRegenMaxTimer = 10
end

-- constantly runs and handles jewelry-related skills
function jewelry:update(dt)

    if self.healthRegen and player.health < player.maxHealth then
        self.healthRegenTimer = self.healthRegenTimer - dt
        if self.healthRegenTimer < 0 then
            self.healthRegenTimer = self.healthRegenMaxTimer
            -- heal player by 1
            effects:spawn("minorHeal", player:getX(), player:getY())
            player:simpleHeal(1)
        end
    end

end

function jewelry:itemToAbilityMap(id)
    -- by default, assume passing in piece id, such as 'ring_ruby'
    if id == "ring_ruby" then
        return "maxHealth1"
    elseif id == "ring_emerald" then
        return "criticalHit"
    elseif id == "ring_amethyst" then
        return "wealth"
    end

    if id == "necklace_ruby" then
        return "safety"
    elseif id == "necklace_emerald" then
        return "evasion"
    elseif id == "necklace_amethyst" then
        return "salvage"
    end

    if id == "bracelet_ruby" then
        return "regenHealth"
    end

    return ""
end

function jewelry:abilityToItemMap(id)
    -- by default, assume passing in piece id, such as 'ring_ruby'
    if id == "maxHealth1" then
        return "ring_ruby"
    elseif id == "criticalHit" then
        return "ring_emerald"
    elseif id == "wealth" then
        return "ring_amethyst"
    end

    if id == "safety" then
        return "necklace_ruby"
    elseif id == "evasion" then
        return "necklace_emerald"
    elseif id == "salvage" then
        return "necklace_amethyst"
    end

    if id == "regenHealth" then
        return "bracelet_ruby"
    end

    return ""
end

function jewelry:checkAbility(aid)
    local fullItemName = jewelry:abilityToItemMap(aid)
    -- split itemName by underscore
    local itemParts = {}
    local itemName = ""
    local gemName = ""
    for part in string.gmatch(fullItemName, "[^_]+") do table.insert(itemParts, part) end
    if #itemParts == 2 then
        itemName = itemParts[1]
        gemName = itemParts[2]
    end

    return false
end

function jewelry:resetStats()
    self.healthRegen = jewelry:checkAbility("regenHealth")
    if self.healthRegen then
        if self.healthRegenTimer <= 0 then
            self.healthRegenTimer = jewelry.healthRegenMaxTimer
        end
    end

    local prevMaxHealth = player.maxHealth
    player:setMaxHealth()
    if player.maxHealth > data.player.maxHealth and player.health == (player.maxHealth - 1) then
        --player.health = player.maxHealth
    end
end
