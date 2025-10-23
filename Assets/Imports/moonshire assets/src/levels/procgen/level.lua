level = {}
level.branchTable = {}

paths = {}

-- 11/1/2022 Milestone 1: levels create without branches, assumes all rooms are Small

-- resets all values for the level
function level:start(id)
    rooms:reset()

    level.id = id
    level.currentRoom = 1
    level.name = "Test Level"
    level.rooms = 9
    level.branches = 3
    level.locks = 2
    level.items = 3
    level.favDir = Dir.right
    level.roomCounter = 0
    level.pathIter = 1
    level.inProgress = true

    level:setBranchTable()
    level:newPath(-1, Dir.up)
    generateLevel()
end

function level:setBranchTable()
    for k,v in pairs(level.branchTable) do level.branchTable[k]=nil end
    level.branchTable = {}
    for k,v in pairs(paths) do paths[k]=nil end
    paths = {}
    for i=1,level.rooms do
        level.branchTable[i] = false
        -- TODO: set some to true (based on level.branches)
    end
end

function level:newPath(roomId, dir)
    local path = {}
    path.active = true
    path.currentRoom = roomId
    path.dir = dir

    table.insert(paths, path)
end

function level:stop()
    level.inProgress = false
    showMap = false
end
