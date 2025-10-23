shopItems = {}

function shopItems:spawn(id, x, y, args)
    if allItems[id] then return end -- item was already purchased

    -- initialize new shopItem table
    local shopItem = {}
    shopItem.id = id
    shopItem.width = 16
    shopItem.height = 16
    shopItem.title = loots.all[id].title
    shopItem.desc = loots.all[id].desc
    shopItem.price = loots.all[id].price
    shopItem.scale = loots.all[id].scl
    shopItem.resourceCost = loots.all[id].resourceCost
    shopItem.x = x
    shopItem.y = y
    shopItem.shadowY = loots.all[id].shadowY
    shopItem.shadowSpr = loots.all[id].shadowSpr
    shopItem.dead = false
    shopItem.shopItem = true
    shopItem.focusNpcName = "shop-" .. id

    shopItem.args = args
    shopItem.colorImmune = true

    function shopItem:update(dt)
        if self.anim then self.anim:update(dt) end
    end

    function shopItem:draw()
        setWhite()
        drawLoot(self.id, self.x, self.y-4, 1)
    end

    function shopItem:interact()
        dialogue:setFocus({ itemId=self.id, focus=self.title, price=self.price, resourceCost=self.resourceCost, npcName=self.focusNpcName, desc=self.desc })

        if loots.all[self.id].shopTitle then
            dialogue.focus = loots.all[self.id].shopTitle
        end

        -- basic means it does not save convo state to save file
        -- narration means that the text comes from the narration localized file, not dialogue
        talk:start("buy", {basic=true, narration=true})
    end

    npcs:spawn(shopItem.focusNpcName, x, y, {visible=false, parent=shopItem, talkYoff=-18, talkDist=16, talkCushion=18, talkCushionY=-2})
    
    table.insert(shopItems, shopItem)
end

function shopItems:update(dt)
    for _,s in ipairs(shopItems) do
        s:update(dt)
    end

    local i = #shopItems
    while i > 0 do
        if shopItems[i].dead then table.remove(shopItems, i) end
        i = i - 1
    end
end
