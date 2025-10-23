function spawnEnemyGroup(x, y, single)
    local val = math.random(1, 6)
    local enRand = math.random(1, 4)
    local enemyType = "slime"

    if enRand == 1 then
        enemyType = "slime"
    elseif enRand == 2 then
        enemyType = "eye"
    elseif enRand == 3 then
        enemyType = "skeleton"
    else
        enemyType = "bat"
    end

    if single then
        spawnEnemy(x, y, enemyType)
        return nil
    end

    if val == 1 then
        spawnEnemy(x - 32, y, enemyType)
        spawnEnemy(x + 32, y, enemyType)
    elseif val == 2 then
        spawnEnemy(x, y - 32, enemyType)
        spawnEnemy(x, y + 32, enemyType)
    elseif val == 3 then
        spawnEnemy(x - 32, y - 20, enemyType)
        spawnEnemy(x + 32, y + 20, enemyType)
    elseif val == 4 then
        spawnEnemy(x - 32, y + 20, enemyType)
        spawnEnemy(x + 32, y - 20, enemyType)
    elseif val == 5 then
        spawnEnemy(x - 40, y + 25, enemyType)
        spawnEnemy(x + 40, y + 25, enemyType)
        spawnEnemy(x, y - 25, enemyType)
    elseif val == 6 then
        spawnEnemy(x - 40, y - 25, enemyType)
        spawnEnemy(x + 40, y - 25, enemyType)
        spawnEnemy(x, y + 25, enemyType)
    elseif val == 7 then
    elseif val == 8 then
    elseif val == 9 then
    elseif val == 10 then
    elseif val == 11 then
    elseif val == 12 then
    end
end
