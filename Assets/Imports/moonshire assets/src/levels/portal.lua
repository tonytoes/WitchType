portals = {}
portalHold = {}

function portals:spawn(x, y, id)
    local portal = {}
    portal.x = x
    portal.y = y
    portal.id = id

    local isBossPortal = false
    for i,e in ipairs(enemies) do
        if e.boss then
            isBossPortal = true
        end
    end

    if isBossPortal then
        table.insert(portalHold, portal)
        return nil
    end

    portal.spr = sprites.effects.portal
    portal.grid = anim8.newGrid(32, 32, portal.spr:getWidth(), portal.spr:getHeight())
    portal.anim = anim8.newAnimation(portal.grid('1-8', 1), 0.1)

    if id == "toBoss1" then
        spawnTransition(x - 8, y - 16, 16, 19, "toBoss1")
    end

    if id == "toPrairieCave" then
        spawnTransition(x - 8, y - 16, 16, 19, "5_prairie", 618, 146)
    end

    if id == "toCloudDungeon" then
        spawnTransition(x - 8, y - 16, 16, 19, "d_cloud", 1096, 492)
    end

    if id == "toForest" then
        spawnTransition(x - 8, y - 16, 16, 19, "3_forest-central", 600, 168)
    end

    function portal:update(dt)
        self.anim:update(dt)
    end

    function portal:draw()
        self.anim:draw(self.spr, self.x, self.y-12, nil, nil, nil, 16, 16)
    end

    table.insert(portals, portal)
end

function portals:update(dt)
    for _,p in ipairs(portals) do
        p:update(dt)
    end
end

function portalHold:update(dt)
    if #portalHold <= 0 then return nil end

    local isBossDead = true
    for i,e in ipairs(enemies) do
        if e.boss then
            isBossDead = false
        end
    end

    if isBossDead then
        for i,p in ipairs(portalHold) do
            local yOff = 0
            if distanceBetween(player:getX(), player:getY(), p.x, p.y) < 32 then
                yOff = 96
            end
            portals:spawn(p.x, p.y + yOff, p.id)
        end

        removeTable(portalHold)
    end
end
