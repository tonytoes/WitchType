function rubbleEvent(id, x, y, args)

    if id == "wood" then
        for i=1,5 do
            rubbles:spawn('wood', x, y, {dir=getRubbleDir(10 + math.random()*24), jumpHeight=math.random(20, 48)})
        end
        particleEvent("woodBreakSm", x, y)
    end

    if id == "woodDark" then
        for i=1,5 do
            rubbles:spawn('woodDark', x, y, {dir=getRubbleDir(10 + math.random()*24), jumpHeight=math.random(20, 48)})
        end
        particleEvent("woodDarkBreakSm", x, y)
    end

    if id == "woodSmall" then
        for i=1,2 do
            rubbles:spawn('wood', x, y, {dir=getRubbleDir(10 + math.random()*24), jumpHeight=math.random(20, 48)})
        end
        for i=1,2 do
            spawnParticle("debris", x, y, { type = "wood" })
        end
    end

    if id == "logs" then
        for i=1,2 do
            rubbles:spawn('log', x, y, {dir=getRubbleDir(10 + math.random()*24), jumpHeight=math.random(20, 48)})
        end
        for i=1,3 do
            spawnParticle("debris", x, y, { type = "log" })
        end
    end

    if id == "potShards" then
        for i=1,4 do
            rubbles:spawn('shardL', x, y, {dir=getRubbleDir(20 + math.random()*24), jumpHeight=math.random(22, 50)})
        end
        for i=1,4 do
            spawnParticle("debris", x, y, { type = "shardL" })
        end
    end

    if id == "potShardsSmall" then
        for i=1,3 do
            rubbles:spawn('shardS', x, y, {dir=getRubbleDir(10 + math.random()*24), jumpHeight=math.random(6, 14)})
        end
    end

    if id == "shelf" then
        rubbleEvent("wood", x, y)
        rubbleEvent("potShards", x, y)
    end
end

function getRubbleDir(spdVal)
    return vector(spdVal, 0):rotated(math.random()*math.pi*2)
end
