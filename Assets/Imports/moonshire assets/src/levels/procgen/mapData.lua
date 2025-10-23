mapData = {}

function mapData:init()

    local small = {
        { "small/1-updown", {-1, 0, -1, 0}, false },
        { "small/2-downright", {0, -1, -1, 0}, false },
        { "small/3-downleft", {0, 0, -1, -1}, false },
        { "small/4-upright", {-1, -1, 0, 0}, false },
        { "small/5-upleft", {-1, 0, 0, -1}, false },
        { "small/6-rightleft", {0, -1, 0, -1}, false },
        { "small/7-updown-small", {-1, 0, -1, 0}, false },
        { "small/8-downright-small", {0, -1, -1, 0}, false },
        { "small/9-downleft-small", {0, 0, -1, -1}, false },
        { "small/10-upright-small", {-1, -1, 0, 0}, false },
        { "small/11-upleft-small", {-1, 0, 0, -1}, false },
        { "small/12-rightleft-small", {0, -1, 0, -1}, false },
        { "small/13-entrance", {0, 0, 0, 0}, false },
        { "small/14-alcoveD", {0, 0, -1, 0}, false, "alcove" },
        { "small/15-alcoveU", {-1, 0, 0, 0}, false, "alcove" },
        { "small/16-alcoveR", {0, -1, 0, 0}, false, "alcove" },
        { "small/17-alcoveL", {0, 0, 0, -1}, false, "alcove" },
        { "small/18-updown", {-1, 0, -1, 0}, false },
        { "small/19-rightleft", {0, -1, 0, -1}, false },
    }

    table.insert(mapData, small)

end