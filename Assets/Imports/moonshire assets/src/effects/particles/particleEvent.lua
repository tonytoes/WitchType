function particleEvent(type, x, y, arg)

    if type == "rockBreakSm" then
        for i=1,8 do
            spawnParticle("debris", x, y, { type = "rockShard" })
        end
    end

    if type == "rockBreakBig" then
        for i=1,16 do
            spawnParticle("debris", x, y, { type = "rockShard" })
        end
    end

    if type == "rockBreakBigGrey" then
        for i=1,16 do
            spawnParticle("debris", x, y, { type = "rockShardGrey" })
        end
    end

    if type == "scrapBreakSm" then
        for i=1,8 do
            spawnParticle("debris", x, y, { type = "scrapShard" })
        end
    end

    if type == "scrapBreakBig" then
        for i=1,16 do
            spawnParticle("debris", x, y, { type = "scrapShard" })
        end
    end

    if type == "woodBreakSm" then
        for i=1,5 do
            spawnParticle("debris", x, y, { type = "wood" })
        end
    end

    if type == "woodDarkBreakSm" then
        for i=1,5 do
            spawnParticle("debris", x, y, { type = "woodDark" })
        end
    end

    if type == "woodBreakBig" then
        for i=1,12 do
            spawnParticle("debris", x, y, { type = "wood" })
        end
    end

    if type == "greenCoreShards" then
        for i=1,64 do
            spawnParticle("debris", x, y, { type = "greenCore", zeroGravity = true })
        end
    end

    if type == "potBreak" then
        for i=1,4 do
            spawnParticle("debris", x, y, { type = "potShard" })
        end
     end
     
     if type == "boxBreak" then
        for i=1,5 do
            spawnParticle("debris", x, y, { type = "wood1" })
        end
     end

    if type == "smallWeaponBreak" then
        for i=1,4 do
            spawnParticle("debris", x, y, { type = "steelShard" })
        end
    end

    if type == "weaponBreak" then
        for i=1,8 do
            spawnParticle("debris", x, y, { type = "steelShard" })
        end
    end

    if type == "grassBreak" then
        effects:spawn("plantCut", x, y)
        spawnParticle("debris", x, y, { type = "grass" })
        spawnParticle("debris", x, y, { type = "grass" })
        spawnParticle("debris", x, y, { type = "grass" })
        spawnParticle("debris", x, y, { type = "grass" })
    end

    if type == "minGrassBreak" then
        effects:spawn("plantCut", x, y)
        spawnParticle("debris", x, y, { type = "minGrass" })
        spawnParticle("debris", x, y, { type = "minGrass" })
        spawnParticle("debris", x, y, { type = "minGrass" })
        --spawnParticle("debris", x, y, { type = "minGrass" })
    end

    if type == "vineBreak" then
        effects:spawn("plantCut", x, y)
        spawnParticle("debris", x, y, { type = "vine" })
        spawnParticle("debris", x, y, { type = "vine" })
        spawnParticle("debris", x, y, { type = "vine" })
        spawnParticle("debris", x, y, { type = "vine" })
    end

    if type == "groundIce" then
        effects:spawn("groundIce1", x, y)
        effects:spawn("groundIce2", x, y)
        effects:spawn("groundIce3", x, y)
    end

    if type == "golemStomp" then
        local totalSlices = 8
        for i=1,totalSlices do
            local newI = i - 1
            local tempDir = vector(24, 0)
            local newSc = 1
            tempDir:rotateInplace((math.pi*2)*(newI/totalSlices))
            if tempDir.x < 0 then newSc = -1 end
            effects:spawn("rockSpike", x + tempDir.x, y + tempDir.y, {scaleX = newSc})
        end
    end

    if type == "death" then
        --spawnParticle("death", x, y, {dir = vector(-1, 1)})
        --spawnParticle("death", x, y, {dir = vector(-1, -1)})
        --spawnParticle("death", x, y, {dir = vector(1, 1)})
        --spawnParticle("death", x, y, {dir = vector(1, -1)})

        --[[for i=1,14 do
            local angle = 0 - (i/14 * math.pi)
            local newDir = vector(1, 0):rotated(angle)
            effects:spawn("damage", x, y, {dir = newDir})
        end]]

        --[[for i=1,40 do
            local angle = 0 - (i/41 * math.pi)
            local newDir = vector(1, 0):rotated(angle)
            spawnParticle("death", x, y, {dir = newDir})
        end]]

        spawnBlast(x, y, 20, "white", 0.2)
        for i=1,20 do
            local angle = math.pi/-6 - (i/21 * math.pi/1.5)
            local newDir = vector(1, 0):rotated(angle)
            spawnParticle("death", x, y, {dir = newDir})
        end
        shake:standard(1)
    end

    if type == "playerHit" then
        --spawnBlast(x, y, 20, "white", 0.2)
        for i=1,14 do
            local angle = math.pi/-6 - (i/21 * math.pi/1.5)
            local newDir = vector(1, 0):rotated(angle)
            spawnParticle("death", x, y, {dir = newDir, scl = 0.6})
        end
    end

    if type == "splash" then
        spawnParticle("tiny", x, y, {vec = vector(0, -90), time = 0.7})
        spawnParticle("tiny", x+1, y, {vec = vector(10, -70), time = 0.4})
        spawnParticle("tiny", x-1, y, {vec = vector(-10, -70), time = 0.4})
    end

end