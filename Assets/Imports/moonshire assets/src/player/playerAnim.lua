function player:postItemGetAnim()
    if player.itemGetId then
        player.itemGetSpr = nil
        player.itemGetId = nil

        if talk.state <= 0 then
            player.state = 0
        end
    end
end

function player:onAnimComplete()
    if player.animStr == "stop" then player:postItemGetAnim() player:changeAnim("idle") end
    if player.animStr == "attack" then player:postAttackAnim() end
    if player.animStr == "roll" then player:finishRollAnim() end
    if player.animStr == "charge" then player:cast() end
    if player.animStr == "pickup" then player:resetToNormal() end
end

function player:changeAnim(newAnim, args)

    local urg = 0 -- up row gap
    if player.lastMoveDir and player.lastMoveDir.y < player.lookUpThreshold then urg = 4 end

    if player.animStr == newAnim and player.animUrg == urg then return end
    player.animStr = newAnim
    player.animUrg = urg

    if newAnim == "idle" then
        player.animGrid = player.grid(1,1+urg)
        player.animFrameSpeeds = 10 -- can be number or table list
    end

    if newAnim == "stop" then
        player.animGrid = player.grid(3,1+urg, 2,1+urg)
        player.animFrameSpeeds = {0.22, 0.18}
    end

    if newAnim == "walk" then
        player.animGrid = player.grid('1-6', 2+urg)
        player.animFrameSpeeds = 0.12
    end

    if newAnim == "attack" then
        if args and args.slowStab then
            player.animGrid = player.grid(1,3+urg, 3,3+urg, 4,3+urg)
        else -- swing
            player.animGrid = player.grid(1,3+urg, 2,3+urg, 4,3+urg)
        end
        player.animFrameSpeeds = {0.12, 0.18, 0.12}
    end

    if newAnim == "roll" then
        player.animGrid = player.grid('1-4', 4+urg, 5,1+urg)
        player.animFrameSpeeds = 0.085
    end

    if newAnim == "swim" then
        player.animGrid = player.grid('5-6',4+urg)
        player.animFrameSpeeds = 0.4
    end

    if newAnim == "charge" then
        player.animGrid = player.grid('3-6', 1+urg)
        player.animFrameSpeeds = {0.1, 0.12, 0.1, 0.22}
    end

    if newAnim == "cast" then
        player.animGrid = player.grid(2,1, 5,3, 3,1)
        player.animFrameSpeeds = {0.04, 0.32, 0.09}
    end

    if newAnim == "pickup" then
        player.animGrid = player.grid(4,1+urg, 5,1+urg, 2,1+urg)
        player.animFrameSpeeds = {0.1, 0.13, 0.1}
    end

    if newAnim == "itemGet" then
        player.animGrid = player.grid(4,3, 5,3)
        player.animFrameSpeeds = {0.12, 999}
    end

    if args then
        if args.frameSpeeds then player.animFrameSpeeds = args.frameSpeeds end
    end

    player.anim = anim8.newAnimation(player.animGrid, player.animFrameSpeeds, player.onAnimComplete)
end

function player:setAttackAnim()
    if player.attack then
        player.lastMoveDir = player.attackDir
        local attAnim = nil
        local lookUp = player.attackDir.y < player.lookUpThreshold
        if player.attack.attackType == "swing"
        or player.attack.attackType == "heavySwing"
        or player.attack.attackType == "stab" then
            player.animTriggerFrame = 2
            player:changeAnim("attack", {frameSpeeds=player.attack.frameSpeeds})
        elseif player.attack.attackType == "shoot"
        or player.attack.attackType == "shortThrow"
        or player.attack.attackType == "effect" then
            player.animTriggerFrame = 2
            player:changeAnim("attack", {frameSpeeds=player.attack.frameSpeeds, slowStab=true})
        elseif player.attack.attackType == "cast" or player.attack.attackType == "effectCast" then
            player.animTriggerFrame = 3
            player.animGrid = player.grid(4,3+player.animUrg, 5,1+player.animUrg)
            player.animFrameSpeeds = {0.4, 0.12}
        end
        --player.anim = anim8.newAnimation(player.animGrid, player.animFrameSpeeds, player.onAnimComplete)
    end
end

function player:postAttackAnim()
    player.state = 0
    player:changeAnim("idle")
    if player.sequence and player.sequenceIndex >= 0 then
        if player.sequenceIndex < #player.sequence then
            player:startAttack()
        else
            player.sequence = nil
            player.sequenceIndex = -1
        end
    end
end