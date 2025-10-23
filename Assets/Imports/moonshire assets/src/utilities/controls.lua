function batonClick(dt)

    if not input then return end

    if input:released("mainAction") then
        newui:releaseSelect()
        newui.hasClicked = false
    end

    if input:released("mainAction") and player.mainHold > player.chargeThresh then
        --player:throwWeapon()
        player:startAttack({charge=true})
    end

    if input:released("pickup") and player.hasWeapon and player.sideHold <= 0.3 then
        --[[if player.state == 0 and not player.inWater then -- and player.sideDoubleTapDt > 0.3
            player:dropWeapon()
            --player.sideDoubleTapDt = 0
        else
            
        end
        player:attemptPickup()]]
        player:startPickup()
    end

    --[[if input:released("magic") and player.state == 5 and player.castType == 1 then -- cancel spell if you let go too early
        player:cancelSpell()
    end]]

    if input:released("pickup") and player.state == 5 and player.castType == 2 then -- cancel spell if you let go too early
        player:cancelSpell()
    end

    if input:down("mainAction") and boomerangHeldCheck() and not player.inWater then
        player.mainHold = player.mainHold + dt
    else
        player.mainHold = 0
    end

    if input:down("pickup") and boomerangHeldCheck() and not player.inWater then
        player.sideHold = player.sideHold + dt
    else
        player.sideHold = 0
    end

    --[[if input:down("magic") then
        player.magicHold = player.magicHold + dt
    else
        player.magicHold = 0
    end]]

    if input.pressed then
        if globalStun > 0 then
            return nil
        end

        if input:pressed("mainAction") then
            dialogue:continue()
            answer:click()
            newui:select()
            if player.postBuffer > 0 then
                -- don't do anything
            else
                pause:handleClick()
                npcs:checkClick()
                player:startAttack()
            end
        end

        if input:pressed("pickup") then
            if player.postBuffer > 0 then
                -- don't do anything
            else
                if not player.hasWeapon then player:startPickup() end
            end
        end

        if input:pressed("pause") then
            if player.postBuffer > 0 then
                -- don't do anything
            elseif (gamestate == 1 and player.state == 0 and pause.state == 0) or (gamestate == 1 and pause.state >= 1) then
                pause:toggle()
            end
        end

        if input:pressed("dodge") then
            player:roll()
        end

        if input:pressed("right") then
            answer.hoverInt = 2
            --pause:handleControllerDir(vector(1,0))
            newui:moveCursor2("right")
            pause:moveCursor2("right")
        end
        if input:pressed("left") then
            answer.hoverInt = 1
            --pause:handleControllerDir(vector(-1,0))
            newui:moveCursor2("left")
            pause:moveCursor2("left")
        end
        if input:pressed("up") then
            --pause:handleControllerDir(vector(0,-1))
            newui:moveCursor2("up")
            pause:moveCursor2("up")
        end
        if input:pressed("down") then
            --pause:handleControllerDir(vector(0,1))
            newui:moveCursor2("down")
            pause:moveCursor2("down")
        end

        --[[if input:pressed("timer") then
            if speedrun.state == 0 or speedrun.state == 2 then
                speedrun:start()
            else
                speedrun:stop()
            end
        end]]

        if input:pressed("openConfig") then
            if gamestate < 1 then
                love.event.quit()
            elseif gamestate == 1 then
                if pause.state > 0 or player.state == 0 then
                    pause:toggle()
                end
            end
        end

        if input:pressed("menuShiftRight") then
            if pause.state > 0 then
                pause:shift(1)
            end
        end

        if input:pressed("menuShiftLeft") then
            if pause.state > 0 then
                pause:shift(-1)
            end
        end
    end
end
