return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.10.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 38,
  height = 20,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 6,
  nextobjectid = 435,
  properties = {
    ["ambience"] = "wind",
    ["background"] = "fog2",
    ["dark"] = 16,
    ["darkType"] = "parallax",
    ["defaultX"] = 656,
    ["defaultY"] = 400,
    ["grid"] = "overworld",
    ["music"] = "town",
    ["shader"] = "saturation",
    ["shaderVal"] = 1.15,
    ["weather"] = ""
  },
  tilesets = {
    {
      name = "terrain",
      firstgid = 1,
      class = "",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 36,
      image = "../_tilesets2/terrain.png",
      imagewidth = 576,
      imageheight = 272,
      objectalignment = "unspecified",
      tilerendersize = "tile",
      fillmode = "stretch",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      wangsets = {
        {
          name = "Grass",
          class = "",
          tile = -1,
          wangsettype = "corner",
          properties = {},
          colors = {
            {
              color = { 255, 0, 0 },
              name = "Elevation",
              class = "",
              probability = 1,
              tile = -1,
              properties = {}
            }
          },
          wangtiles = {
            {
              wangid = { 0, 0, 0, 1, 0, 0, 0, 0 },
              tileid = 37
            },
            {
              wangid = { 0, 0, 0, 1, 0, 1, 0, 0 },
              tileid = 38
            },
            {
              wangid = { 0, 0, 0, 0, 0, 1, 0, 0 },
              tileid = 39
            },
            {
              wangid = { 0, 1, 0, 0, 0, 1, 0, 1 },
              tileid = 41
            },
            {
              wangid = { 0, 1, 0, 1, 0, 0, 0, 1 },
              tileid = 42
            },
            {
              wangid = { 0, 1, 0, 1, 0, 0, 0, 0 },
              tileid = 73
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 1 },
              tileid = 74
            },
            {
              wangid = { 0, 0, 0, 0, 0, 1, 0, 1 },
              tileid = 75
            },
            {
              wangid = { 0, 0, 0, 1, 0, 1, 0, 1 },
              tileid = 77
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 0 },
              tileid = 78
            },
            {
              wangid = { 0, 1, 0, 0, 0, 0, 0, 0 },
              tileid = 109
            },
            {
              wangid = { 0, 1, 0, 0, 0, 0, 0, 1 },
              tileid = 110
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 0, 1 },
              tileid = 111
            }
          }
        }
      },
      tilecount = 612,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 38,
      height = 20,
      id = 1,
      name = "Base",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45,
        45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45,
        45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45,
        45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45,
        45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45,
        45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45,
        45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45,
        45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45,
        45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45,
        45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45,
        45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45,
        45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45,
        45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45,
        45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45,
        45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45,
        45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45,
        45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45,
        45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45,
        45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45,
        45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 38,
      height = 20,
      id = 5,
      name = "Terrain",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        226, 226, 226, 226, 226, 193, 263, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 225, 226, 226, 226, 226, 226, 226, 226, 226, 226,
        226, 226, 226, 193, 262, 263, 0, 0, 0, 0, 189, 190, 190, 190, 190, 190, 190, 191, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 261, 262, 194, 226, 226, 226, 193, 262, 262, 262,
        226, 226, 226, 227, 0, 0, 0, 0, 0, 189, 230, 226, 226, 226, 226, 226, 226, 229, 190, 190, 190, 190, 190, 191, 0, 0, 0, 0, 0, 0, 261, 194, 226, 226, 227, 0, 0, 0,
        226, 226, 226, 227, 0, 0, 0, 0, 0, 225, 226, 226, 226, 226, 226, 226, 226, 226, 226, 226, 226, 226, 226, 229, 190, 0, 0, 0, 0, 0, 0, 261, 262, 262, 263, 0, 0, 0,
        226, 193, 262, 263, 0, 0, 0, 0, 0, 261, 194, 226, 226, 226, 226, 226, 226, 226, 226, 226, 226, 226, 226, 226, 226, 227, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        226, 227, 0, 0, 0, 0, 0, 0, 0, 0, 225, 226, 226, 226, 226, 226, 193, 262, 262, 262, 194, 226, 226, 226, 226, 229, 190, 190, 190, 190, 190, 0, 0, 0, 0, 0, 0, 0,
        193, 263, 0, 0, 0, 190, 191, 0, 0, 0, 225, 226, 226, 226, 226, 193, 263, 0, 0, 0, 261, 262, 194, 226, 226, 226, 226, 226, 226, 226, 226, 226, 229, 190, 190, 190, 190, 190,
        263, 0, 0, 189, 230, 226, 227, 0, 0, 0, 261, 262, 262, 262, 262, 263, 0, 0, 0, 0, 0, 0, 225, 226, 226, 226, 226, 193, 262, 262, 262, 194, 226, 226, 226, 226, 226, 226,
        0, 0, 190, 230, 226, 226, 227, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 189, 230, 226, 193, 262, 262, 263, 0, 0, 0, 261, 262, 194, 226, 226, 226, 226,
        0, 0, 226, 226, 226, 193, 263, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 225, 226, 193, 263, 0, 0, 0, 0, 0, 0, 0, 189, 230, 226, 226, 226, 226,
        0, 0, 226, 226, 193, 263, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 225, 226, 229, 191, 0, 0, 0, 0, 189, 190, 190, 230, 226, 193, 194, 226, 226,
        0, 0, 226, 226, 227, 0, 0, 0, 0, 0, 189, 190, 190, 190, 190, 191, 0, 0, 0, 0, 0, 261, 194, 226, 229, 190, 190, 190, 190, 230, 226, 226, 226, 226, 227, 0, 0, 0,
        0, 0, 226, 226, 229, 191, 0, 0, 0, 0, 225, 226, 226, 226, 226, 227, 0, 0, 0, 0, 0, 0, 225, 226, 226, 226, 226, 226, 226, 226, 226, 226, 226, 0, 0, 0, 0, 0,
        0, 0, 226, 226, 226, 229, 190, 191, 0, 189, 230, 226, 226, 226, 226, 227, 0, 0, 0, 0, 0, 0, 261, 262, 262, 262, 262, 262, 262, 262, 262, 262, 262, 0, 0, 0, 0, 0,
        0, 0, 194, 226, 226, 226, 226, 229, 190, 230, 226, 226, 226, 226, 193, 263, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 189, 190, 191, 0, 0, 0, 0, 0,
        0, 0, 225, 226, 226, 226, 226, 226, 226, 226, 226, 226, 193, 262, 263, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 225, 226, 229, 190, 191, 0, 0, 0,
        0, 0, 261, 194, 226, 226, 226, 226, 226, 226, 226, 226, 229, 190, 190, 190, 191, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 225, 226, 226, 226, 227, 0, 0, 0,
        190, 191, 0, 225, 226, 226, 226, 226, 226, 226, 226, 226, 226, 226, 226, 226, 227, 0, 0, 0, 0, 0, 0, 189, 190, 191, 0, 0, 0, 0, 225, 226, 226, 226, 227, 0, 0, 0,
        226, 229, 191, 261, 194, 226, 226, 226, 226, 226, 193, 262, 262, 262, 262, 262, 0, 189, 190, 190, 190, 190, 190, 230, 226, 229, 191, 0, 0, 189, 230, 226, 226, 226, 229, 191, 0, 0,
        226, 226, 227, 0, 225, 226, 226, 226, 226, 193, 0, 0, 0, 0, 0, 0, 0, 225, 226, 226, 226, 226, 226, 226, 226, 226, 227, 0, 0, 225, 226, 226, 226, 226, 226, 227, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 38,
      height = 20,
      id = 2,
      name = "Elevation",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 75, 75, 75, 75, 42, 111, 111, 111, 111, 111, 111, 43, 75, 75, 75, 75, 75, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 75, 42, 111, 111, 112, 0, 0, 0, 0, 0, 0, 110, 111, 111, 111, 111, 43, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 42, 112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 110, 43, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 110, 111, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 110, 111, 111, 111, 111, 43, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 42, 112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 110, 111, 111, 111, 111, 111, 111, 111,
        0, 0, 75, 75, 42, 112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 42, 111, 112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 39, 39, 39,
        0, 0, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 39, 79, 0, 0, 0,
        0, 0, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 79, 0, 0, 0, 0, 0,
        0, 0, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 39, 39, 39, 39, 39, 79, 75, 0, 0, 0, 0, 0,
        0, 0, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 39, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 78, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 79, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 39, 39, 39, 39, 39, 39, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 78, 40, 0, 0, 0, 0, 38, 39, 39, 39, 39, 39, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 75, 76, 0, 0, 0, 0, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
      name = "Walls",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 288,
          width = 80,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 256,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 144,
          width = 48,
          height = 112,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 112,
          width = 48,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 96,
          width = 16,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 64,
          width = 16,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 32,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 0,
          width = 48,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 0,
          width = 96,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 0,
          width = 80,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "",
          type = "",
          shape = "rectangle",
          x = 352,
          y = 0,
          width = 16,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "",
          type = "",
          shape = "rectangle",
          x = 368,
          y = 48,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 13,
          name = "",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 64,
          width = 80,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "",
          type = "",
          shape = "rectangle",
          x = 480,
          y = 64,
          width = 144,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 17,
          name = "",
          type = "",
          shape = "rectangle",
          x = 544,
          y = 160,
          width = 80,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 18,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 176,
          width = 32,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 20,
          name = "",
          type = "",
          shape = "rectangle",
          x = 496,
          y = 192,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 21,
          name = "",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 208,
          width = 96,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 22,
          name = "",
          type = "",
          shape = "rectangle",
          x = 368,
          y = 240,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 23,
          name = "",
          type = "",
          shape = "rectangle",
          x = 352,
          y = 256,
          width = 16,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 24,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 272,
          width = 112,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 25,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 288,
          width = 96,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
      name = "Plants",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 386,
          name = "tallGrass",
          type = "field",
          shape = "rectangle",
          x = 264,
          y = 136,
          width = 80,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["density"] = 0.65
          }
        },
        {
          id = 387,
          name = "tallGrass",
          type = "field",
          shape = "rectangle",
          x = 264,
          y = 152,
          width = 80,
          height = 28,
          rotation = 0,
          visible = true,
          properties = {
            ["density"] = 0.65
          }
        },
        {
          id = 388,
          name = "tallGrass",
          type = "field",
          shape = "rectangle",
          x = 264,
          y = 180,
          width = 96,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["density"] = 0.65
          }
        },
        {
          id = 391,
          name = "tallGrass",
          type = "field",
          shape = "rectangle",
          x = 264,
          y = 256,
          width = 88,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["density"] = 0.65
          }
        },
        {
          id = 392,
          name = "tallGrass",
          type = "field",
          shape = "rectangle",
          x = 232,
          y = 228,
          width = 16,
          height = 36,
          rotation = 0,
          visible = true,
          properties = {
            ["density"] = 0.65
          }
        },
        {
          id = 394,
          name = "tallGrass",
          type = "field",
          shape = "rectangle",
          x = 248,
          y = 240,
          width = 112,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["density"] = 0.65
          }
        },
        {
          id = 407,
          name = "tree_big",
          type = "",
          shape = "point",
          x = 592,
          y = 304,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 408,
          name = "tree_big",
          type = "",
          shape = "point",
          x = 580,
          y = 76,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 409,
          name = "tree_big",
          type = "",
          shape = "point",
          x = 388,
          y = 32,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 410,
          name = "tree_big",
          type = "",
          shape = "point",
          x = 60,
          y = 104,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 411,
          name = "tree_big",
          type = "",
          shape = "point",
          x = 16,
          y = 372,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 412,
          name = "tree_big",
          type = "",
          shape = "point",
          x = 436,
          y = 344,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 413,
          name = "tree_big",
          type = "",
          shape = "point",
          x = 264,
          y = 404,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 415,
          name = "tallGrass",
          type = "field",
          shape = "rectangle",
          x = 248,
          y = 212,
          width = 112,
          height = 28,
          rotation = 0,
          visible = true,
          properties = {
            ["density"] = 0.65
          }
        },
        {
          id = 416,
          name = "tallGrass",
          type = "field",
          shape = "rectangle",
          x = 264,
          y = 100,
          width = 80,
          height = 36,
          rotation = 0,
          visible = true,
          properties = {
            ["density"] = 0.65
          }
        },
        {
          id = 417,
          name = "tallGrass",
          type = "field",
          shape = "rectangle",
          x = 264,
          y = 84,
          width = 68,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["density"] = 0.65
          }
        },
        {
          id = 418,
          name = "tallGrass",
          type = "field",
          shape = "rectangle",
          x = 248,
          y = 100,
          width = 16,
          height = 112,
          rotation = 0,
          visible = true,
          properties = {
            ["density"] = 0.65
          }
        },
        {
          id = 419,
          name = "tallGrass",
          type = "field",
          shape = "rectangle",
          x = 200,
          y = 244,
          width = 32,
          height = 20,
          rotation = 0,
          visible = true,
          properties = {
            ["density"] = 0.65
          }
        },
        {
          id = 420,
          name = "tallGrass",
          type = "field",
          shape = "rectangle",
          x = 248,
          y = 256,
          width = 16,
          height = 12,
          rotation = 0,
          visible = true,
          properties = {
            ["density"] = 0.65
          }
        },
        {
          id = 422,
          name = "tallGrass",
          type = "field",
          shape = "rectangle",
          x = 112,
          y = 68,
          width = 56,
          height = 148,
          rotation = 0,
          visible = true,
          properties = {
            ["density"] = 0.65
          }
        },
        {
          id = 423,
          name = "tallGrass",
          type = "field",
          shape = "rectangle",
          x = 128,
          y = 48,
          width = 24,
          height = 20,
          rotation = 0,
          visible = true,
          properties = {
            ["density"] = 0.65
          }
        },
        {
          id = 424,
          name = "tallGrass",
          type = "field",
          shape = "rectangle",
          x = 72,
          y = 164,
          width = 40,
          height = 36,
          rotation = 0,
          visible = true,
          properties = {
            ["density"] = 0.65
          }
        },
        {
          id = 425,
          name = "tallGrass",
          type = "field",
          shape = "rectangle",
          x = 104,
          y = 112,
          width = 8,
          height = 52,
          rotation = 0,
          visible = true,
          properties = {
            ["density"] = 0.65
          }
        },
        {
          id = 430,
          name = "tallGrass",
          type = "",
          shape = "point",
          x = 208,
          y = 180,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["huge"] = true
          }
        },
        {
          id = 431,
          name = "tallGrass",
          type = "",
          shape = "point",
          x = 208,
          y = 124,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["huge"] = true
          }
        },
        {
          id = 432,
          name = "tallGrass",
          type = "field",
          shape = "rectangle",
          x = 120,
          y = 216,
          width = 32,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["density"] = 0.65
          }
        },
        {
          id = 433,
          name = "tallGrass",
          type = "field",
          shape = "rectangle",
          x = 88,
          y = 200,
          width = 24,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["density"] = 0.65
          }
        },
        {
          id = 434,
          name = "tallGrass",
          type = "field",
          shape = "rectangle",
          x = 88,
          y = 152,
          width = 16,
          height = 12,
          rotation = 0,
          visible = true,
          properties = {
            ["density"] = 0.65
          }
        }
      }
    }
  }
}
