return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.10.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 92,
  height = 52,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 29,
  nextobjectid = 2473,
  properties = {
    ["ambience"] = "rain",
    ["background"] = "fog",
    ["dark"] = 30,
    ["darkType"] = "parallax",
    ["defaultX"] = 656,
    ["defaultY"] = 400,
    ["music"] = "forest",
    ["shader"] = "saturation",
    ["shaderVal"] = 0.9,
    ["weather"] = "rain"
  },
  tilesets = {
    {
      name = "houses",
      firstgid = 1,
      class = "",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 40,
      image = "_tilesets/houses.png",
      imagewidth = 640,
      imageheight = 256,
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
      wangsets = {},
      tilecount = 640,
      tiles = {}
    },
    {
      name = "terrain",
      firstgid = 641,
      class = "",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 50,
      image = "_tilesets/terrain.png",
      imagewidth = 800,
      imageheight = 1280,
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
          name = "Grasslands",
          class = "",
          tile = 59,
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
            },
            {
              color = { 0, 255, 0 },
              name = "Grass Edges",
              class = "",
              probability = 1,
              tile = -1,
              properties = {}
            },
            {
              color = { 0, 255, 255 },
              name = "Water Edges",
              class = "",
              probability = 1,
              tile = -1,
              properties = {}
            },
            {
              color = { 255, 119, 0 },
              name = "Path",
              class = "",
              probability = 1,
              tile = -1,
              properties = {}
            },
            {
              color = { 0, 170, 0 },
              name = "Grass Edges 2",
              class = "",
              probability = 1,
              tile = -1,
              properties = {}
            },
            {
              color = { 255, 0, 216 },
              name = "Dirt",
              class = "",
              probability = 1,
              tile = -1,
              properties = {}
            }
          },
          wangtiles = {
            {
              wangid = { 0, 0, 0, 1, 0, 0, 0, 0 },
              tileid = 51
            },
            {
              wangid = { 0, 0, 0, 1, 0, 1, 0, 0 },
              tileid = 52
            },
            {
              wangid = { 0, 0, 0, 0, 0, 1, 0, 0 },
              tileid = 53
            },
            {
              wangid = { 0, 1, 0, 0, 0, 1, 0, 1 },
              tileid = 55
            },
            {
              wangid = { 0, 1, 0, 1, 0, 0, 0, 1 },
              tileid = 56
            },
            {
              wangid = { 0, 2, 0, 0, 0, 2, 0, 2 },
              tileid = 65
            },
            {
              wangid = { 0, 2, 0, 0, 0, 0, 0, 2 },
              tileid = 66
            },
            {
              wangid = { 0, 2, 0, 2, 0, 0, 0, 2 },
              tileid = 67
            },
            {
              wangid = { 0, 0, 0, 2, 0, 0, 0, 0 },
              tileid = 68
            },
            {
              wangid = { 0, 0, 0, 0, 0, 2, 0, 0 },
              tileid = 69
            },
            {
              wangid = { 0, 0, 0, 5, 0, 0, 0, 0 },
              tileid = 71
            },
            {
              wangid = { 0, 0, 0, 5, 0, 5, 0, 0 },
              tileid = 72
            },
            {
              wangid = { 0, 0, 0, 0, 0, 5, 0, 0 },
              tileid = 73
            },
            {
              wangid = { 0, 5, 0, 0, 0, 5, 0, 5 },
              tileid = 75
            },
            {
              wangid = { 0, 5, 0, 5, 0, 0, 0, 5 },
              tileid = 76
            },
            {
              wangid = { 0, 1, 0, 1, 0, 0, 0, 0 },
              tileid = 101
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 1 },
              tileid = 102
            },
            {
              wangid = { 0, 0, 0, 0, 0, 1, 0, 1 },
              tileid = 103
            },
            {
              wangid = { 0, 0, 0, 1, 0, 1, 0, 1 },
              tileid = 105
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 0 },
              tileid = 106
            },
            {
              wangid = { 0, 0, 0, 0, 0, 2, 0, 2 },
              tileid = 115
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 116
            },
            {
              wangid = { 0, 2, 0, 2, 0, 0, 0, 0 },
              tileid = 117
            },
            {
              wangid = { 0, 2, 0, 0, 0, 0, 0, 0 },
              tileid = 118
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 0, 2 },
              tileid = 119
            },
            {
              wangid = { 0, 5, 0, 5, 0, 0, 0, 0 },
              tileid = 121
            },
            {
              wangid = { 0, 5, 0, 5, 0, 5, 0, 5 },
              tileid = 122
            },
            {
              wangid = { 0, 0, 0, 0, 0, 5, 0, 5 },
              tileid = 123
            },
            {
              wangid = { 0, 0, 0, 5, 0, 5, 0, 5 },
              tileid = 125
            },
            {
              wangid = { 0, 5, 0, 5, 0, 5, 0, 0 },
              tileid = 126
            },
            {
              wangid = { 0, 1, 0, 0, 0, 0, 0, 0 },
              tileid = 151
            },
            {
              wangid = { 0, 1, 0, 0, 0, 0, 0, 1 },
              tileid = 152
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 0, 1 },
              tileid = 153
            },
            {
              wangid = { 0, 0, 0, 2, 0, 2, 0, 2 },
              tileid = 165
            },
            {
              wangid = { 0, 0, 0, 2, 0, 2, 0, 0 },
              tileid = 166
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 0 },
              tileid = 167
            },
            {
              wangid = { 0, 5, 0, 0, 0, 0, 0, 0 },
              tileid = 171
            },
            {
              wangid = { 0, 5, 0, 0, 0, 0, 0, 5 },
              tileid = 172
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 0, 5 },
              tileid = 173
            },
            {
              wangid = { 0, 3, 0, 3, 0, 3, 0, 3 },
              tileid = 250
            },
            {
              wangid = { 0, 3, 0, 0, 0, 3, 0, 3 },
              tileid = 251
            },
            {
              wangid = { 0, 3, 0, 0, 0, 0, 0, 3 },
              tileid = 252
            },
            {
              wangid = { 0, 3, 0, 3, 0, 0, 0, 3 },
              tileid = 253
            },
            {
              wangid = { 0, 0, 0, 0, 0, 3, 0, 3 },
              tileid = 301
            },
            {
              wangid = { 0, 3, 0, 3, 0, 0, 0, 0 },
              tileid = 303
            },
            {
              wangid = { 0, 0, 0, 3, 0, 3, 0, 3 },
              tileid = 351
            },
            {
              wangid = { 0, 0, 0, 3, 0, 3, 0, 0 },
              tileid = 352
            },
            {
              wangid = { 0, 3, 0, 3, 0, 3, 0, 0 },
              tileid = 353
            },
            {
              wangid = { 0, 0, 0, 3, 0, 0, 0, 0 },
              tileid = 451
            },
            {
              wangid = { 0, 0, 0, 0, 0, 3, 0, 0 },
              tileid = 452
            },
            {
              wangid = { 0, 3, 0, 0, 0, 0, 0, 0 },
              tileid = 501
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 0, 3 },
              tileid = 502
            },
            {
              wangid = { 0, 0, 0, 4, 0, 0, 0, 0 },
              tileid = 951
            },
            {
              wangid = { 0, 0, 0, 4, 0, 4, 0, 0 },
              tileid = 952
            },
            {
              wangid = { 0, 0, 0, 0, 0, 4, 0, 0 },
              tileid = 953
            },
            {
              wangid = { 0, 4, 0, 0, 0, 4, 0, 4 },
              tileid = 955
            },
            {
              wangid = { 0, 4, 0, 4, 0, 0, 0, 4 },
              tileid = 956
            },
            {
              wangid = { 0, 0, 0, 6, 0, 0, 0, 0 },
              tileid = 958
            },
            {
              wangid = { 0, 0, 0, 6, 0, 6, 0, 0 },
              tileid = 959
            },
            {
              wangid = { 0, 0, 0, 0, 0, 6, 0, 0 },
              tileid = 960
            },
            {
              wangid = { 0, 6, 0, 0, 0, 6, 0, 6 },
              tileid = 962
            },
            {
              wangid = { 0, 6, 0, 6, 0, 0, 0, 6 },
              tileid = 963
            },
            {
              wangid = { 0, 4, 0, 4, 0, 0, 0, 0 },
              tileid = 1001
            },
            {
              wangid = { 0, 4, 0, 4, 0, 4, 0, 4 },
              tileid = 1002
            },
            {
              wangid = { 0, 0, 0, 0, 0, 4, 0, 4 },
              tileid = 1003
            },
            {
              wangid = { 0, 0, 0, 4, 0, 4, 0, 4 },
              tileid = 1005
            },
            {
              wangid = { 0, 4, 0, 4, 0, 4, 0, 0 },
              tileid = 1006
            },
            {
              wangid = { 0, 6, 0, 6, 0, 0, 0, 0 },
              tileid = 1008
            },
            {
              wangid = { 0, 6, 0, 6, 0, 6, 0, 6 },
              tileid = 1009
            },
            {
              wangid = { 0, 0, 0, 0, 0, 6, 0, 6 },
              tileid = 1010
            },
            {
              wangid = { 0, 0, 0, 6, 0, 6, 0, 6 },
              tileid = 1012
            },
            {
              wangid = { 0, 6, 0, 6, 0, 6, 0, 0 },
              tileid = 1013
            },
            {
              wangid = { 0, 4, 0, 0, 0, 0, 0, 0 },
              tileid = 1051
            },
            {
              wangid = { 0, 4, 0, 0, 0, 0, 0, 4 },
              tileid = 1052
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 0, 4 },
              tileid = 1053
            },
            {
              wangid = { 0, 6, 0, 0, 0, 0, 0, 0 },
              tileid = 1058
            },
            {
              wangid = { 0, 6, 0, 0, 0, 0, 0, 6 },
              tileid = 1059
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 0, 6 },
              tileid = 1060
            }
          }
        },
        {
          name = "New Grass",
          class = "",
          tile = -1,
          wangsettype = "corner",
          properties = {},
          colors = {
            {
              color = { 255, 0, 0 },
              name = "Light",
              class = "",
              probability = 1,
              tile = -1,
              properties = {}
            },
            {
              color = { 0, 255, 0 },
              name = "Dark",
              class = "",
              probability = 1,
              tile = -1,
              properties = {}
            },
            {
              color = { 0, 0, 255 },
              name = "Dirt",
              class = "",
              probability = 1,
              tile = -1,
              properties = {}
            },
            {
              color = { 255, 119, 0 },
              name = "Thick Dark",
              class = "",
              probability = 1,
              tile = -1,
              properties = {}
            }
          },
          wangtiles = {
            {
              wangid = { 0, 0, 0, 1, 0, 0, 0, 0 },
              tileid = 1651
            },
            {
              wangid = { 0, 0, 0, 1, 0, 1, 0, 0 },
              tileid = 1652
            },
            {
              wangid = { 0, 0, 0, 0, 0, 1, 0, 0 },
              tileid = 1653
            },
            {
              wangid = { 0, 1, 0, 0, 0, 1, 0, 1 },
              tileid = 1655
            },
            {
              wangid = { 0, 1, 0, 1, 0, 0, 0, 1 },
              tileid = 1656
            },
            {
              wangid = { 0, 0, 0, 2, 0, 0, 0, 0 },
              tileid = 1658
            },
            {
              wangid = { 0, 0, 0, 2, 0, 2, 0, 0 },
              tileid = 1659
            },
            {
              wangid = { 0, 0, 0, 0, 0, 2, 0, 0 },
              tileid = 1660
            },
            {
              wangid = { 0, 2, 0, 0, 0, 2, 0, 2 },
              tileid = 1662
            },
            {
              wangid = { 0, 2, 0, 2, 0, 0, 0, 2 },
              tileid = 1663
            },
            {
              wangid = { 0, 0, 0, 3, 0, 0, 0, 0 },
              tileid = 1665
            },
            {
              wangid = { 0, 0, 0, 3, 0, 3, 0, 0 },
              tileid = 1666
            },
            {
              wangid = { 0, 0, 0, 0, 0, 3, 0, 0 },
              tileid = 1667
            },
            {
              wangid = { 0, 3, 0, 0, 0, 3, 0, 3 },
              tileid = 1669
            },
            {
              wangid = { 0, 3, 0, 3, 0, 0, 0, 3 },
              tileid = 1670
            },
            {
              wangid = { 0, 0, 0, 4, 0, 0, 0, 0 },
              tileid = 1672
            },
            {
              wangid = { 0, 0, 0, 4, 0, 4, 0, 0 },
              tileid = 1673
            },
            {
              wangid = { 0, 0, 0, 0, 0, 4, 0, 0 },
              tileid = 1674
            },
            {
              wangid = { 0, 4, 0, 0, 0, 4, 0, 4 },
              tileid = 1676
            },
            {
              wangid = { 0, 4, 0, 4, 0, 0, 0, 4 },
              tileid = 1677
            },
            {
              wangid = { 0, 1, 0, 1, 0, 0, 0, 0 },
              tileid = 1701
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 1 },
              tileid = 1702
            },
            {
              wangid = { 0, 0, 0, 0, 0, 1, 0, 1 },
              tileid = 1703
            },
            {
              wangid = { 0, 0, 0, 1, 0, 1, 0, 1 },
              tileid = 1705
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 0 },
              tileid = 1706
            },
            {
              wangid = { 0, 2, 0, 2, 0, 0, 0, 0 },
              tileid = 1708
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 1709
            },
            {
              wangid = { 0, 0, 0, 0, 0, 2, 0, 2 },
              tileid = 1710
            },
            {
              wangid = { 0, 0, 0, 2, 0, 2, 0, 2 },
              tileid = 1712
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 0 },
              tileid = 1713
            },
            {
              wangid = { 0, 3, 0, 3, 0, 0, 0, 0 },
              tileid = 1715
            },
            {
              wangid = { 0, 3, 0, 3, 0, 3, 0, 3 },
              tileid = 1716
            },
            {
              wangid = { 0, 0, 0, 0, 0, 3, 0, 3 },
              tileid = 1717
            },
            {
              wangid = { 0, 0, 0, 3, 0, 3, 0, 3 },
              tileid = 1719
            },
            {
              wangid = { 0, 3, 0, 3, 0, 3, 0, 0 },
              tileid = 1720
            },
            {
              wangid = { 0, 4, 0, 4, 0, 0, 0, 0 },
              tileid = 1722
            },
            {
              wangid = { 0, 4, 0, 4, 0, 4, 0, 4 },
              tileid = 1723
            },
            {
              wangid = { 0, 0, 0, 0, 0, 4, 0, 4 },
              tileid = 1724
            },
            {
              wangid = { 0, 0, 0, 4, 0, 4, 0, 4 },
              tileid = 1726
            },
            {
              wangid = { 0, 4, 0, 4, 0, 4, 0, 0 },
              tileid = 1727
            },
            {
              wangid = { 0, 1, 0, 0, 0, 0, 0, 0 },
              tileid = 1751
            },
            {
              wangid = { 0, 1, 0, 0, 0, 0, 0, 1 },
              tileid = 1752
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 0, 1 },
              tileid = 1753
            },
            {
              wangid = { 0, 2, 0, 0, 0, 0, 0, 0 },
              tileid = 1758
            },
            {
              wangid = { 0, 2, 0, 0, 0, 0, 0, 2 },
              tileid = 1759
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 0, 2 },
              tileid = 1760
            },
            {
              wangid = { 0, 3, 0, 0, 0, 0, 0, 0 },
              tileid = 1765
            },
            {
              wangid = { 0, 3, 0, 0, 0, 0, 0, 3 },
              tileid = 1766
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 0, 3 },
              tileid = 1767
            },
            {
              wangid = { 0, 4, 0, 0, 0, 0, 0, 0 },
              tileid = 1772
            },
            {
              wangid = { 0, 4, 0, 0, 0, 0, 0, 4 },
              tileid = 1773
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 0, 4 },
              tileid = 1774
            }
          }
        }
      },
      tilecount = 4000,
      tiles = {
        {
          id = 59,
          probability = 0.015
        },
        {
          id = 60,
          probability = 0.015
        },
        {
          id = 61,
          probability = 0.015
        },
        {
          id = 62,
          probability = 0.015
        },
        {
          id = 63,
          probability = 0.015
        },
        {
          id = 64,
          probability = 0.025
        },
        {
          id = 107,
          probability = 0.015
        },
        {
          id = 108,
          probability = 0.015
        },
        {
          id = 109,
          probability = 0.015
        },
        {
          id = 110,
          probability = 0.015
        },
        {
          id = 111,
          probability = 0.015
        },
        {
          id = 112,
          probability = 0.015
        },
        {
          id = 113,
          probability = 0.015
        },
        {
          id = 251,
          animation = {
            {
              tileid = 251,
              duration = 350
            },
            {
              tileid = 254,
              duration = 350
            },
            {
              tileid = 257,
              duration = 350
            },
            {
              tileid = 260,
              duration = 350
            }
          }
        },
        {
          id = 253,
          animation = {
            {
              tileid = 253,
              duration = 350
            },
            {
              tileid = 256,
              duration = 350
            },
            {
              tileid = 259,
              duration = 350
            },
            {
              tileid = 262,
              duration = 350
            }
          }
        },
        {
          id = 264,
          animation = {
            {
              tileid = 264,
              duration = 350
            },
            {
              tileid = 314,
              duration = 350
            },
            {
              tileid = 364,
              duration = 350
            },
            {
              tileid = 414,
              duration = 350
            }
          }
        },
        {
          id = 265,
          animation = {
            {
              tileid = 265,
              duration = 350
            },
            {
              tileid = 315,
              duration = 350
            },
            {
              tileid = 365,
              duration = 350
            },
            {
              tileid = 415,
              duration = 350
            }
          }
        },
        {
          id = 301,
          animation = {
            {
              tileid = 301,
              duration = 350
            },
            {
              tileid = 304,
              duration = 350
            },
            {
              tileid = 307,
              duration = 350
            },
            {
              tileid = 310,
              duration = 350
            }
          }
        },
        {
          id = 303,
          animation = {
            {
              tileid = 303,
              duration = 350
            },
            {
              tileid = 306,
              duration = 350
            },
            {
              tileid = 309,
              duration = 350
            },
            {
              tileid = 312,
              duration = 350
            }
          }
        },
        {
          id = 351,
          animation = {
            {
              tileid = 351,
              duration = 350
            },
            {
              tileid = 354,
              duration = 350
            },
            {
              tileid = 357,
              duration = 350
            },
            {
              tileid = 360,
              duration = 350
            }
          }
        },
        {
          id = 352,
          animation = {
            {
              tileid = 352,
              duration = 350
            },
            {
              tileid = 355,
              duration = 350
            },
            {
              tileid = 358,
              duration = 350
            },
            {
              tileid = 361,
              duration = 350
            }
          }
        },
        {
          id = 353,
          animation = {
            {
              tileid = 353,
              duration = 350
            },
            {
              tileid = 356,
              duration = 350
            },
            {
              tileid = 359,
              duration = 350
            },
            {
              tileid = 362,
              duration = 350
            }
          }
        },
        {
          id = 451,
          animation = {
            {
              tileid = 451,
              duration = 350
            },
            {
              tileid = 453,
              duration = 350
            },
            {
              tileid = 455,
              duration = 350
            },
            {
              tileid = 457,
              duration = 350
            }
          }
        },
        {
          id = 452,
          animation = {
            {
              tileid = 452,
              duration = 350
            },
            {
              tileid = 454,
              duration = 350
            },
            {
              tileid = 456,
              duration = 350
            },
            {
              tileid = 458,
              duration = 350
            }
          }
        },
        {
          id = 501,
          animation = {
            {
              tileid = 501,
              duration = 350
            },
            {
              tileid = 503,
              duration = 350
            },
            {
              tileid = 505,
              duration = 350
            },
            {
              tileid = 507,
              duration = 350
            }
          }
        },
        {
          id = 502,
          animation = {
            {
              tileid = 502,
              duration = 350
            },
            {
              tileid = 504,
              duration = 350
            },
            {
              tileid = 506,
              duration = 350
            },
            {
              tileid = 508,
              duration = 350
            }
          }
        },
        {
          id = 606,
          animation = {
            {
              tileid = 606,
              duration = 100
            },
            {
              tileid = 607,
              duration = 100
            },
            {
              tileid = 608,
              duration = 100
            }
          }
        },
        {
          id = 656,
          animation = {
            {
              tileid = 656,
              duration = 100
            },
            {
              tileid = 657,
              duration = 100
            },
            {
              tileid = 658,
              duration = 100
            }
          }
        },
        {
          id = 706,
          animation = {
            {
              tileid = 706,
              duration = 100
            },
            {
              tileid = 707,
              duration = 100
            },
            {
              tileid = 708,
              duration = 100
            }
          }
        },
        {
          id = 756,
          animation = {
            {
              tileid = 756,
              duration = 200
            },
            {
              tileid = 806,
              duration = 200
            },
            {
              tileid = 856,
              duration = 200
            }
          }
        },
        {
          id = 757,
          animation = {
            {
              tileid = 757,
              duration = 200
            },
            {
              tileid = 807,
              duration = 200
            },
            {
              tileid = 857,
              duration = 200
            }
          }
        },
        {
          id = 758,
          animation = {
            {
              tileid = 758,
              duration = 200
            },
            {
              tileid = 808,
              duration = 200
            },
            {
              tileid = 858,
              duration = 200
            }
          }
        }
      }
    },
    {
      name = "objects",
      firstgid = 4641,
      class = "",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 23,
      image = "_tilesets/objects.png",
      imagewidth = 368,
      imageheight = 520,
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
      wangsets = {},
      tilecount = 736,
      tiles = {}
    },
    {
      name = "water",
      firstgid = 5377,
      class = "",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 40,
      image = "_tilesets/water2.png",
      imagewidth = 640,
      imageheight = 640,
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
          name = "Water",
          class = "",
          tile = -1,
          wangsettype = "corner",
          properties = {},
          colors = {
            {
              color = { 255, 0, 0 },
              name = "Dirt Edge",
              class = "",
              probability = 1,
              tile = -1,
              properties = {}
            }
          },
          wangtiles = {
            {
              wangid = { 0, 0, 0, 1, 0, 0, 0, 0 },
              tileid = 641
            },
            {
              wangid = { 0, 0, 0, 1, 0, 1, 0, 0 },
              tileid = 642
            },
            {
              wangid = { 0, 0, 0, 0, 0, 1, 0, 0 },
              tileid = 643
            },
            {
              wangid = { 0, 1, 0, 1, 0, 0, 0, 0 },
              tileid = 681
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 1 },
              tileid = 682
            },
            {
              wangid = { 0, 0, 0, 0, 0, 1, 0, 1 },
              tileid = 683
            },
            {
              wangid = { 0, 1, 0, 0, 0, 0, 0, 0 },
              tileid = 721
            },
            {
              wangid = { 0, 1, 0, 0, 0, 0, 0, 1 },
              tileid = 722
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 0, 1 },
              tileid = 723
            },
            {
              wangid = { 0, 1, 0, 0, 0, 1, 0, 1 },
              tileid = 801
            },
            {
              wangid = { 0, 1, 0, 0, 0, 0, 0, 1 },
              tileid = 802
            },
            {
              wangid = { 0, 1, 0, 1, 0, 0, 0, 1 },
              tileid = 803
            },
            {
              wangid = { 0, 0, 0, 0, 0, 1, 0, 1 },
              tileid = 841
            },
            {
              wangid = { 0, 1, 0, 1, 0, 0, 0, 0 },
              tileid = 843
            },
            {
              wangid = { 0, 0, 0, 1, 0, 1, 0, 1 },
              tileid = 881
            },
            {
              wangid = { 0, 0, 0, 1, 0, 1, 0, 0 },
              tileid = 882
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 0 },
              tileid = 883
            }
          }
        }
      },
      tilecount = 1600,
      tiles = {
        {
          id = 41,
          animation = {
            {
              tileid = 41,
              duration = 150
            },
            {
              tileid = 44,
              duration = 150
            },
            {
              tileid = 47,
              duration = 150
            },
            {
              tileid = 50,
              duration = 150
            },
            {
              tileid = 53,
              duration = 150
            },
            {
              tileid = 56,
              duration = 150
            },
            {
              tileid = 59,
              duration = 150
            },
            {
              tileid = 62,
              duration = 150
            }
          }
        },
        {
          id = 42,
          animation = {
            {
              tileid = 42,
              duration = 150
            },
            {
              tileid = 45,
              duration = 150
            },
            {
              tileid = 48,
              duration = 150
            },
            {
              tileid = 51,
              duration = 150
            },
            {
              tileid = 54,
              duration = 150
            },
            {
              tileid = 57,
              duration = 150
            },
            {
              tileid = 60,
              duration = 150
            },
            {
              tileid = 63,
              duration = 150
            }
          }
        },
        {
          id = 43,
          animation = {
            {
              tileid = 43,
              duration = 150
            },
            {
              tileid = 46,
              duration = 150
            },
            {
              tileid = 49,
              duration = 150
            },
            {
              tileid = 52,
              duration = 150
            },
            {
              tileid = 55,
              duration = 150
            },
            {
              tileid = 58,
              duration = 150
            },
            {
              tileid = 61,
              duration = 150
            },
            {
              tileid = 64,
              duration = 150
            }
          }
        },
        {
          id = 66,
          animation = {
            {
              tileid = 66,
              duration = 100
            },
            {
              tileid = 67,
              duration = 100
            },
            {
              tileid = 68,
              duration = 100
            }
          }
        },
        {
          id = 70,
          animation = {
            {
              tileid = 70,
              duration = 150
            },
            {
              tileid = 71,
              duration = 150
            },
            {
              tileid = 72,
              duration = 150
            },
            {
              tileid = 73,
              duration = 150
            },
            {
              tileid = 74,
              duration = 150
            },
            {
              tileid = 75,
              duration = 150
            },
            {
              tileid = 76,
              duration = 150
            },
            {
              tileid = 77,
              duration = 150
            }
          }
        },
        {
          id = 81,
          animation = {
            {
              tileid = 81,
              duration = 150
            },
            {
              tileid = 84,
              duration = 150
            },
            {
              tileid = 87,
              duration = 150
            },
            {
              tileid = 90,
              duration = 150
            },
            {
              tileid = 93,
              duration = 150
            },
            {
              tileid = 96,
              duration = 150
            },
            {
              tileid = 99,
              duration = 150
            },
            {
              tileid = 102,
              duration = 150
            }
          }
        },
        {
          id = 82,
          animation = {
            {
              tileid = 82,
              duration = 150
            },
            {
              tileid = 85,
              duration = 150
            },
            {
              tileid = 88,
              duration = 150
            },
            {
              tileid = 91,
              duration = 150
            },
            {
              tileid = 94,
              duration = 150
            },
            {
              tileid = 97,
              duration = 150
            },
            {
              tileid = 100,
              duration = 150
            },
            {
              tileid = 103,
              duration = 150
            }
          }
        },
        {
          id = 83,
          animation = {
            {
              tileid = 83,
              duration = 150
            },
            {
              tileid = 86,
              duration = 150
            },
            {
              tileid = 89,
              duration = 150
            },
            {
              tileid = 92,
              duration = 150
            },
            {
              tileid = 95,
              duration = 150
            },
            {
              tileid = 101,
              duration = 150
            },
            {
              tileid = 104,
              duration = 150
            }
          }
        },
        {
          id = 106,
          animation = {
            {
              tileid = 106,
              duration = 100
            },
            {
              tileid = 107,
              duration = 100
            },
            {
              tileid = 108,
              duration = 100
            }
          }
        },
        {
          id = 121,
          animation = {
            {
              tileid = 121,
              duration = 150
            },
            {
              tileid = 124,
              duration = 150
            },
            {
              tileid = 127,
              duration = 150
            },
            {
              tileid = 130,
              duration = 150
            },
            {
              tileid = 133,
              duration = 150
            },
            {
              tileid = 136,
              duration = 150
            },
            {
              tileid = 139,
              duration = 150
            },
            {
              tileid = 142,
              duration = 150
            }
          }
        },
        {
          id = 122,
          animation = {
            {
              tileid = 122,
              duration = 150
            },
            {
              tileid = 125,
              duration = 150
            },
            {
              tileid = 128,
              duration = 150
            },
            {
              tileid = 131,
              duration = 150
            },
            {
              tileid = 134,
              duration = 150
            },
            {
              tileid = 137,
              duration = 150
            },
            {
              tileid = 140,
              duration = 150
            },
            {
              tileid = 143,
              duration = 150
            }
          }
        },
        {
          id = 123,
          animation = {
            {
              tileid = 123,
              duration = 150
            },
            {
              tileid = 126,
              duration = 150
            },
            {
              tileid = 129,
              duration = 150
            },
            {
              tileid = 132,
              duration = 150
            },
            {
              tileid = 135,
              duration = 150
            },
            {
              tileid = 138,
              duration = 150
            },
            {
              tileid = 141,
              duration = 150
            },
            {
              tileid = 144,
              duration = 150
            }
          }
        },
        {
          id = 146,
          animation = {
            {
              tileid = 146,
              duration = 100
            },
            {
              tileid = 147,
              duration = 100
            },
            {
              tileid = 148,
              duration = 100
            }
          }
        },
        {
          id = 150,
          animation = {
            {
              tileid = 150,
              duration = 150
            },
            {
              tileid = 151,
              duration = 150
            },
            {
              tileid = 152,
              duration = 150
            },
            {
              tileid = 153,
              duration = 150
            },
            {
              tileid = 154,
              duration = 150
            },
            {
              tileid = 155,
              duration = 150
            },
            {
              tileid = 156,
              duration = 150
            },
            {
              tileid = 157,
              duration = 150
            }
          }
        },
        {
          id = 186,
          animation = {
            {
              tileid = 186,
              duration = 200
            },
            {
              tileid = 226,
              duration = 200
            },
            {
              tileid = 266,
              duration = 200
            }
          }
        },
        {
          id = 187,
          animation = {
            {
              tileid = 187,
              duration = 200
            },
            {
              tileid = 227,
              duration = 200
            },
            {
              tileid = 267,
              duration = 200
            }
          }
        },
        {
          id = 188,
          animation = {
            {
              tileid = 188,
              duration = 200
            },
            {
              tileid = 228,
              duration = 200
            },
            {
              tileid = 268,
              duration = 200
            }
          }
        },
        {
          id = 201,
          animation = {
            {
              tileid = 201,
              duration = 150
            },
            {
              tileid = 204,
              duration = 150
            },
            {
              tileid = 207,
              duration = 150
            },
            {
              tileid = 210,
              duration = 150
            },
            {
              tileid = 213,
              duration = 150
            },
            {
              tileid = 216,
              duration = 150
            },
            {
              tileid = 219,
              duration = 150
            },
            {
              tileid = 222,
              duration = 150
            }
          }
        },
        {
          id = 202,
          animation = {
            {
              tileid = 202,
              duration = 150
            },
            {
              tileid = 205,
              duration = 150
            },
            {
              tileid = 208,
              duration = 150
            },
            {
              tileid = 211,
              duration = 150
            },
            {
              tileid = 214,
              duration = 150
            },
            {
              tileid = 217,
              duration = 150
            },
            {
              tileid = 220,
              duration = 150
            },
            {
              tileid = 223,
              duration = 150
            }
          }
        },
        {
          id = 203,
          animation = {
            {
              tileid = 203,
              duration = 150
            },
            {
              tileid = 206,
              duration = 150
            },
            {
              tileid = 209,
              duration = 150
            },
            {
              tileid = 212,
              duration = 150
            },
            {
              tileid = 215,
              duration = 150
            },
            {
              tileid = 218,
              duration = 150
            },
            {
              tileid = 221,
              duration = 150
            },
            {
              tileid = 224,
              duration = 150
            }
          }
        },
        {
          id = 241,
          animation = {
            {
              tileid = 241,
              duration = 150
            },
            {
              tileid = 244,
              duration = 150
            },
            {
              tileid = 247,
              duration = 150
            },
            {
              tileid = 250,
              duration = 150
            },
            {
              tileid = 253,
              duration = 150
            },
            {
              tileid = 256,
              duration = 150
            },
            {
              tileid = 259,
              duration = 150
            },
            {
              tileid = 262,
              duration = 150
            }
          }
        },
        {
          id = 243,
          animation = {
            {
              tileid = 243,
              duration = 150
            },
            {
              tileid = 246,
              duration = 150
            },
            {
              tileid = 249,
              duration = 150
            },
            {
              tileid = 252,
              duration = 150
            },
            {
              tileid = 255,
              duration = 150
            },
            {
              tileid = 258,
              duration = 150
            },
            {
              tileid = 261,
              duration = 150
            },
            {
              tileid = 264,
              duration = 150
            }
          }
        },
        {
          id = 281,
          animation = {
            {
              tileid = 281,
              duration = 150
            },
            {
              tileid = 284,
              duration = 150
            },
            {
              tileid = 287,
              duration = 150
            },
            {
              tileid = 290,
              duration = 150
            },
            {
              tileid = 293,
              duration = 150
            },
            {
              tileid = 296,
              duration = 150
            },
            {
              tileid = 299,
              duration = 150
            },
            {
              tileid = 302,
              duration = 150
            }
          }
        },
        {
          id = 282,
          animation = {
            {
              tileid = 282,
              duration = 150
            },
            {
              tileid = 285,
              duration = 150
            },
            {
              tileid = 288,
              duration = 150
            },
            {
              tileid = 291,
              duration = 150
            },
            {
              tileid = 294,
              duration = 150
            },
            {
              tileid = 297,
              duration = 150
            },
            {
              tileid = 300,
              duration = 150
            },
            {
              tileid = 303,
              duration = 150
            }
          }
        },
        {
          id = 283,
          animation = {
            {
              tileid = 283,
              duration = 150
            },
            {
              tileid = 286,
              duration = 150
            },
            {
              tileid = 289,
              duration = 150
            },
            {
              tileid = 292,
              duration = 150
            },
            {
              tileid = 295,
              duration = 150
            },
            {
              tileid = 298,
              duration = 150
            },
            {
              tileid = 301,
              duration = 150
            },
            {
              tileid = 304,
              duration = 150
            }
          }
        },
        {
          id = 361,
          animation = {
            {
              tileid = 361,
              duration = 150
            },
            {
              tileid = 401,
              duration = 150
            },
            {
              tileid = 441,
              duration = 150
            },
            {
              tileid = 481,
              duration = 150
            }
          }
        },
        {
          id = 362,
          animation = {
            {
              tileid = 362,
              duration = 150
            },
            {
              tileid = 402,
              duration = 150
            },
            {
              tileid = 442,
              duration = 150
            },
            {
              tileid = 482,
              duration = 150
            }
          }
        },
        {
          id = 364,
          animation = {
            {
              tileid = 364,
              duration = 150
            },
            {
              tileid = 404,
              duration = 150
            },
            {
              tileid = 444,
              duration = 150
            },
            {
              tileid = 484,
              duration = 150
            }
          }
        },
        {
          id = 365,
          animation = {
            {
              tileid = 365,
              duration = 150
            },
            {
              tileid = 405,
              duration = 150
            },
            {
              tileid = 445,
              duration = 150
            },
            {
              tileid = 485,
              duration = 150
            }
          }
        },
        {
          id = 367,
          animation = {
            {
              tileid = 367,
              duration = 150
            },
            {
              tileid = 407,
              duration = 150
            },
            {
              tileid = 447,
              duration = 150
            },
            {
              tileid = 487,
              duration = 150
            }
          }
        },
        {
          id = 368,
          animation = {
            {
              tileid = 368,
              duration = 150
            },
            {
              tileid = 408,
              duration = 150
            },
            {
              tileid = 448,
              duration = 150
            },
            {
              tileid = 488,
              duration = 150
            }
          }
        },
        {
          id = 370,
          animation = {
            {
              tileid = 370,
              duration = 150
            },
            {
              tileid = 410,
              duration = 150
            },
            {
              tileid = 450,
              duration = 150
            },
            {
              tileid = 490,
              duration = 150
            }
          }
        },
        {
          id = 371,
          animation = {
            {
              tileid = 371,
              duration = 150
            },
            {
              tileid = 411,
              duration = 150
            },
            {
              tileid = 451,
              duration = 150
            },
            {
              tileid = 491,
              duration = 150
            }
          }
        },
        {
          id = 372,
          animation = {
            {
              tileid = 372,
              duration = 150
            },
            {
              tileid = 412,
              duration = 150
            },
            {
              tileid = 452,
              duration = 150
            },
            {
              tileid = 492,
              duration = 150
            }
          }
        },
        {
          id = 374,
          animation = {
            {
              tileid = 374,
              duration = 150
            },
            {
              tileid = 414,
              duration = 150
            },
            {
              tileid = 454,
              duration = 150
            },
            {
              tileid = 494,
              duration = 150
            }
          }
        },
        {
          id = 375,
          animation = {
            {
              tileid = 375,
              duration = 150
            },
            {
              tileid = 415,
              duration = 150
            },
            {
              tileid = 455,
              duration = 150
            },
            {
              tileid = 495,
              duration = 150
            }
          }
        },
        {
          id = 379,
          animation = {
            {
              tileid = 379,
              duration = 150
            },
            {
              tileid = 419,
              duration = 150
            },
            {
              tileid = 459,
              duration = 150
            },
            {
              tileid = 499,
              duration = 150
            }
          }
        },
        {
          id = 380,
          animation = {
            {
              tileid = 380,
              duration = 150
            },
            {
              tileid = 420,
              duration = 150
            },
            {
              tileid = 460,
              duration = 150
            },
            {
              tileid = 500,
              duration = 150
            }
          }
        },
        {
          id = 382,
          animation = {
            {
              tileid = 382,
              duration = 150
            },
            {
              tileid = 422,
              duration = 150
            },
            {
              tileid = 462,
              duration = 150
            },
            {
              tileid = 502,
              duration = 150
            }
          }
        },
        {
          id = 383,
          animation = {
            {
              tileid = 383,
              duration = 150
            },
            {
              tileid = 423,
              duration = 150
            },
            {
              tileid = 463,
              duration = 150
            },
            {
              tileid = 503,
              duration = 150
            }
          }
        },
        {
          id = 385,
          animation = {
            {
              tileid = 385,
              duration = 150
            },
            {
              tileid = 425,
              duration = 150
            },
            {
              tileid = 465,
              duration = 150
            },
            {
              tileid = 505,
              duration = 150
            }
          }
        },
        {
          id = 386,
          animation = {
            {
              tileid = 386,
              duration = 150
            },
            {
              tileid = 426,
              duration = 150
            },
            {
              tileid = 466,
              duration = 150
            },
            {
              tileid = 506,
              duration = 150
            }
          }
        },
        {
          id = 388,
          animation = {
            {
              tileid = 388,
              duration = 150
            },
            {
              tileid = 428,
              duration = 150
            },
            {
              tileid = 468,
              duration = 150
            },
            {
              tileid = 508,
              duration = 150
            }
          }
        },
        {
          id = 389,
          animation = {
            {
              tileid = 389,
              duration = 150
            },
            {
              tileid = 429,
              duration = 150
            },
            {
              tileid = 469,
              duration = 150
            },
            {
              tileid = 509,
              duration = 150
            }
          }
        },
        {
          id = 390,
          animation = {
            {
              tileid = 390,
              duration = 150
            },
            {
              tileid = 430,
              duration = 150
            },
            {
              tileid = 470,
              duration = 150
            },
            {
              tileid = 510,
              duration = 150
            }
          }
        },
        {
          id = 392,
          animation = {
            {
              tileid = 392,
              duration = 150
            },
            {
              tileid = 432,
              duration = 150
            },
            {
              tileid = 472,
              duration = 150
            },
            {
              tileid = 512,
              duration = 150
            }
          }
        },
        {
          id = 393,
          animation = {
            {
              tileid = 393,
              duration = 150
            },
            {
              tileid = 433,
              duration = 150
            },
            {
              tileid = 473,
              duration = 150
            },
            {
              tileid = 513,
              duration = 150
            }
          }
        },
        {
          id = 395,
          animation = {
            {
              tileid = 395,
              duration = 150
            },
            {
              tileid = 435,
              duration = 150
            },
            {
              tileid = 475,
              duration = 150
            },
            {
              tileid = 515,
              duration = 150
            }
          }
        },
        {
          id = 396,
          animation = {
            {
              tileid = 396,
              duration = 150
            },
            {
              tileid = 436,
              duration = 150
            },
            {
              tileid = 476,
              duration = 150
            },
            {
              tileid = 516,
              duration = 150
            }
          }
        },
        {
          id = 561,
          animation = {
            {
              tileid = 561,
              duration = 150
            },
            {
              tileid = 564,
              duration = 150
            },
            {
              tileid = 567,
              duration = 150
            },
            {
              tileid = 570,
              duration = 150
            }
          }
        },
        {
          id = 563,
          animation = {
            {
              tileid = 563,
              duration = 150
            },
            {
              tileid = 566,
              duration = 150
            },
            {
              tileid = 569,
              duration = 150
            },
            {
              tileid = 572,
              duration = 150
            }
          }
        },
        {
          id = 579,
          animation = {
            {
              tileid = 579,
              duration = 150
            },
            {
              tileid = 582,
              duration = 150
            },
            {
              tileid = 585,
              duration = 150
            },
            {
              tileid = 588,
              duration = 150
            }
          }
        },
        {
          id = 581,
          animation = {
            {
              tileid = 581,
              duration = 150
            },
            {
              tileid = 584,
              duration = 150
            },
            {
              tileid = 587,
              duration = 150
            },
            {
              tileid = 590,
              duration = 150
            }
          }
        },
        {
          id = 641,
          animation = {
            {
              tileid = 641,
              duration = 150
            },
            {
              tileid = 644,
              duration = 150
            },
            {
              tileid = 647,
              duration = 150
            },
            {
              tileid = 650,
              duration = 150
            },
            {
              tileid = 653,
              duration = 150
            },
            {
              tileid = 656,
              duration = 150
            },
            {
              tileid = 659,
              duration = 150
            },
            {
              tileid = 662,
              duration = 150
            }
          }
        },
        {
          id = 642,
          animation = {
            {
              tileid = 642,
              duration = 150
            },
            {
              tileid = 645,
              duration = 150
            },
            {
              tileid = 648,
              duration = 150
            },
            {
              tileid = 651,
              duration = 150
            },
            {
              tileid = 654,
              duration = 150
            },
            {
              tileid = 657,
              duration = 150
            },
            {
              tileid = 660,
              duration = 150
            },
            {
              tileid = 663,
              duration = 150
            }
          }
        },
        {
          id = 643,
          animation = {
            {
              tileid = 643,
              duration = 150
            },
            {
              tileid = 646,
              duration = 150
            },
            {
              tileid = 649,
              duration = 150
            },
            {
              tileid = 652,
              duration = 150
            },
            {
              tileid = 655,
              duration = 150
            },
            {
              tileid = 658,
              duration = 150
            },
            {
              tileid = 661,
              duration = 150
            },
            {
              tileid = 664,
              duration = 150
            }
          }
        },
        {
          id = 681,
          animation = {
            {
              tileid = 681,
              duration = 150
            },
            {
              tileid = 684,
              duration = 150
            },
            {
              tileid = 687,
              duration = 150
            },
            {
              tileid = 690,
              duration = 150
            },
            {
              tileid = 693,
              duration = 150
            },
            {
              tileid = 696,
              duration = 150
            },
            {
              tileid = 699,
              duration = 150
            },
            {
              tileid = 702,
              duration = 150
            }
          }
        },
        {
          id = 682,
          animation = {
            {
              tileid = 682,
              duration = 150
            },
            {
              tileid = 685,
              duration = 150
            },
            {
              tileid = 688,
              duration = 150
            },
            {
              tileid = 691,
              duration = 150
            },
            {
              tileid = 694,
              duration = 150
            },
            {
              tileid = 697,
              duration = 150
            },
            {
              tileid = 700,
              duration = 150
            },
            {
              tileid = 703,
              duration = 150
            }
          }
        },
        {
          id = 683,
          animation = {
            {
              tileid = 683,
              duration = 150
            },
            {
              tileid = 686,
              duration = 150
            },
            {
              tileid = 689,
              duration = 150
            },
            {
              tileid = 692,
              duration = 150
            },
            {
              tileid = 695,
              duration = 150
            },
            {
              tileid = 698,
              duration = 150
            },
            {
              tileid = 701,
              duration = 150
            },
            {
              tileid = 704,
              duration = 150
            }
          }
        },
        {
          id = 721,
          animation = {
            {
              tileid = 721,
              duration = 150
            },
            {
              tileid = 724,
              duration = 150
            },
            {
              tileid = 727,
              duration = 150
            },
            {
              tileid = 730,
              duration = 150
            },
            {
              tileid = 733,
              duration = 150
            },
            {
              tileid = 736,
              duration = 150
            },
            {
              tileid = 739,
              duration = 150
            },
            {
              tileid = 742,
              duration = 150
            }
          }
        },
        {
          id = 722,
          animation = {
            {
              tileid = 722,
              duration = 150
            },
            {
              tileid = 725,
              duration = 150
            },
            {
              tileid = 728,
              duration = 150
            },
            {
              tileid = 731,
              duration = 150
            },
            {
              tileid = 734,
              duration = 150
            },
            {
              tileid = 737,
              duration = 150
            },
            {
              tileid = 740,
              duration = 150
            },
            {
              tileid = 743,
              duration = 150
            }
          }
        },
        {
          id = 723,
          animation = {
            {
              tileid = 723,
              duration = 150
            },
            {
              tileid = 726,
              duration = 150
            },
            {
              tileid = 729,
              duration = 150
            },
            {
              tileid = 732,
              duration = 150
            },
            {
              tileid = 735,
              duration = 150
            },
            {
              tileid = 738,
              duration = 150
            },
            {
              tileid = 741,
              duration = 150
            },
            {
              tileid = 744,
              duration = 150
            }
          }
        },
        {
          id = 801,
          animation = {
            {
              tileid = 801,
              duration = 150
            },
            {
              tileid = 804,
              duration = 150
            },
            {
              tileid = 807,
              duration = 150
            },
            {
              tileid = 810,
              duration = 150
            },
            {
              tileid = 813,
              duration = 150
            },
            {
              tileid = 816,
              duration = 150
            },
            {
              tileid = 819,
              duration = 150
            },
            {
              tileid = 822,
              duration = 150
            }
          }
        },
        {
          id = 802,
          animation = {
            {
              tileid = 802,
              duration = 150
            },
            {
              tileid = 805,
              duration = 150
            },
            {
              tileid = 808,
              duration = 150
            },
            {
              tileid = 811,
              duration = 150
            },
            {
              tileid = 814,
              duration = 150
            },
            {
              tileid = 817,
              duration = 150
            },
            {
              tileid = 820,
              duration = 150
            },
            {
              tileid = 823,
              duration = 150
            }
          }
        },
        {
          id = 803,
          animation = {
            {
              tileid = 803,
              duration = 150
            },
            {
              tileid = 806,
              duration = 150
            },
            {
              tileid = 809,
              duration = 150
            },
            {
              tileid = 812,
              duration = 150
            },
            {
              tileid = 815,
              duration = 150
            },
            {
              tileid = 818,
              duration = 150
            },
            {
              tileid = 821,
              duration = 150
            },
            {
              tileid = 824,
              duration = 150
            }
          }
        },
        {
          id = 841,
          animation = {
            {
              tileid = 841,
              duration = 150
            },
            {
              tileid = 844,
              duration = 150
            },
            {
              tileid = 847,
              duration = 150
            },
            {
              tileid = 850,
              duration = 150
            },
            {
              tileid = 853,
              duration = 150
            },
            {
              tileid = 856,
              duration = 150
            },
            {
              tileid = 859,
              duration = 150
            },
            {
              tileid = 862,
              duration = 150
            }
          }
        },
        {
          id = 843,
          animation = {
            {
              tileid = 843,
              duration = 150
            },
            {
              tileid = 846,
              duration = 150
            },
            {
              tileid = 849,
              duration = 150
            },
            {
              tileid = 852,
              duration = 150
            },
            {
              tileid = 855,
              duration = 150
            },
            {
              tileid = 858,
              duration = 150
            },
            {
              tileid = 861,
              duration = 150
            },
            {
              tileid = 864,
              duration = 150
            }
          }
        },
        {
          id = 881,
          animation = {
            {
              tileid = 881,
              duration = 150
            },
            {
              tileid = 884,
              duration = 150
            },
            {
              tileid = 887,
              duration = 150
            },
            {
              tileid = 890,
              duration = 150
            },
            {
              tileid = 893,
              duration = 150
            },
            {
              tileid = 896,
              duration = 150
            },
            {
              tileid = 899,
              duration = 150
            },
            {
              tileid = 902,
              duration = 150
            }
          }
        },
        {
          id = 882,
          animation = {
            {
              tileid = 882,
              duration = 150
            },
            {
              tileid = 885,
              duration = 150
            },
            {
              tileid = 888,
              duration = 150
            },
            {
              tileid = 891,
              duration = 150
            },
            {
              tileid = 894,
              duration = 150
            },
            {
              tileid = 897,
              duration = 150
            },
            {
              tileid = 900,
              duration = 150
            },
            {
              tileid = 903,
              duration = 150
            }
          }
        },
        {
          id = 883,
          animation = {
            {
              tileid = 883,
              duration = 150
            },
            {
              tileid = 886,
              duration = 150
            },
            {
              tileid = 889,
              duration = 150
            },
            {
              tileid = 892,
              duration = 150
            },
            {
              tileid = 895,
              duration = 150
            },
            {
              tileid = 898,
              duration = 150
            },
            {
              tileid = 901,
              duration = 150
            },
            {
              tileid = 904,
              duration = 150
            }
          }
        }
      }
    },
    {
      name = "overworld",
      firstgid = 6977,
      class = "",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 23,
      image = "_tilesets/overworld.png",
      imagewidth = 368,
      imageheight = 520,
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
      wangsets = {},
      tilecount = 736,
      tiles = {
        {
          id = 176,
          animation = {
            {
              tileid = 176,
              duration = 100
            },
            {
              tileid = 177,
              duration = 100
            },
            {
              tileid = 178,
              duration = 100
            }
          }
        },
        {
          id = 199,
          animation = {
            {
              tileid = 199,
              duration = 100
            },
            {
              tileid = 200,
              duration = 100
            },
            {
              tileid = 201,
              duration = 100
            }
          }
        },
        {
          id = 222,
          animation = {
            {
              tileid = 222,
              duration = 100
            },
            {
              tileid = 223,
              duration = 100
            },
            {
              tileid = 224,
              duration = 100
            }
          }
        },
        {
          id = 245,
          animation = {
            {
              tileid = 245,
              duration = 200
            },
            {
              tileid = 268,
              duration = 200
            },
            {
              tileid = 291,
              duration = 200
            }
          }
        },
        {
          id = 246,
          animation = {
            {
              tileid = 246,
              duration = 200
            },
            {
              tileid = 269,
              duration = 200
            },
            {
              tileid = 292,
              duration = 200
            }
          }
        },
        {
          id = 247,
          animation = {
            {
              tileid = 247,
              duration = 200
            },
            {
              tileid = 270,
              duration = 200
            },
            {
              tileid = 293,
              duration = 200
            }
          }
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 92,
      height = 52,
      id = 26,
      name = "Simple",
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
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2364, 2364, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442,
        699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 92,
      height = 52,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2314, 2314, 2314, 2314, 2315, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2367, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2367, 2314, 2315, 0, 0, 0, 2313, 2314, 2368, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2367, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2317, 2414, 2414, 2414, 2415, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2317, 2415, 0, 0, 0, 0, 0, 0, 0, 2413, 2414, 2414, 2414, 2414, 2414, 2415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2414, 2415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2314, 2314, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2314, 2314, 2314, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2368, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2367, 2315, 0, 0, 0, 0, 0, 0, 0, 2313, 2314, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2314, 2315, 0, 0, 0, 0, 0, 0, 2313, 2368, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2318, 2364, 2364, 2364, 2367, 2315, 2313, 2314, 2314, 2315, 0, 0, 2363, 2364, 2367, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2368, 2364, 2367, 2315, 0, 0, 0, 0, 2313, 2368, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 2313, 2314, 2314, 2314, 2314, 2314, 2315, 0, 0, 2413, 2318, 2364, 2364, 2364, 2367, 2368, 2364, 2364, 2365, 0, 0, 2363, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2314, 2314, 2314, 2368, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2317, 2415, 0, 0, 0, 0, 0, 0, 2313, 2368, 2364, 2364, 2364, 2364, 2364, 2367, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2415, 0, 2313, 2368, 2364, 2364, 2367, 2315, 0, 0, 0, 2313, 2314, 2314, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2314, 2314, 2314, 2314, 2315, 0, 2313, 2314, 2368, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2315, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 2313, 2314, 2368, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 0, 0, 2413, 2318, 2364, 2364, 2364, 2364, 2364, 2365, 0, 2313, 2368, 2364, 2364, 2364, 2364, 2367, 2314, 2314, 2314, 2368, 2364, 2364, 2367, 2314, 2314, 2315, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2368, 2364, 2364, 2364, 2364, 2365, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 2313, 2368, 2364, 2364, 2364, 2317, 2414, 2318, 2364, 2364, 2364, 2364, 2365, 0, 0, 2413, 2318, 2364, 2364, 2364, 2364, 2367, 2314, 2368, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2314, 2368, 2364, 2364, 2364, 2364, 2364, 2367, 2314, 2368, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 2363, 2364, 2364, 2364, 2317, 2415, 0, 2313, 2314, 2314, 2368, 2364, 2364, 2317, 2414, 2415, 0, 2413, 2414, 2414, 2318, 2364, 2367, 2315, 0, 0, 2413, 2414, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2415, 0, 0, 2313, 2314, 2314, 2314, 2315, 0,
        0, 0, 0, 0, 0, 2313, 2314, 2314, 2314, 2368, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2414, 2414, 2414, 2415, 0, 0, 0, 2363, 2364, 2364, 2317, 2415, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2367, 2314, 2314, 0, 0, 2413, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2414, 2415, 0, 0, 2313, 2368, 2364, 2364, 2364, 2365, 0,
        0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 2413, 2414, 2414, 2415, 0, 0, 0, 2363, 2364, 2317, 2414, 2414, 2414, 2415, 0, 0, 0, 0, 0, 0, 2413, 2318, 2364, 2364, 2364, 2364, 0, 0, 0, 2413, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2314, 2315, 0, 2313, 2368, 2364, 2364, 2364, 2364, 2365, 0,
        0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2317, 2414, 2318, 2364, 2364, 2364, 2364, 2317, 2414, 2414, 2414, 2414, 2414, 2414, 2414, 2414, 2415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2368, 2364, 2365, 0, 0, 0, 0, 0, 0, 2313, 2314, 2315, 0, 0, 2413, 2318, 2364, 2364, 2317, 2415, 0, 0, 0, 2413, 2414, 2414, 2414, 2414, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2365, 0,
        0, 0, 0, 0, 0, 2413, 2414, 2414, 2414, 2414, 2415, 0, 2363, 2364, 2364, 2364, 2317, 2415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2365, 0, 0, 0, 0, 2313, 2314, 2368, 2364, 2367, 2315, 0, 0, 2363, 2364, 2364, 2367, 2314, 2314, 2314, 2315, 0, 0, 0, 0, 0, 2413, 2414, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2414, 2414, 2415, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2365, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2414, 2414, 2414, 2415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2368, 2364, 2317, 2415, 0, 0, 0, 2313, 2368, 2364, 2364, 2364, 2364, 2367, 2315, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 2413, 2318, 2364, 2364, 2317, 2318, 2364, 2317, 2415, 0, 0, 0, 0, 2413, 2414, 2318, 2364, 2364, 2317, 2415, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2365, 0, 0, 0, 2313, 2368, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 2413, 2318, 2364, 2364, 2364, 2364, 2364, 2367, 2315, 0, 0, 0, 0, 0, 0, 0, 2413, 2414, 2414, 2415, 2413, 2414, 2415, 0, 0, 0, 0, 0, 0, 2313, 2368, 2364, 2317, 2415, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2368, 2364, 2364, 2365, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2314, 2315, 2413, 2414, 2414, 2414, 2318, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2365, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2365, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 2363, 2364, 2364, 2367, 2315, 0, 0, 2313, 2314, 2314, 2314, 2314, 2314, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2414, 2414, 2415, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2317, 2415, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 2413, 2318, 2364, 2364, 2365, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 2313, 2314, 2314, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2365, 0, 0, 0, 0, 2413, 2414, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2415, 0, 0, 0, 0, 0, 2413, 2318, 2364, 2365, 0, 0, 2363, 2364, 2364, 2364, 2364, 2317, 2415, 0, 0, 0, 0, 2363, 2364, 2364, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2414,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2367, 2314, 2315, 0, 0, 0, 0, 2413, 2414, 2414, 2318, 2364, 2364, 2317, 2415, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2365, 0, 0, 2363, 2364, 2364, 2364, 2317, 2415, 0, 0, 0, 0, 0, 2413, 2318, 2364, 2364, 0, 0, 0, 0, 0, 0, 0, 0, 2300,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2367, 2314, 2314, 2314, 2314, 2315, 0, 0, 2413, 2414, 2414, 2415, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2365, 2313, 2314, 2368, 2364, 2364, 2317, 2415, 0, 0, 0, 0, 0, 0, 0, 2413, 2318, 2364, 0, 0, 0, 0, 0, 0, 0, 0, 2350,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 2313, 2314, 2314, 2314, 2314, 2315, 0, 0, 2313, 2368, 2364, 2365, 2363, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 0, 0, 0, 0, 0, 0, 0, 2350,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2314, 2314, 2314, 2314, 2315, 2363, 2364, 2364, 2364, 2364, 2367, 2314, 2314, 2368, 2364, 2364, 2365, 2413, 2414, 2414, 2414, 2414, 2415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2318, 2364, 0, 0, 0, 0, 0, 0, 0, 2350,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2314, 2314, 2314, 2315, 0, 0, 0, 0, 0, 2313, 2314, 2315, 0, 0, 2414, 2414, 2414, 2414, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2368, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 0, 0, 0, 0, 0, 0, 0, 2350,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2314, 2368, 2364, 2364, 2364, 2367, 2315, 2313, 2314, 2314, 2314, 2368, 2364, 2367, 2315, 0, 0, 0, 0, 0, 0, 2414, 2414, 2414, 2414, 2414, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2414, 2414, 2415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 0, 0, 0, 0, 0, 0, 0, 2350,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2368, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2314, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2414, 2414, 2414, 2414, 2414, 2414, 2414, 2414, 2414, 2414, 2415, 0, 0, 0, 0, 2313, 2314, 2314, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2414, 2415, 0, 0, 0, 0, 0, 0, 2400,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2314, 2315, 0, 0, 0, 0, 2313, 2314, 2314, 2314, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2314, 2368, 2364, 2364, 2367, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2315, 0, 0, 2313, 2368, 2364, 2364, 2364, 2367, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2314, 2368, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 2313, 2314, 2314, 2314, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2315, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 2313, 2314, 2314, 2368, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 2313, 2368, 2364, 2364, 2364, 2367, 2314, 2314, 2315, 0, 2313, 2314, 2314, 2314, 2315, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2314, 2368, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 2313, 2368, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2415, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2314, 2368, 2364, 2364, 2364, 2365, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2318, 2364, 2364, 2364, 2364, 2317, 2414, 2318, 2364, 2364, 2364, 2364, 2364, 2317, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2415, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2315, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2315, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2318, 2364, 2364, 2317, 2415, 0, 2413, 2318, 2364, 2364, 2364, 2364, 2365, 2413, 2414, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2415, 0, 0, 0, 0, 0, 2313, 2368, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 2413, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2414, 2414, 2415, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2365, 0, 0, 2413, 2414, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 2313, 2368, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2315, 0, 0, 0, 2313, 2368, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2318, 2364, 2364, 2317, 2415, 0, 0, 0, 0, 2413, 2318, 2364, 2364, 2364, 2364, 2317, 2415, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2314, 2314, 2314, 2368, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2414, 2414, 2415, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2414, 2415, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2414, 2318, 2364, 2317, 2415, 0, 0, 0, 0, 0, 0, 2413, 2414, 2414, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2414, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2415, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2414, 2318, 2364, 2364, 2364, 2364, 2317, 2414, 2415, 0, 2413, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2415, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2414, 2415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2318, 2364, 2317, 2414, 2415, 0, 0, 0, 0, 2413, 2414, 2414, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2414, 2414, 2415, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2317, 2414, 2414, 2414, 2415, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2414, 2415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2414, 2414, 2414, 2414, 2415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 92,
      height = 52,
      id = 15,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2314, 2314, 2314, 2314, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2314, 2368, 2364, 2364, 2364, 2364, 2367, 2314, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2314, 2315, 0, 0, 2413, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2365, 0, 0, 0, 2413, 2414, 2414, 2414, 2318, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 2413, 2414, 2414, 2414, 2414, 2415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2365, 0, 0, 0, 2313, 2314, 2314, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2365, 0, 2313, 2314, 2368, 2364, 2364, 2367, 2314, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2365, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2414, 2415, 0, 2413, 2414, 2414, 2414, 2414, 2414, 2414, 2415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2314, 2314, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2367, 2314, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2367, 2314, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2414, 2318, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2318, 2364, 2364, 2364, 2367, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2318, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2318, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2318, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2414, 2415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 92,
      height = 52,
      id = 16,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 1360, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1362, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 1360, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1362, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 1360, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1362, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 1360, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1362, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 1360, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1362, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 1360, 0, 0, 0, 0, 0, 0, 0, 743, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1362, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 1360, 1420, 1420, 1420, 1420, 1420, 1420, 1420, 1420, 1420, 1420, 1420, 1420, 1420, 1420, 1420, 1420, 1420, 1420, 1420, 1420, 1420, 1420, 1362, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 1460, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1462, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 1460, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1470, 1462, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 1510, 1511, 1511, 1511, 1511, 1511, 1511, 1511, 1511, 1511, 1511, 1511, 1511, 1511, 1511, 1511, 1511, 1511, 1511, 1511, 1511, 1511, 1511, 1512, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 746, 693, 693, 693, 693, 693, 693, 693, 693, 693, 694, 0, 0, 0, 0, 0, 692, 693, 693, 693, 693, 693, 693, 693, 693, 747, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 743, 744, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 743, 744, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 743, 744, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 743, 744, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 743, 743, 744, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 743, 743, 696, 793, 793, 794, 0, 0, 0, 0, 0, 792, 697, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 743, 743, 743, 696, 794, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 743, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 743, 743, 696, 793, 794, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 792, 697, 743, 743, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 743, 696, 794, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 792, 793, 697, 743, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 743, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 792, 697, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 743, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 743, 743, 743, 743, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 696, 793, 793, 793, 793, 697, 0, 0, 0, 0, 0, 0, 0, 696, 794, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 792, 793, 793, 793, 697, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 696, 793, 794, 0, 0, 0, 0, 792, 793, 697, 0, 0, 0, 0, 743, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 743, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 743, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 792, 697, 743, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        793, 793, 793, 793, 793, 793, 793, 793, 793, 793, 793, 793, 793, 793, 793, 793, 793, 793, 793, 793, 793, 793, 793, 793, 793, 794, 0, 0, 0, 0, 0, 0, 0, 0, 792, 793, 793, 793, 793, 793, 794, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 743, 0, 0, 743, 743, 743, 743, 743, 743, 743, 743, 743, 743, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 792, 793, 793, 793, 793, 793, 793, 793, 793, 793, 793, 793, 793, 697, 743, 743, 743, 743, 743, 743, 743, 743, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 792, 793, 793, 793, 793, 793, 793, 697, 743, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 743, 743, 743, 743, 743, 743, 743,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 792, 793, 793, 793, 793, 793, 793, 793,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 694, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 692, 693, 693, 693, 693, 693, 693, 693, 694, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 746, 693, 693, 693, 693, 694, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 746, 693, 693, 693, 693, 694, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 692, 693, 693, 747, 0, 0, 0, 0, 0, 0, 0, 746, 693, 693, 693, 693, 693, 693, 693, 694, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 746, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 747, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 743, 743, 746, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 92,
      height = 52,
      id = 22,
      name = "Medium",
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1495, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 92,
      height = 52,
      id = 2,
      name = "Objects",
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4688, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4711, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 92,
      height = 52,
      id = 11,
      name = "Objects2",
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 92,
      height = 52,
      id = 17,
      name = "Top",
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
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
          id = 2173,
          name = "",
          type = "",
          shape = "rectangle",
          x = 624,
          y = 320,
          width = 48,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2175,
          name = "",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 304,
          width = 48,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2176,
          name = "",
          type = "",
          shape = "rectangle",
          x = 656,
          y = 288,
          width = 64,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2177,
          name = "",
          type = "",
          shape = "rectangle",
          x = 688,
          y = 272,
          width = 48,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2178,
          name = "",
          type = "",
          shape = "rectangle",
          x = 704,
          y = 160,
          width = 80,
          height = 112,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2180,
          name = "",
          type = "",
          shape = "rectangle",
          x = 768,
          y = 112,
          width = 48,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2181,
          name = "",
          type = "",
          shape = "rectangle",
          x = 832,
          y = 112,
          width = 48,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2182,
          name = "",
          type = "",
          shape = "rectangle",
          x = 864,
          y = 160,
          width = 48,
          height = 112,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2183,
          name = "",
          type = "",
          shape = "rectangle",
          x = 880,
          y = 272,
          width = 48,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2184,
          name = "",
          type = "",
          shape = "rectangle",
          x = 896,
          y = 304,
          width = 64,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2185,
          name = "",
          type = "",
          shape = "rectangle",
          x = 928,
          y = 320,
          width = 48,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2187,
          name = "",
          type = "",
          shape = "rectangle",
          x = 944,
          y = 336,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2188,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1008,
          y = 352,
          width = 32,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2189,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1024,
          y = 400,
          width = 208,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2190,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1232,
          y = 400,
          width = 112,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2191,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1344,
          y = 400,
          width = 144,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2193,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1296,
          y = 560,
          width = 192,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2194,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1168,
          y = 544,
          width = 128,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2195,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1024,
          y = 512,
          width = 144,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2196,
          name = "",
          type = "",
          shape = "rectangle",
          x = 976,
          y = 544,
          width = 48,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2197,
          name = "",
          type = "",
          shape = "rectangle",
          x = 816,
          y = 560,
          width = 160,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2198,
          name = "",
          type = "",
          shape = "rectangle",
          x = 736,
          y = 544,
          width = 80,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2199,
          name = "",
          type = "",
          shape = "rectangle",
          x = 624,
          y = 528,
          width = 112,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2200,
          name = "",
          type = "",
          shape = "rectangle",
          x = 768,
          y = 96,
          width = 112,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2202,
          name = "blockadeVine",
          type = "blockade",
          shape = "rectangle",
          x = 784,
          y = 256,
          width = 80,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["delay"] = true
          }
        },
        {
          id = 2203,
          name = "blockadeVine",
          type = "blockade",
          shape = "rectangle",
          x = 1024,
          y = 432,
          width = 16,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {
            ["delay"] = true
          }
        },
        {
          id = 2204,
          name = "blockadeVine",
          type = "blockade",
          shape = "rectangle",
          x = 624,
          y = 416,
          width = 16,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {
            ["delay"] = true
          }
        },
        {
          id = 2398,
          name = "",
          type = "",
          shape = "rectangle",
          x = 320,
          y = 384,
          width = 96,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2400,
          name = "",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 352,
          width = 48,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2401,
          name = "",
          type = "",
          shape = "rectangle",
          x = 448,
          y = 336,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2402,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 352,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2403,
          name = "",
          type = "",
          shape = "rectangle",
          x = 544,
          y = 368,
          width = 112,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2404,
          name = "",
          type = "",
          shape = "rectangle",
          x = 320,
          y = 496,
          width = 336,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2405,
          name = "",
          type = "",
          shape = "rectangle",
          x = 336,
          y = 416,
          width = 16,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 10,
      name = "Water",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 12,
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
          id = 2207,
          name = "grass",
          type = "",
          shape = "point",
          x = 1312,
          y = 552,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2208,
          name = "grass",
          type = "",
          shape = "point",
          x = 1296,
          y = 496,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2209,
          name = "grass",
          type = "",
          shape = "point",
          x = 1256,
          y = 520,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2210,
          name = "grass",
          type = "",
          shape = "point",
          x = 1188,
          y = 532,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2211,
          name = "grass",
          type = "",
          shape = "point",
          x = 1236,
          y = 468,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2212,
          name = "grass",
          type = "",
          shape = "point",
          x = 1204,
          y = 444,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2213,
          name = "grass",
          type = "",
          shape = "point",
          x = 1156,
          y = 500,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2214,
          name = "grass",
          type = "",
          shape = "point",
          x = 1184,
          y = 472,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2215,
          name = "grass",
          type = "",
          shape = "point",
          x = 1084,
          y = 444,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2216,
          name = "grass",
          type = "",
          shape = "point",
          x = 1056,
          y = 504,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2217,
          name = "grass",
          type = "",
          shape = "point",
          x = 1008,
          y = 468,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2218,
          name = "grass",
          type = "",
          shape = "point",
          x = 968,
          y = 512,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2219,
          name = "grass",
          type = "",
          shape = "point",
          x = 993,
          y = 499,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2220,
          name = "grass",
          type = "",
          shape = "point",
          x = 988,
          y = 440,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2221,
          name = "grass",
          type = "",
          shape = "point",
          x = 952,
          y = 440,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2222,
          name = "grass",
          type = "",
          shape = "point",
          x = 968,
          y = 480,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2223,
          name = "grass",
          type = "",
          shape = "point",
          x = 900,
          y = 500,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2224,
          name = "grass",
          type = "",
          shape = "point",
          x = 853.25,
          y = 515.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2225,
          name = "grass",
          type = "",
          shape = "point",
          x = 864,
          y = 528,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2226,
          name = "grass",
          type = "",
          shape = "point",
          x = 861.75,
          y = 490.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2227,
          name = "grass",
          type = "",
          shape = "point",
          x = 816,
          y = 492,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2228,
          name = "grass",
          type = "",
          shape = "point",
          x = 800,
          y = 512,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2229,
          name = "grass",
          type = "",
          shape = "point",
          x = 776,
          y = 480,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2230,
          name = "grass",
          type = "",
          shape = "point",
          x = 735.75,
          y = 385.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2231,
          name = "grass",
          type = "",
          shape = "point",
          x = 680,
          y = 456,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2232,
          name = "grass",
          type = "",
          shape = "point",
          x = 703.25,
          y = 483.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2233,
          name = "grass",
          type = "",
          shape = "point",
          x = 692,
          y = 397.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2234,
          name = "grass",
          type = "",
          shape = "point",
          x = 700,
          y = 332,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2235,
          name = "grass",
          type = "",
          shape = "point",
          x = 712,
          y = 417.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2236,
          name = "grass",
          type = "",
          shape = "point",
          x = 744,
          y = 348,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2237,
          name = "grass",
          type = "",
          shape = "point",
          x = 796,
          y = 332,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2238,
          name = "grass",
          type = "",
          shape = "point",
          x = 824,
          y = 300,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2239,
          name = "grass",
          type = "",
          shape = "point",
          x = 768,
          y = 308,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2240,
          name = "grass",
          type = "",
          shape = "point",
          x = 880,
          y = 356,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2241,
          name = "grass",
          type = "",
          shape = "point",
          x = 908,
          y = 396,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2242,
          name = "grass",
          type = "",
          shape = "point",
          x = 876,
          y = 404,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2252,
          name = "grass",
          type = "",
          shape = "point",
          x = 636,
          y = 512,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2255,
          name = "grass",
          type = "",
          shape = "point",
          x = 716,
          y = 544,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2256,
          name = "grass",
          type = "",
          shape = "point",
          x = 699.25,
          y = 570.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2257,
          name = "grass",
          type = "",
          shape = "point",
          x = 660,
          y = 576,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2258,
          name = "grass",
          type = "",
          shape = "point",
          x = 717.5,
          y = 604.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2259,
          name = "grass",
          type = "",
          shape = "point",
          x = 728,
          y = 624,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2260,
          name = "grass",
          type = "",
          shape = "point",
          x = 788,
          y = 564,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2261,
          name = "grass",
          type = "",
          shape = "point",
          x = 880,
          y = 624,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2262,
          name = "grass",
          type = "",
          shape = "point",
          x = 948,
          y = 592,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2263,
          name = "grass",
          type = "",
          shape = "point",
          x = 1046.5,
          y = 530.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2264,
          name = "grass",
          type = "",
          shape = "point",
          x = 1008,
          y = 572,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2265,
          name = "grass",
          type = "",
          shape = "point",
          x = 1172,
          y = 592,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2266,
          name = "grass",
          type = "",
          shape = "point",
          x = 1144,
          y = 648,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2267,
          name = "grass",
          type = "",
          shape = "point",
          x = 1276,
          y = 564,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2268,
          name = "grass",
          type = "",
          shape = "point",
          x = 1352,
          y = 616,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2269,
          name = "grass",
          type = "",
          shape = "point",
          x = 1424,
          y = 588,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2270,
          name = "grass",
          type = "",
          shape = "point",
          x = 1456,
          y = 592,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2271,
          name = "grass",
          type = "",
          shape = "point",
          x = 1460,
          y = 428,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2272,
          name = "grass",
          type = "",
          shape = "point",
          x = 1416,
          y = 448,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2273,
          name = "grass",
          type = "",
          shape = "point",
          x = 1340,
          y = 388,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2274,
          name = "grass",
          type = "",
          shape = "point",
          x = 1372,
          y = 388,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2275,
          name = "grass",
          type = "",
          shape = "point",
          x = 1364,
          y = 328,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2276,
          name = "grass",
          type = "",
          shape = "point",
          x = 1324,
          y = 384,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2277,
          name = "grass",
          type = "",
          shape = "point",
          x = 1264,
          y = 420,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2278,
          name = "grass",
          type = "",
          shape = "point",
          x = 1312,
          y = 420,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2279,
          name = "grass",
          type = "",
          shape = "point",
          x = 1208,
          y = 392,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2280,
          name = "grass",
          type = "",
          shape = "point",
          x = 1140,
          y = 376,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2281,
          name = "grass",
          type = "",
          shape = "point",
          x = 1050.75,
          y = 403.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2282,
          name = "grass",
          type = "",
          shape = "point",
          x = 1056,
          y = 364,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2283,
          name = "grass",
          type = "",
          shape = "point",
          x = 1012,
          y = 324,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2284,
          name = "grass",
          type = "",
          shape = "point",
          x = 972,
          y = 340,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2285,
          name = "grass",
          type = "",
          shape = "point",
          x = 960,
          y = 292,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2286,
          name = "grass",
          type = "",
          shape = "point",
          x = 924,
          y = 280,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2287,
          name = "grass",
          type = "",
          shape = "point",
          x = 924,
          y = 236,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2288,
          name = "grass",
          type = "",
          shape = "point",
          x = 880,
          y = 212,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2289,
          name = "grass",
          type = "",
          shape = "point",
          x = 904,
          y = 276,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2290,
          name = "grass",
          type = "",
          shape = "point",
          x = 898.5,
          y = 185.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2291,
          name = "grass",
          type = "",
          shape = "point",
          x = 976,
          y = 176,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2292,
          name = "grass",
          type = "",
          shape = "point",
          x = 1000,
          y = 204,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2293,
          name = "grass",
          type = "",
          shape = "point",
          x = 1064,
          y = 204,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2294,
          name = "grass",
          type = "",
          shape = "point",
          x = 1063,
          y = 273.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2295,
          name = "grass",
          type = "",
          shape = "point",
          x = 760,
          y = 180,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2296,
          name = "grass",
          type = "",
          shape = "point",
          x = 712,
          y = 212,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2297,
          name = "grass",
          type = "",
          shape = "point",
          x = 748,
          y = 236,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2298,
          name = "grass",
          type = "",
          shape = "point",
          x = 692,
          y = 252,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2299,
          name = "grass",
          type = "",
          shape = "point",
          x = 656,
          y = 288,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2300,
          name = "grass",
          type = "",
          shape = "point",
          x = 624,
          y = 348,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2301,
          name = "grass",
          type = "",
          shape = "point",
          x = 628,
          y = 380,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2313,
          name = "grass",
          type = "",
          shape = "point",
          x = 668,
          y = 236,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2314,
          name = "grass",
          type = "",
          shape = "point",
          x = 668,
          y = 188,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2315,
          name = "shrub",
          type = "",
          shape = "point",
          x = 1216,
          y = 500,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2316,
          name = "shrub",
          type = "",
          shape = "point",
          x = 1268,
          y = 480,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2317,
          name = "shrub",
          type = "",
          shape = "point",
          x = 1058,
          y = 456.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2318,
          name = "shrub",
          type = "",
          shape = "point",
          x = 980,
          y = 460,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2319,
          name = "shrub",
          type = "",
          shape = "point",
          x = 932,
          y = 472,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2320,
          name = "shrub",
          type = "",
          shape = "point",
          x = 916,
          y = 418,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2321,
          name = "shrub",
          type = "",
          shape = "point",
          x = 896,
          y = 364,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2322,
          name = "shrub",
          type = "",
          shape = "point",
          x = 856,
          y = 308,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2323,
          name = "shrub",
          type = "",
          shape = "point",
          x = 825.75,
          y = 333.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2324,
          name = "shrub",
          type = "",
          shape = "point",
          x = 780,
          y = 352,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2325,
          name = "shrub",
          type = "",
          shape = "point",
          x = 708,
          y = 352,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2326,
          name = "shrub",
          type = "",
          shape = "point",
          x = 732,
          y = 440,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2327,
          name = "shrub",
          type = "",
          shape = "point",
          x = 688,
          y = 428,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2328,
          name = "shrub",
          type = "",
          shape = "point",
          x = 720,
          y = 468,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2329,
          name = "shrub",
          type = "",
          shape = "point",
          x = 800,
          y = 492,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2332,
          name = "shrub",
          type = "",
          shape = "point",
          x = 676,
          y = 268,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2333,
          name = "shrub",
          type = "",
          shape = "point",
          x = 763.75,
          y = 205.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2334,
          name = "shrub",
          type = "",
          shape = "point",
          x = 732,
          y = 180,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2336,
          name = "shrub",
          type = "",
          shape = "point",
          x = 940,
          y = 172,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2337,
          name = "shrub",
          type = "",
          shape = "point",
          x = 940,
          y = 296,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2338,
          name = "shrub",
          type = "",
          shape = "point",
          x = 1036,
          y = 376,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2339,
          name = "shrub",
          type = "",
          shape = "point",
          x = 1124,
          y = 392,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2340,
          name = "shrub",
          type = "",
          shape = "point",
          x = 1292,
          y = 392,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2341,
          name = "shrub",
          type = "",
          shape = "point",
          x = 1376,
          y = 456,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2342,
          name = "shrub",
          type = "",
          shape = "point",
          x = 1456,
          y = 620,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2343,
          name = "shrub",
          type = "",
          shape = "point",
          x = 1376,
          y = 576,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2344,
          name = "shrub",
          type = "",
          shape = "point",
          x = 1296,
          y = 588,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2345,
          name = "shrub",
          type = "",
          shape = "point",
          x = 1228,
          y = 568,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2346,
          name = "shrub",
          type = "",
          shape = "point",
          x = 1196,
          y = 620,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2347,
          name = "shrub",
          type = "",
          shape = "point",
          x = 1128,
          y = 540,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2348,
          name = "shrub",
          type = "",
          shape = "point",
          x = 1048,
          y = 576,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2349,
          name = "shrub",
          type = "",
          shape = "point",
          x = 924,
          y = 628,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2350,
          name = "shrub",
          type = "",
          shape = "point",
          x = 864,
          y = 588,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2351,
          name = "shrub",
          type = "",
          shape = "point",
          x = 764,
          y = 568,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2352,
          name = "shrub",
          type = "",
          shape = "point",
          x = 732,
          y = 592,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2353,
          name = "shrub",
          type = "",
          shape = "point",
          x = 640,
          y = 552,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2360,
          name = "shrub",
          type = "",
          shape = "point",
          x = 632,
          y = 304,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2361,
          name = "shrub",
          type = "",
          shape = "point",
          x = 656,
          y = 340,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2362,
          name = "shrub",
          type = "",
          shape = "point",
          x = 664,
          y = 212,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2406,
          name = "shrub",
          type = "",
          shape = "point",
          x = 612,
          y = 360,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2407,
          name = "shrub",
          type = "",
          shape = "point",
          x = 592,
          y = 384,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2408,
          name = "shrub",
          type = "",
          shape = "point",
          x = 536,
          y = 288,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2409,
          name = "shrub",
          type = "",
          shape = "point",
          x = 492,
          y = 332,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2410,
          name = "shrub",
          type = "",
          shape = "point",
          x = 436,
          y = 324,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2411,
          name = "shrub",
          type = "",
          shape = "point",
          x = 372,
          y = 388,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2412,
          name = "shrub",
          type = "",
          shape = "point",
          x = 304,
          y = 356,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2413,
          name = "shrub",
          type = "",
          shape = "point",
          x = 300,
          y = 280,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2414,
          name = "shrub",
          type = "",
          shape = "point",
          x = 328,
          y = 244,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2415,
          name = "shrub",
          type = "",
          shape = "point",
          x = 520,
          y = 216,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2416,
          name = "shrub",
          type = "",
          shape = "point",
          x = 416,
          y = 224,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2417,
          name = "shrub",
          type = "",
          shape = "point",
          x = 248,
          y = 388,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2418,
          name = "shrub",
          type = "",
          shape = "point",
          x = 188,
          y = 356,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2419,
          name = "shrub",
          type = "",
          shape = "point",
          x = 124,
          y = 384,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2420,
          name = "shrub",
          type = "",
          shape = "point",
          x = 560,
          y = 544,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2421,
          name = "shrub",
          type = "",
          shape = "point",
          x = 496,
          y = 560,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2422,
          name = "shrub",
          type = "",
          shape = "point",
          x = 468,
          y = 512,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2423,
          name = "shrub",
          type = "",
          shape = "point",
          x = 396,
          y = 544,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2424,
          name = "shrub",
          type = "",
          shape = "point",
          x = 344,
          y = 516,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2425,
          name = "shrub",
          type = "",
          shape = "point",
          x = 328,
          y = 560,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2433,
          name = "shrub",
          type = "",
          shape = "point",
          x = 580,
          y = 456,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2434,
          name = "shrub",
          type = "",
          shape = "point",
          x = 516,
          y = 488,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2435,
          name = "shrub",
          type = "",
          shape = "point",
          x = 408,
          y = 424,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2436,
          name = "shrub",
          type = "",
          shape = "point",
          x = 379.25,
          y = 487.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2437,
          name = "shrub",
          type = "",
          shape = "point",
          x = 368,
          y = 436,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2438,
          name = "grass",
          type = "",
          shape = "point",
          x = 612,
          y = 392,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2439,
          name = "grass",
          type = "",
          shape = "point",
          x = 580,
          y = 356,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2440,
          name = "grass",
          type = "",
          shape = "point",
          x = 568,
          y = 392,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2441,
          name = "grass",
          type = "",
          shape = "point",
          x = 536,
          y = 312,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2442,
          name = "grass",
          type = "",
          shape = "point",
          x = 528,
          y = 356,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2443,
          name = "grass",
          type = "",
          shape = "point",
          x = 508,
          y = 300,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2444,
          name = "grass",
          type = "",
          shape = "point",
          x = 424,
          y = 360,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2445,
          name = "grass",
          type = "",
          shape = "point",
          x = 380,
          y = 352,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2446,
          name = "grass",
          type = "",
          shape = "point",
          x = 392,
          y = 396,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2447,
          name = "grass",
          type = "",
          shape = "point",
          x = 348,
          y = 364,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2448,
          name = "grass",
          type = "",
          shape = "point",
          x = 312,
          y = 392,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2449,
          name = "grass",
          type = "",
          shape = "point",
          x = 304,
          y = 432,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2450,
          name = "grass",
          type = "",
          shape = "point",
          x = 280,
          y = 484,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2451,
          name = "grass",
          type = "",
          shape = "point",
          x = 244,
          y = 448,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2452,
          name = "grass",
          type = "",
          shape = "point",
          x = 400,
          y = 456,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2453,
          name = "grass",
          type = "",
          shape = "point",
          x = 480,
          y = 436,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2454,
          name = "grass",
          type = "",
          shape = "point",
          x = 568,
          y = 488,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2455,
          name = "grass",
          type = "",
          shape = "point",
          x = 608,
          y = 480,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2456,
          name = "grass",
          type = "",
          shape = "point",
          x = 600,
          y = 432,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2457,
          name = "grass",
          type = "",
          shape = "point",
          x = 532,
          y = 524,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2458,
          name = "grass",
          type = "",
          shape = "point",
          x = 616,
          y = 532,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2459,
          name = "grass",
          type = "",
          shape = "point",
          x = 420,
          y = 516,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2460,
          name = "grass",
          type = "",
          shape = "point",
          x = 360,
          y = 572,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2461,
          name = "grass",
          type = "",
          shape = "point",
          x = 364,
          y = 644,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2462,
          name = "grass",
          type = "",
          shape = "point",
          x = 304,
          y = 520,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2463,
          name = "grass",
          type = "",
          shape = "point",
          x = 204,
          y = 548,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 25,
      name = "Props",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 8,
      name = "Chests",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 14,
      name = "NPC",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 23,
      name = "ShopItems",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 28,
      name = "Challenges",
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
          id = 2205,
          name = "swampFight",
          type = "",
          shape = "point",
          x = 824,
          y = 424,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["selfChest"] = true,
            ["triggerType"] = "left",
            ["triggerVal"] = 1016
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 6,
      name = "Enemies",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 7,
      name = "Transitions",
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
          id = 2201,
          name = "c_swamp",
          type = "",
          shape = "rectangle",
          x = 812,
          y = 140,
          width = 24,
          height = 12,
          rotation = 0,
          visible = true,
          properties = {
            ["destX"] = 1376,
            ["destY"] = 1120
          }
        },
        {
          id = 2206,
          name = "3_town",
          type = "left",
          shape = "rectangle",
          x = 1472,
          y = 480,
          width = 16,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {
            ["destX"] = 12,
            ["destY"] = -1
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 21,
      name = "Weapons",
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
          id = 2395,
          name = "torch",
          type = "",
          shape = "point",
          x = 1336,
          y = 456,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2396,
          name = "torch",
          type = "",
          shape = "point",
          x = 936,
          y = 344,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2397,
          name = "torch",
          type = "",
          shape = "point",
          x = 856,
          y = 168,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 24,
      name = "Tutorials",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 9,
      name = "Trees",
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
          id = 2363,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 1444.75,
          y = 453.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2364,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 1342.75,
          y = 419.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2365,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 1173.75,
          y = 403,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2366,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 1004.75,
          y = 341.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2367,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 960.75,
          y = 309.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2368,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 899.25,
          y = 242.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2369,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 948.75,
          y = 93.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2370,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 828.75,
          y = 65.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2371,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 752.75,
          y = 97.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2372,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 656.75,
          y = 89.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2373,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 660.75,
          y = 37.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2374,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 740.75,
          y = 205.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2375,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 712.75,
          y = 257.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2376,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 640.75,
          y = 325.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2379,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 684.75,
          y = 549.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2380,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 904.75,
          y = 581.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2381,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 1084.75,
          y = 533.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2382,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 1140.75,
          y = 565.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2383,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 984.75,
          y = 605.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2384,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 1176.75,
          y = 677.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2385,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 1348.75,
          y = 577.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2386,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 1477.25,
          y = 597.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2387,
          name = "big",
          type = "fake",
          shape = "point",
          x = 1088,
          y = 400,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2388,
          name = "big",
          type = "fake",
          shape = "point",
          x = 1236,
          y = 676,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2389,
          name = "big",
          type = "fake",
          shape = "point",
          x = 1385.25,
          y = 434.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2390,
          name = "big",
          type = "fake",
          shape = "point",
          x = 943.5,
          y = 212.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2391,
          name = "big",
          type = "fake",
          shape = "point",
          x = 648,
          y = 260,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2392,
          name = "big",
          type = "fake",
          shape = "point",
          x = 636,
          y = 680,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2393,
          name = "big",
          type = "fake",
          shape = "point",
          x = 832,
          y = 676,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2394,
          name = "big",
          type = "fake",
          shape = "point",
          x = 1392,
          y = 704,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2464,
          name = "gemPedestal",
          type = "Swamp",
          shape = "point",
          x = 480,
          y = 384,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2465,
          name = "big",
          type = "fake",
          shape = "point",
          x = 460,
          y = 336,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2466,
          name = "big",
          type = "fake",
          shape = "point",
          x = 352,
          y = 588,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2467,
          name = "big",
          type = "fake",
          shape = "point",
          x = 504,
          y = 668,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2468,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 521,
          y = 338.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2469,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 284.75,
          y = 381.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2470,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 500.75,
          y = 529.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2471,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 584.75,
          y = 521.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2472,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 383,
          y = 522.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 27,
      name = "Effects",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {}
    }
  }
}
