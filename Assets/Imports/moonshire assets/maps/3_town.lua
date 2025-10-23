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
  nextlayerid = 28,
  nextobjectid = 2218,
  properties = {
    ["ambience"] = "wind",
    ["background"] = "fog2",
    ["dark"] = 16,
    ["darkType"] = "parallax",
    ["defaultX"] = 656,
    ["defaultY"] = 400,
    ["music"] = "town",
    ["shader"] = "saturation",
    ["shaderVal"] = 1.15,
    ["weather"] = "petals"
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
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 699, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 699, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 699, 2442, 2442, 699, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 699, 2442, 2442, 699, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 699, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 703, 2442, 2442, 701,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 699, 699, 699, 699, 699, 699, 699, 699, 699, 699, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 699, 699, 699, 699, 699, 699, 699,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 699, 699, 699, 699, 699, 699, 699,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442,
        2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442, 2442
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
        2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 699, 699, 753, 699, 753, 0, 2313, 2368, 2365, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2414, 2415, 2313, 2314, 2368, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0,
        2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 2413, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 701, 699, 699, 699, 699, 0, 2363, 2364, 2365, 0, 2413, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2415, 0, 2313, 2368, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2314, 2315, 0, 0, 0, 0, 0,
        2364, 2364, 2364, 2364, 2317, 2415, 0, 0, 2313, 2368, 2364, 2364, 2317, 2318, 2364, 2317, 2414, 2414, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2415, 0, 0, 0, 2413, 2414, 2414, 2414, 2318, 2364, 2364, 2364, 2364, 2364, 2317, 2414, 2415, 0, 699, 0, 699, 753, 702, 752, 699, 0, 2363, 2364, 2365, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0,
        2364, 2364, 2364, 2364, 2365, 0, 0, 0, 2363, 2364, 2317, 2414, 2415, 2413, 2414, 2415, 0, 0, 2413, 2414, 2414, 2414, 2318, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2317, 2414, 2415, 0, 0, 0, 699, 699, 699, 749, 699, 699, 0, 2313, 2368, 2364, 2365, 0, 0, 2413, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 2313, 2368, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0,
        2364, 2364, 2364, 2317, 2415, 0, 0, 0, 2363, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2414, 2414, 2415, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2414, 2414, 2414, 2415, 0, 0, 0, 0, 0, 749, 754, 699, 699, 699, 699, 0, 2363, 2364, 2364, 2367, 2315, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2415, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0,
        2364, 2364, 2364, 2365, 0, 0, 0, 0, 2413, 2414, 2415, 0, 0, 0, 0, 0, 2313, 2314, 2314, 2314, 2314, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2314, 2314, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 702, 700, 699, 702, 701, 699, 754, 0, 2363, 2364, 2364, 2364, 2365, 0, 0, 2413, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2415, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2315, 0, 0, 0, 0,
        2364, 2364, 2364, 2365, 0, 0, 2313, 2314, 2314, 2315, 0, 0, 0, 0, 0, 2313, 2368, 2364, 2364, 2364, 2364, 2367, 2314, 2315, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2367, 2314, 2315, 0, 0, 0, 2306, 2307, 2308, 699, 699, 699, 699, 699, 699, 701, 700, 0, 2413, 2318, 2364, 2364, 2365, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2414, 2415, 0, 0, 0, 2413, 2414, 2414, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0,
        2364, 2364, 2364, 2365, 0, 0, 2363, 2364, 2364, 2367, 2314, 2314, 2314, 2315, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 2413, 2318, 2364, 2364, 2364, 2367, 2315, 0, 2306, 2361, 2310, 2408, 699, 701, 699, 699, 753, 699, 699, 6059, 699, 0, 2363, 2364, 2364, 2365, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 2313, 2314, 2314, 2315, 2413, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0,
        2364, 2364, 2364, 2365, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2314, 2314, 2314, 2314, 2314, 2315, 0, 2413, 2318, 2364, 2364, 2364, 2365, 0, 2356, 2546, 2358, 0, 703, 699, 699, 754, 699, 699, 699, 6059, 699, 699, 2363, 2364, 2364, 2365, 0, 0, 0, 2413, 2414, 2318, 2364, 2364, 2364, 2317, 2415, 0, 0, 2313, 2314, 2368, 2364, 2364, 2367, 2315, 2413, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2414, 2414, 2415, 0, 0, 0, 0,
        2364, 2364, 2364, 2365, 0, 0, 2413, 2414, 2318, 2364, 2364, 2364, 2317, 2415, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 2363, 2364, 2364, 2317, 2415, 0, 2356, 2310, 2408, 0, 0, 699, 699, 699, 699, 699, 700, 6059, 0, 0, 2413, 2318, 2364, 2365, 0, 0, 0, 0, 0, 2413, 2414, 2414, 2414, 2415, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2365, 0, 2413, 2414, 2414, 2318, 2364, 2364, 2317, 2415, 0, 0, 0, 0, 0, 0, 0,
        2364, 2364, 2364, 2367, 2315, 0, 0, 0, 2413, 2414, 2318, 2364, 2367, 2315, 0, 2413, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2314, 2315, 2413, 2414, 2414, 2415, 0, 0, 2406, 2408, 0, 0, 699, 752, 699, 699, 699, 700, 699, 0, 0, 0, 0, 2413, 2318, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2317, 2415, 0, 0, 0, 0, 2413, 2414, 2414, 2415, 0, 0, 0, 0, 0, 0, 0, 0,
        2364, 2364, 2364, 2364, 2367, 2315, 0, 0, 0, 0, 2413, 2318, 2364, 2367, 2314, 2314, 2368, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2315, 0, 0, 0, 0, 0, 0, 0, 749, 699, 699, 699, 700, 699, 700, 701, 699, 0, 0, 0, 0, 0, 2363, 2364, 2315, 699, 699, 699, 699, 752, 699, 699, 699, 699, 699, 753, 699, 2413, 2318, 2364, 2364, 2364, 2365, 2313, 2314, 2314, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2314,
        2364, 2364, 2364, 2364, 2364, 2367, 2314, 2314, 2315, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 699, 699, 752, 699, 699, 699, 752, 699, 699, 743, 0, 0, 0, 0, 2413, 2414, 2415, 0, 699, 699, 699, 699, 753, 754, 699, 699, 699, 0, 699, 0, 2363, 2364, 2364, 2317, 2415, 2363, 2364, 2364, 2367, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364,
        2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2315, 0, 2413, 2414, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2415, 0, 2313, 2314, 2314, 2315, 0, 0, 699, 754, 699, 699, 752, 703, 699, 699, 703, 743, 0, 0, 0, 0, 0, 0, 0, 699, 699, 699, 699, 699, 699, 699, 699, 750, 754, 0, 743, 0, 2363, 2364, 2364, 2365, 0, 2363, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 2313, 2314, 2314, 2368, 2364,
        2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2315, 0, 0, 2413, 2414, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2414, 2414, 2415, 0, 2313, 2368, 2364, 2364, 2365, 0, 0, 699, 704, 699, 699, 699, 699, 699, 704, 704, 743, 0, 0, 0, 0, 0, 0, 0, 699, 699, 699, 699, 699, 699, 699, 752, 699, 749, 0, 0, 0, 2363, 2364, 2317, 2415, 0, 2363, 2364, 2364, 2364, 2367, 2314, 2314, 2314, 2315, 0, 0, 0, 2363, 2364, 2364, 2364, 2364,
        2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 2313, 2368, 2364, 2364, 2364, 2364, 2317, 2414, 2414, 2414, 2318, 2364, 2364, 2364, 2365, 0, 0, 0, 2313, 2368, 2364, 2364, 2364, 2367, 2315, 0, 6059, 701, 699, 699, 701, 699, 699, 699, 749, 743, 0, 0, 0, 0, 0, 0, 699, 750, 701, 699, 699, 699, 699, 699, 699, 699, 699, 0, 0, 0, 2363, 2364, 2365, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 2313, 2368, 2364, 2364, 2364, 2364,
        2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2415, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2317, 2415, 0, 0, 0, 2413, 2414, 2414, 2414, 2415, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2365, 0, 699, 699, 699, 699, 699, 699, 699, 699, 699, 0, 0, 0, 0, 0, 0, 0, 703, 699, 699, 699, 699, 699, 699, 699, 702, 699, 700, 0, 0, 0, 2413, 2414, 2415, 0, 0, 2413, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2315, 0, 2363, 2364, 2364, 2364, 2364, 2364,
        2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2415, 0, 0, 0, 0, 2413, 2414, 2414, 2414, 2414, 2415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2414, 2414, 2318, 2364, 2317, 2415, 0, 699, 699, 699, 700, 699, 702, 699, 699, 699, 0, 0, 0, 0, 0, 0, 0, 699, 702, 699, 699, 699, 699, 699, 699, 699, 704, 699, 0, 743, 0, 0, 0, 0, 0, 0, 0, 2413, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2314, 2368, 2364, 2364, 2364, 2364, 2364,
        2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 2313, 2314, 2314, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2414, 2415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 743, 0, 699, 699, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2317, 2414, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364,
        2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2314, 2368, 2364, 2317, 2415, 0, 0, 0, 0, 0, 753, 699, 699, 699, 754, 0, 699, 0, 0, 0, 0, 0, 699, 699, 703, 699, 699, 752, 699, 699, 699, 699, 699, 750, 699, 699, 752, 699, 699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 699, 699, 703, 750, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2317, 2415, 0, 2413, 2318, 2364, 2364, 2317, 2318, 2364, 2364, 2364,
        2364, 2364, 2364, 2364, 2364, 2364, 2317, 2414, 2318, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 2299, 2300, 2301, 713, 713, 713, 2299, 0, 0, 2313, 2314, 2314, 2314, 2314, 2314, 2314, 2314, 2314, 2314, 2315, 699, 749, 699, 699, 699, 699, 699, 699, 699, 704, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 750, 699, 699, 0, 0, 0, 0, 0, 2413, 2414, 2414, 2415, 0, 0, 0, 2413, 2414, 2414, 2415, 2363, 2364, 2364, 2364,
        2364, 2364, 2364, 2364, 2364, 2317, 2415, 0, 2363, 2364, 2317, 2414, 2415, 0, 0, 2292, 2294, 749, 2349, 0, 0, 763, 763, 763, 2349, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 699, 699, 699, 699, 750, 753, 699, 699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2314, 2314, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2314, 2368, 2364, 2364, 2364,
        2364, 2364, 2364, 2364, 2317, 2415, 0, 0, 2363, 2317, 2415, 0, 0, 0, 0, 2342, 0, 0, 0, 0, 0, 699, 701, 699, 2349, 0, 0, 2363, 2364, 2296, 2393, 2393, 2393, 2393, 2393, 2297, 2364, 2365, 0, 0, 699, 699, 703, 699, 699, 699, 699, 699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2367, 2314, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2317,
        2364, 2364, 2364, 2364, 2365, 0, 0, 0, 2413, 2415, 0, 0, 0, 0, 0, 2342, 0, 0, 0, 0, 0, 2300, 2300, 2300, 2354, 0, 0, 2363, 2364, 2346, 2293, 2293, 2293, 2293, 2293, 2347, 2364, 2365, 0, 0, 699, 699, 699, 0, 699, 699, 699, 699, 699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2367, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2365,
        2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 2292, 2357, 2358, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 699, 699, 699, 0, 699, 699, 704, 699, 753, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2414, 2318, 2364, 2364, 2364, 2365, 2313, 2314, 2314, 2314, 2315, 0, 0, 0, 0, 0, 0, 0, 2413, 2414, 2414, 2414, 2414, 2415,
        2364, 2364, 2364, 2317, 2415, 0, 0, 2292, 2357, 2357, 2357, 2357, 2357, 2357, 2546, 2358, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2414, 2414, 2414, 2414, 2414, 2414, 2414, 2414, 2414, 2415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2414, 2414, 2414, 2415, 2363, 2364, 2364, 2364, 2365, 0, 0, 2306, 2307, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        2364, 2317, 2414, 2415, 0, 0, 0, 2356, 2357, 2546, 2500, 2357, 2501, 2502, 2357, 2358, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 699, 699, 751, 699, 700, 699, 699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2365, 0, 2306, 2361, 2357, 2357, 2360, 2408, 0, 0, 0, 0, 0, 0,
        2364, 2365, 0, 0, 0, 0, 0, 2406, 2407, 2407, 2407, 2311, 2551, 2552, 2498, 2358, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 699, 699, 699, 699, 699, 699, 749, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2414, 2414, 2414, 2415, 0, 2356, 2357, 2357, 2357, 2357, 0, 2313, 2368, 2367, 2314, 2314, 2314,
        2414, 2415, 0, 0, 0, 0, 2315, 0, 0, 0, 0, 2356, 2357, 2546, 2310, 2408, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2314, 2314, 2315, 0, 0, 0, 0, 2313, 2314, 2314, 2314, 2315, 0, 0, 0, 699, 699, 699, 2313, 2314, 2314, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2306, 2307, 2361, 2357, 2357, 2357, 2310, 0, 2363, 2364, 2364, 2364, 2364, 2364,
        2300, 2300, 2300, 2300, 2300, 2300, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2306, 2307, 2307, 2307, 2307, 2308, 0, 0, 0, 2363, 2364, 2364, 2367, 2315, 0, 0, 0, 2363, 2364, 2364, 2317, 2415, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2306, 2307, 2361, 2357, 2357, 2357, 2357, 2357, 2358, 2313, 2368, 2364, 2364, 2364, 2364, 2364,
        2350, 2350, 2350, 2350, 2350, 2350, 2367, 2315, 0, 0, 2394, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2356, 2357, 2357, 2357, 2357, 2360, 2308, 0, 0, 2413, 2414, 2318, 2364, 2365, 0, 0, 0, 2413, 2414, 2414, 2415, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2317, 2415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2406, 2407, 2407, 2407, 2407, 2407, 2407, 2407, 2408, 2368, 2364, 2364, 2364, 2364, 2364, 2364,
        2350, 2350, 2350, 2350, 2350, 2350, 2350, 2367, 2315, 0, 0, 0, 2313, 2314, 2314, 2314, 2314, 2315, 0, 0, 0, 0, 0, 2357, 2357, 2357, 2357, 2357, 2358, 0, 0, 0, 0, 2413, 2414, 2415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2314, 2314, 2314, 2314, 2315, 0, 0, 0, 0, 0, 2364, 2364, 2364, 2364, 2364, 2364, 2364,
        2350, 2350, 2350, 2350, 2350, 2350, 2350, 2350, 2365, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 2357, 2547, 2358, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2367, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2368, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 2414, 2414, 2318, 2364, 2317, 2414,
        2350, 2350, 2350, 2350, 2350, 2350, 2350, 2350, 2365, 0, 0, 0, 2413, 2318, 2364, 2364, 2317, 2415, 0, 0, 2313, 2314, 2315, 0, 0, 0, 0, 2357, 2358, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2318, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2368, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 2313, 2314, 2315, 0, 0, 0, 0,
        2350, 2350, 2350, 2350, 2303, 2400, 2400, 2400, 2401, 0, 0, 0, 0, 2413, 2414, 2414, 2415, 0, 0, 0, 2363, 2364, 2365, 2313, 2314, 2314, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2414, 2415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 2363, 2364, 2365, 0, 0, 0, 0,
        2400, 2400, 2400, 2400, 2401, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2314, 2314, 2315, 0, 0, 2313, 2368, 2364, 2367, 2368, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 6059, 6059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2315, 0, 0, 0, 2313, 2368, 2364, 2367, 2315, 0, 0, 0,
        2314, 2315, 0, 0, 0, 0, 0, 0, 0, 2313, 2314, 2314, 2314, 2368, 2364, 2364, 2367, 2315, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2315, 0, 0, 0, 0, 0, 0, 5459, 5459, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2314, 0, 0, 2313, 2314, 2315, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 2363, 2364, 2364, 2364, 2365, 0, 0, 0,
        2364, 2367, 2314, 2314, 2314, 2314, 2314, 2315, 2313, 2368, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 2413, 2414, 2318, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 6059, 6059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2368, 2364, 0, 0, 2363, 2364, 2367, 2315, 0, 0, 2363, 2364, 2364, 2317, 2414, 2414, 2318, 2364, 2365, 0, 0, 0, 2363, 2364, 2364, 2364, 2365, 0, 0, 0,
        2364, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2368, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 5459, 5459, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 0, 0, 2363, 2364, 2364, 2367, 2315, 0, 2363, 2364, 2317, 2415, 0, 0, 2413, 2414, 2415, 0, 0, 2313, 2368, 2364, 2364, 2364, 2365, 0, 0, 0,
        2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 2413, 2318, 2364, 2364, 2364, 2317, 2415, 0, 0, 0, 0, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2368, 2364, 2364, 2364, 2365, 0, 2413, 2414, 2415, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2317, 2415, 0, 0, 0,
        2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 0, 0, 0, 0, 0, 6059, 0, 0, 0, 6059, 0, 0, 2313, 2314, 2315, 0, 0, 0, 0, 0, 0, 0, 2313, 2314, 2368, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2365, 0, 0, 0, 0,
        2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 2413, 2318, 2364, 2364, 2367, 2315, 0, 0, 0, 0, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 0, 0, 0, 0, 0, 0, 6059, 0, 0, 0, 0, 0, 2313, 2368, 2364, 2367, 2314, 2314, 2314, 2315, 0, 2313, 2314, 2368, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2367, 2315, 0, 0, 0,
        2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2415, 0, 0, 0, 0, 0, 2413, 2318, 2364, 2364, 2367, 2315, 0, 0, 0, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2314, 2368, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 2313, 2314, 2314, 2315, 2313, 2314, 2314, 2314, 2315, 0, 0, 2413, 2414, 2318, 2364, 2364, 2365, 0, 0, 0,
        2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 2413, 2318, 2364, 2364, 2365, 0, 0, 0, 0, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 0, 0, 0, 0, 0, 0, 2413, 2414, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2314, 2368, 2364, 2364, 2367, 2368, 2364, 2364, 2364, 2367, 2315, 0, 0, 0, 2413, 2414, 2414, 2415, 0, 0, 0,
        2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2314, 2315, 0, 0, 2313, 2314, 2314, 2314, 2368, 2364, 2364, 2365, 0, 0, 0, 0, 6059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 6059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2314, 2314, 2315, 0, 0, 2313, 2368, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 6059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6059, 0, 2313, 2368, 2364, 2364, 2367, 2315, 2313, 2368, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2315, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2365, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2414, 2415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2315, 2413, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2368, 2364, 2364, 2364, 2364, 2365, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2318, 2364, 2364, 2317, 2414, 2415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 2413, 2414, 2318, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2317, 2415, 2413, 2414, 2414, 2414, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 2413, 2414, 2414, 2415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2414, 2318, 2364, 2364, 2364, 2365, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2318, 2364, 2364, 2364, 2367, 2315, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2367, 2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2317, 2414, 2414, 2415, 0, 2363, 2364, 2364, 2317, 2415, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 2413, 2414, 2414, 2318, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6059, 6059, 6059, 6059, 6060, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6059, 6059, 6059, 6059, 6060, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6059, 6059, 6059, 6059, 6178, 6100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6059, 6059, 6059, 6059, 6060, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6059, 6059, 6059, 6059, 6060, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6059, 6059, 6059, 6059, 6059, 6060, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6059, 6059, 6059, 6059, 6059, 6059, 6258, 6020, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6058, 6059, 6059, 6059, 6059, 6059, 6059, 0, 6060, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6098, 6180, 6059, 6059, 6059, 6059, 6059, 0, 6258, 6020, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6220, 6059, 6059, 6059, 6059, 6059, 0, 6059, 6060, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6018, 6260, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6060, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1092, 0, 6018, 6259, 6260, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6178, 6100, 0, 0, 0, 2364, 2356, 2357, 0, 0, 0, 0, 0, 763, 763, 2357, 2358, 2299, 2301, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 6260, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6178, 6100, 0, 0, 0, 0, 0, 2356, 2357, 0, 0, 0, 0, 0, 0, 0, 2357, 2358, 2363, 2351, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6060, 0, 2313, 2314, 2315, 0, 0, 2356, 2357, 0, 0, 0, 0, 0, 0, 0, 2357, 2358, 2363, 2353, 2301, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6060, 0, 2363, 2364, 2367, 2315, 0, 2356, 2357, 0, 0, 0, 0, 0, 0, 0, 2357, 2358, 2363, 2350, 2351, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 746, 694, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6178, 6100, 0, 2413, 2318, 2364, 2367, 2315, 2356, 2357, 0, 0, 0, 0, 0, 0, 0, 2357, 2358, 2363, 2364, 2351, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6060, 0, 0, 0, 2363, 2364, 2364, 2365, 2356, 2357, 2357, 2357, 2357, 2357, 2357, 2357, 2357, 2357, 2358, 2413, 2414, 2401, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6059, 6059, 6059, 6059, 6059, 6059, 6178, 6100, 0, 2313, 2314, 2368, 2364, 2364, 2365, 2406, 2407, 2407, 2407, 2311, 2357, 2310, 2407, 2407, 2407, 2408, 0, 2306, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6059, 6059, 6059, 6059, 6059, 6059, 6060, 0, 2313, 2368, 2364, 2364, 2364, 2364, 2367, 2315, 0, 0, 0, 2356, 2357, 2358, 0, 0, 0, 0, 0, 2356, 2357, 2357, 1650, 1650, 1650, 1650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6059, 6059, 6059, 6059, 6059, 6059, 6060, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2364, 2365, 0, 0, 0, 2356, 2357, 2358, 0, 0, 0, 0, 0, 2356, 2498, 2357, 2357, 2357, 2357, 1650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2306, 2307, 2307, 2307, 2307, 2307, 2307, 2307, 2308, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1142, 0, 0, 6180, 6059, 6059, 6059, 6059, 6059, 6060, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2317, 2415, 0, 0, 0, 2356, 2357, 2358, 0, 0, 0, 0, 0, 2406, 2407, 2407, 2311, 2547, 2357, 2357, 1650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2356, 2357, 0, 0, 0, 0, 0, 2357, 2358, 0, 1792, 1793, 1793, 1793, 1793, 1793, 1793, 1793, 1794, 0, 0, 0, 0, 6098, 6179, 6180, 6059, 6059, 6059, 6060, 0, 2363, 2364, 2364, 2364, 2364, 2364, 2365, 2306, 2307, 2308, 0, 2356, 2357, 2358, 0, 2306, 2307, 2308, 0, 0, 0, 0, 2406, 2407, 2311, 2546, 2357, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2356, 2357, 0, 0, 0, 0, 0, 2357, 2358, 0, 1842, 1843, 1843, 1843, 1843, 1843, 1843, 1843, 1844, 0, 0, 0, 2306, 2307, 2308, 6098, 6180, 6059, 6059, 6060, 0, 2413, 2414, 2318, 2364, 2364, 2364, 2365, 2356, 2357, 2358, 0, 2356, 2357, 2358, 0, 2356, 2357, 2358, 0, 0, 0, 0, 0, 0, 2406, 2311, 2357, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2356, 2357, 0, 812, 0, 0, 0, 2357, 2358, 0, 1842, 1843, 1843, 1843, 1843, 1843, 1843, 1843, 1844, 0, 0, 0, 2356, 2357, 2358, 0, 6058, 6059, 6059, 6258, 6020, 0, 0, 2363, 2364, 2364, 2317, 2415, 2406, 2407, 2408, 0, 2356, 2357, 2358, 0, 2406, 2407, 2408, 0, 0, 0, 0, 0, 0, 0, 2406, 2407, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2356, 2357, 2357, 2357, 2357, 2357, 2357, 2357, 2358, 0, 1892, 1893, 1893, 1893, 1893, 1893, 1893, 1893, 1894, 0, 0, 0, 2406, 2407, 2408, 0, 6058, 6059, 6059, 6059, 6060, 0, 0, 2413, 2318, 2364, 2365, 0, 0, 0, 0, 0, 2356, 2357, 2358, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2406, 2407, 2407, 2311, 2357, 2310, 2407, 2407, 2408, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6058, 6059, 6059, 6059, 6060, 0, 0, 0, 2413, 2414, 2415, 0, 0, 0, 0, 0, 2356, 2357, 2358, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2513, 2514, 2668, 2669, 2667, 2514, 2514, 2514, 2514, 2514, 2514, 2514, 2514, 2514, 2514, 2514, 2514, 2514, 2514, 2514, 2514, 2514, 2514, 2515, 0, 0, 6059, 6059, 6059, 0, 0, 2513, 2514, 2514, 2514, 2514, 2514, 2514, 2514, 2514, 2514, 2668, 2669, 2667, 2514, 2514, 2514, 2514, 2514, 2514, 2514, 2514, 2514, 2515, 2512, 0, 0, 0, 0, 0, 0, 0, 0, 2497, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2613, 2614, 2614, 2614, 2614, 2614, 2614, 2614, 2614, 2614, 2614, 2614, 2614, 2614, 2614, 2614, 2614, 2768, 2769, 2767, 2614, 2614, 2614, 2615, 0, 0, 6059, 6059, 6059, 0, 0, 2613, 2614, 2614, 2614, 2614, 2614, 2614, 2614, 2614, 2614, 2614, 2614, 2614, 2614, 2614, 2614, 2614, 2614, 2614, 2614, 2614, 2614, 2615, 2612, 0, 0, 0, 0, 0, 0, 0, 2547, 0, 0, 2546, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2356, 2357, 2358, 0, 0, 0, 0, 0, 6058, 6059, 6059, 6059, 6060, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2503, 2504, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2356, 2357, 2358, 0, 0, 0, 0, 6018, 6260, 6059, 6059, 6059, 6060, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2313, 2314, 2314, 2314, 2314, 2314, 2315, 0, 0, 0, 2546, 0, 2498, 2553, 2554, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2356, 2357, 2358, 0, 0, 0, 6018, 6260, 6059, 6059, 6059, 6059, 6258, 6020, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 2364, 2364, 2364, 2364, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2406, 2407, 2408, 0, 6018, 6259, 6260, 6059, 6059, 6059, 6059, 6059, 6059, 6060, 0, 0, 0, 0, 2306, 2307, 2307, 2308, 0, 0, 0, 0, 0, 1650, 1650, 1650, 1650, 1650, 0, 2363, 2364, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6018, 6019, 6019, 6019, 6019, 6019, 6260, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6060, 0, 0, 0, 0, 2356, 2546, 2357, 2360, 2307, 2307, 2307, 2308, 0, 0, 0, 0, 0, 0, 0, 2363, 2364, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6018, 6019, 6260, 6059, 6059, 0, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6258, 6020, 0, 0, 0, 2356, 2357, 2496, 2147486145, 2357, 2357, 2496, 2358, 0, 0, 0, 0, 0, 0, 0, 2413, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6058, 6059, 6059, 6059, 6059, 0, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6060, 0, 0, 0, 2356, 2357, 2357, 2357, 2357, 2357, 2497, 2358, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6018, 6019, 6260, 6059, 0, 0, 6059, 0, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6258, 6020, 0, 0, 2356, 2498, 2357, 2357, 2357, 2357, 2357, 2358, 0, 0, 0, 0, 1650, 1650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6260, 6059, 6059, 6059, 0, 0, 6059, 0, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6060, 0, 0, 2406, 2407, 2407, 2407, 2407, 2407, 2407, 2408, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6059, 6059, 6059, 6059, 0, 0, 6059, 0, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6060, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6059, 6059, 6059, 6059, 0, 0, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6059, 6059, 0, 0, 0, 0, 0, 0, 0, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6059, 6059, 6059, 6059, 6059, 6059, 0, 6059, 6059, 6059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6059, 6059, 6059, 6059, 6059, 6059, 0, 6059, 6059, 6059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 696, 794, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 792, 697, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 696, 794, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 696, 793, 793, 793, 794, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 696, 794, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 746, 694, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 792, 793, 793, 793, 793, 793, 793, 793, 793, 793, 793, 793, 793, 697, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 745, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 792, 697, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 696, 793, 793, 793, 793, 793, 793, 793, 793, 697, 0, 0, 0, 0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 792, 793, 793, 793, 793, 697, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 696, 793, 793, 793, 793, 794, 0, 0, 0, 0, 0, 0, 0, 0, 792, 793, 793, 793, 793, 793, 793, 697, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 743, 744, 0, 0, 793, 793, 794, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 792, 793, 794, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 792, 793, 697, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 696, 793, 794, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 792, 793, 793, 793, 793, 697, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 696, 793, 794, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 696, 793, 793, 793, 793, 793, 793, 794, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 792, 697, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 696, 794, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 792, 793, 793, 697, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 792, 793, 793, 793, 793, 793, 793,
        0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        793, 793, 793, 793, 793, 794, 0, 0, 0, 0, 692, 693, 693, 693, 693, 693, 694, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 746, 693, 693, 693, 693, 693, 693, 694, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 692, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 694, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 746, 693, 693, 694, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 692, 747, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 746, 693, 693, 694, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 692, 747, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 746, 693, 693, 693, 693, 693,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 746, 693, 694, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 692, 693, 693, 693, 693, 747, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 746, 694, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 692, 747, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        693, 693, 693, 693, 747, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 747, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 743, 743, 743, 743,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 692, 693, 693, 693, 693, 693, 694, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 746, 693, 693, 693, 693, 693, 693, 747, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 746, 693, 694, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 692, 747, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 746, 694, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 692, 693, 693, 693, 747, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 746, 694, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 692, 747, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 908, 909, 909, 909, 909, 909, 910, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 958, 959, 959, 959, 959, 959, 960, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1008, 1009, 1011, 1009, 1011, 1009, 1010, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 247, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 287, 402, 288, 300, 301, 302, 290, 402, 291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 327, 442, 328, 340, 341, 342, 330, 442, 331, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 367, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 286, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 287, 402, 300, 301, 302, 402, 291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 327, 442, 340, 341, 342, 442, 331, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4716, 4717, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4689, 4691, 4691, 4691, 4691, 4691, 4691, 4691, 4691, 4691, 4691, 4691, 4691, 4691, 4691, 4666, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4739, 4740, 0, 0, 0, 0, 0, 912, 913, 914, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4711, 0, 0, 0, 0, 4734, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 962, 963, 964, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 962, 963, 964, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 962, 963, 964, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4688, 0, 0, 0, 0, 0, 0, 0, 0, 287, 289, 289, 402, 289, 288, 291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 962, 963, 964, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4667, 0, 0, 0, 0, 0, 0, 0, 0, 327, 329, 329, 442, 329, 328, 331, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 962, 963, 964, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 962, 963, 964, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1012, 1013, 1014, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 692, 693, 693, 693, 693, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 405, 406, 407, 408, 407, 407, 407, 408, 409, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 445, 446, 447, 448, 447, 447, 447, 448, 449, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 485, 486, 487, 488, 487, 487, 487, 488, 489, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 525, 526, 527, 528, 527, 527, 527, 528, 529, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 565, 566, 567, 568, 567, 567, 567, 568, 569, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 411, 412, 413, 413, 413, 413, 91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 451, 452, 453, 453, 453, 453, 131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 491, 492, 493, 493, 493, 493, 171, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 531, 532, 533, 533, 533, 533, 211, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 571, 572, 573, 573, 573, 573, 251, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4670, 4671, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4693, 4694, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 411, 412, 89, 89, 89, 414, 415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 451, 452, 129, 129, 129, 454, 455, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 491, 492, 169, 169, 169, 494, 495, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 531, 532, 209, 209, 209, 534, 535, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5527, 5527, 5527, 5527, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 571, 572, 249, 249, 249, 574, 575, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5527, 5527, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5527, 5527, 0, 0, 0, 0, 5527, 5527, 5527, 5527, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
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
          id = 2024,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1344,
          y = 496,
          width = 48,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2025,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1136,
          y = 480,
          width = 208,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2026,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1120,
          y = 496,
          width = 16,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2027,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1104,
          y = 544,
          width = 48,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2028,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1024,
          y = 560,
          width = 80,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2029,
          name = "",
          type = "",
          shape = "rectangle",
          x = 928,
          y = 608,
          width = 96,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2030,
          name = "",
          type = "",
          shape = "rectangle",
          x = 816,
          y = 592,
          width = 112,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2031,
          name = "",
          type = "",
          shape = "rectangle",
          x = 800,
          y = 640,
          width = 48,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2034,
          name = "",
          type = "",
          shape = "rectangle",
          x = 480,
          y = 672,
          width = 352,
          height = 188,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2037,
          name = "",
          type = "",
          shape = "rectangle",
          x = 448,
          y = 640,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2038,
          name = "",
          type = "",
          shape = "rectangle",
          x = 464,
          y = 544,
          width = 16,
          height = 96,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2039,
          name = "",
          type = "",
          shape = "rectangle",
          x = 432,
          y = 528,
          width = 32,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2040,
          name = "",
          type = "",
          shape = "rectangle",
          x = 384,
          y = 496,
          width = 48,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2041,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 480,
          width = 112,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2042,
          name = "",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 464,
          width = 112,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2043,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 512,
          width = 48,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2044,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 544,
          width = 112,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2045,
          name = "",
          type = "",
          shape = "rectangle",
          x = -16,
          y = 560,
          width = 80,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2046,
          name = "",
          type = "",
          shape = "rectangle",
          x = -16,
          y = 432,
          width = 112,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2047,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 384,
          width = 32,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2048,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 368,
          width = 112,
          height = 44,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2050,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 320,
          width = 32,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2051,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 288,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2052,
          name = "",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 256,
          width = 80,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2053,
          name = "",
          type = "",
          shape = "rectangle",
          x = 368,
          y = 240,
          width = 128,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2054,
          name = "",
          type = "",
          shape = "rectangle",
          x = 496,
          y = 272,
          width = 112,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2055,
          name = "",
          type = "",
          shape = "rectangle",
          x = 608,
          y = 240,
          width = 48,
          height = 96,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2056,
          name = "",
          type = "",
          shape = "rectangle",
          x = 592,
          y = 176,
          width = 48,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2057,
          name = "",
          type = "",
          shape = "rectangle",
          x = 592,
          y = 128,
          width = 32,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2058,
          name = "",
          type = "",
          shape = "rectangle",
          x = 592,
          y = 80,
          width = 48,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2059,
          name = "",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 64,
          width = 64,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2060,
          name = "",
          type = "",
          shape = "rectangle",
          x = 704,
          y = 48,
          width = 16,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2061,
          name = "",
          type = "",
          shape = "rectangle",
          x = 688,
          y = 0,
          width = 48,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2062,
          name = "",
          type = "",
          shape = "rectangle",
          x = 864,
          y = 0,
          width = 48,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2063,
          name = "",
          type = "",
          shape = "rectangle",
          x = 880,
          y = 80,
          width = 208,
          height = 112,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2064,
          name = "",
          type = "",
          shape = "rectangle",
          x = 916,
          y = 192,
          width = 56,
          height = 76,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2066,
          name = "",
          type = "",
          shape = "rectangle",
          x = 996,
          y = 192,
          width = 56,
          height = 76,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2067,
          name = "",
          type = "",
          shape = "rectangle",
          x = 972,
          y = 192,
          width = 24,
          height = 52,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2069,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1088,
          y = 160,
          width = 48,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2070,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1104,
          y = 224,
          width = 80,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2071,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1184,
          y = 272,
          width = 56,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2072,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1216,
          y = 336,
          width = 80,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2073,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1296,
          y = 352,
          width = 48,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2075,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1312,
          y = 416,
          width = 48,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2076,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1360,
          y = 416,
          width = 112,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2148,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1360,
          y = 416,
          width = 128,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2127,
          name = "",
          type = "",
          shape = "rectangle",
          x = 852,
          y = 544,
          width = 8,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2128,
          name = "",
          type = "",
          shape = "rectangle",
          x = 852,
          y = 484,
          width = 8,
          height = 28,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2129,
          name = "",
          type = "",
          shape = "rectangle",
          x = 860,
          y = 484,
          width = 240,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2134,
          name = "",
          type = "",
          shape = "rectangle",
          x = 996,
          y = 492,
          width = 104,
          height = 68,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2135,
          name = "",
          type = "",
          shape = "rectangle",
          x = 996,
          y = 560,
          width = 28,
          height = 12,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2136,
          name = "",
          type = "",
          shape = "rectangle",
          x = 308,
          y = 336,
          width = 40,
          height = 60,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2138,
          name = "",
          type = "",
          shape = "rectangle",
          x = 372,
          y = 336,
          width = 40,
          height = 60,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2140,
          name = "",
          type = "",
          shape = "rectangle",
          x = 348,
          y = 336,
          width = 24,
          height = 36,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2141,
          name = "",
          type = "",
          shape = "rectangle",
          x = 469,
          y = 482,
          width = 22,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2149,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1392,
          y = 512,
          width = 96,
          height = 32,
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
      objects = {
        {
          id = 2080,
          name = "",
          type = "",
          shape = "rectangle",
          x = 736,
          y = 0,
          width = 68,
          height = 36,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2081,
          name = "",
          type = "",
          shape = "rectangle",
          x = 736,
          y = 36,
          width = 52,
          height = 68,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2082,
          name = "",
          type = "",
          shape = "rectangle",
          x = 720,
          y = 48,
          width = 16,
          height = 56,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2083,
          name = "",
          type = "",
          shape = "rectangle",
          x = 704,
          y = 104,
          width = 100,
          height = 28,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2084,
          name = "",
          type = "",
          shape = "rectangle",
          x = 704,
          y = 96,
          width = 16,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2085,
          name = "",
          type = "",
          shape = "rectangle",
          x = 684,
          y = 112,
          width = 20,
          height = 20,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2086,
          name = "",
          type = "",
          shape = "rectangle",
          x = 700,
          y = 132,
          width = 112,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2087,
          name = "",
          type = "",
          shape = "rectangle",
          x = 812,
          y = 144,
          width = 8,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2088,
          name = "",
          type = "",
          shape = "rectangle",
          x = 692,
          y = 164,
          width = 120,
          height = 20,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2089,
          name = "",
          type = "",
          shape = "rectangle",
          x = 684,
          y = 172,
          width = 8,
          height = 12,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2090,
          name = "",
          type = "",
          shape = "rectangle",
          x = 656,
          y = 184,
          width = 148,
          height = 12,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2091,
          name = "",
          type = "",
          shape = "rectangle",
          x = 648,
          y = 196,
          width = 148,
          height = 4,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2092,
          name = "",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 200,
          width = 148,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2093,
          name = "",
          type = "",
          shape = "rectangle",
          x = 656,
          y = 240,
          width = 116,
          height = 36,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2094,
          name = "",
          type = "",
          shape = "rectangle",
          x = 772,
          y = 240,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2095,
          name = "",
          type = "",
          shape = "rectangle",
          x = 656,
          y = 276,
          width = 100,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2096,
          name = "",
          type = "",
          shape = "rectangle",
          x = 756,
          y = 276,
          width = 8,
          height = 4,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2098,
          name = "",
          type = "",
          shape = "rectangle",
          x = 668,
          y = 324,
          width = 88,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2099,
          name = "",
          type = "",
          shape = "rectangle",
          x = 700,
          y = 340,
          width = 56,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2100,
          name = "",
          type = "",
          shape = "rectangle",
          x = 716,
          y = 356,
          width = 40,
          height = 60,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2101,
          name = "",
          type = "",
          shape = "rectangle",
          x = 756,
          y = 380,
          width = 16,
          height = 36,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2102,
          name = "",
          type = "",
          shape = "rectangle",
          x = 756,
          y = 376,
          width = 8,
          height = 4,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2106,
          name = "",
          type = "",
          shape = "rectangle",
          x = 716,
          y = 450.25,
          width = 56,
          height = 37.75,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2108,
          name = "",
          type = "",
          shape = "rectangle",
          x = 704,
          y = 472,
          width = 12,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2109,
          name = "",
          type = "",
          shape = "rectangle",
          x = 688,
          y = 488,
          width = 96,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2110,
          name = "",
          type = "",
          shape = "rectangle",
          x = 656,
          y = 504,
          width = 132,
          height = 28,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2111,
          name = "",
          type = "",
          shape = "rectangle",
          x = 784,
          y = 492,
          width = 4,
          height = 12,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2112,
          name = "",
          type = "",
          shape = "rectangle",
          x = 684,
          y = 492,
          width = 4,
          height = 12,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2113,
          name = "",
          type = "",
          shape = "rectangle",
          x = 620,
          y = 520,
          width = 36,
          height = 100,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2115,
          name = "",
          type = "",
          shape = "rectangle",
          x = 788,
          y = 540,
          width = 16,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2116,
          name = "",
          type = "",
          shape = "rectangle",
          x = 804,
          y = 572,
          width = 16,
          height = 20,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2117,
          name = "",
          type = "",
          shape = "rectangle",
          x = 804,
          y = 592,
          width = 12,
          height = 28,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2118,
          name = "",
          type = "",
          shape = "rectangle",
          x = 560,
          y = 520,
          width = 20,
          height = 100,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2119,
          name = "",
          type = "",
          shape = "rectangle",
          x = 524,
          y = 536,
          width = 36,
          height = 84,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2120,
          name = "",
          type = "",
          shape = "rectangle",
          x = 492,
          y = 568,
          width = 32,
          height = 52,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2121,
          name = "",
          type = "",
          shape = "rectangle",
          x = 480,
          y = 584,
          width = 12,
          height = 36,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2122,
          name = "",
          type = "",
          shape = "rectangle",
          x = 480,
          y = 620,
          width = 336,
          height = 20,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2123,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 640,
          width = 288,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2124,
          name = "",
          type = "",
          shape = "rectangle",
          x = 528,
          y = 672,
          width = 208,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2125,
          name = "",
          type = "",
          shape = "rectangle",
          x = 544,
          y = 736,
          width = 176,
          height = 96,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2146,
          name = "",
          type = "solid",
          shape = "rectangle",
          x = 580,
          y = 500,
          width = 40,
          height = 120,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2156,
          name = "",
          type = "",
          shape = "rectangle",
          x = 656,
          y = 532,
          width = 132,
          height = 88,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
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
          id = 1741,
          name = "save",
          type = "",
          shape = "point",
          x = 664,
          y = 376,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1826,
          name = "grass",
          type = "",
          shape = "point",
          x = 1376,
          y = 460,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1827,
          name = "grass",
          type = "",
          shape = "point",
          x = 1356,
          y = 480,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1828,
          name = "grass",
          type = "",
          shape = "point",
          x = 1272,
          y = 432,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1829,
          name = "grass",
          type = "",
          shape = "point",
          x = 1245.25,
          y = 462.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1830,
          name = "grass",
          type = "",
          shape = "point",
          x = 1184,
          y = 392,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1831,
          name = "grass",
          type = "",
          shape = "point",
          x = 1139.25,
          y = 463.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1832,
          name = "grass",
          type = "",
          shape = "point",
          x = 1102.25,
          y = 476,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1833,
          name = "grass",
          type = "",
          shape = "point",
          x = 1053.75,
          y = 467.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1834,
          name = "grass",
          type = "",
          shape = "point",
          x = 1005.5,
          y = 468,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1835,
          name = "grass",
          type = "",
          shape = "point",
          x = 956,
          y = 460,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1836,
          name = "grass",
          type = "",
          shape = "point",
          x = 938,
          y = 471,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1837,
          name = "grass",
          type = "",
          shape = "point",
          x = 1012.5,
          y = 409.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1838,
          name = "grass",
          type = "",
          shape = "point",
          x = 1102,
          y = 398.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1839,
          name = "grass",
          type = "",
          shape = "point",
          x = 1127.75,
          y = 337.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1840,
          name = "grass",
          type = "",
          shape = "point",
          x = 1168,
          y = 356,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1841,
          name = "grass",
          type = "",
          shape = "point",
          x = 1140.75,
          y = 410.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1842,
          name = "grass",
          type = "",
          shape = "point",
          x = 1056.5,
          y = 311,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1843,
          name = "grass",
          type = "",
          shape = "point",
          x = 1024,
          y = 327.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1844,
          name = "grass",
          type = "",
          shape = "point",
          x = 1028,
          y = 291.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1845,
          name = "grass",
          type = "",
          shape = "point",
          x = 1072,
          y = 208,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1846,
          name = "grass",
          type = "",
          shape = "point",
          x = 1072,
          y = 252,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1847,
          name = "grass",
          type = "",
          shape = "point",
          x = 1092,
          y = 272,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1848,
          name = "grass",
          type = "",
          shape = "point",
          x = 1081.5,
          y = 299.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1850,
          name = "grass",
          type = "",
          shape = "point",
          x = 904,
          y = 288,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1851,
          name = "grass",
          type = "",
          shape = "point",
          x = 936,
          y = 328,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1852,
          name = "grass",
          type = "",
          shape = "point",
          x = 948.5,
          y = 405.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1853,
          name = "grass",
          type = "",
          shape = "point",
          x = 956,
          y = 364,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1854,
          name = "grass",
          type = "",
          shape = "point",
          x = 908,
          y = 392,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1855,
          name = "grass",
          type = "",
          shape = "point",
          x = 884,
          y = 408,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1856,
          name = "grass",
          type = "",
          shape = "point",
          x = 824,
          y = 404,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1857,
          name = "grass",
          type = "",
          shape = "point",
          x = 788,
          y = 364,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1858,
          name = "grass",
          type = "",
          shape = "point",
          x = 772,
          y = 320,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1859,
          name = "grass",
          type = "",
          shape = "point",
          x = 820,
          y = 268,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1860,
          name = "grass",
          type = "",
          shape = "point",
          x = 800,
          y = 256,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1861,
          name = "grass",
          type = "",
          shape = "point",
          x = 808,
          y = 220,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1862,
          name = "grass",
          type = "",
          shape = "point",
          x = 848,
          y = 196,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1863,
          name = "grass",
          type = "",
          shape = "point",
          x = 880,
          y = 220,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1864,
          name = "grass",
          type = "",
          shape = "point",
          x = 900,
          y = 212,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1865,
          name = "grass",
          type = "",
          shape = "point",
          x = 892,
          y = 244,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1866,
          name = "grass",
          type = "",
          shape = "point",
          x = 840,
          y = 159,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1867,
          name = "grass",
          type = "",
          shape = "point",
          x = 832,
          y = 112,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1868,
          name = "grass",
          type = "",
          shape = "point",
          x = 808,
          y = 88,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1869,
          name = "grass",
          type = "",
          shape = "point",
          x = 828,
          y = 44,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1870,
          name = "grass",
          type = "",
          shape = "point",
          x = 812,
          y = 56,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1871,
          name = "grass",
          type = "",
          shape = "point",
          x = 824,
          y = 12,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1872,
          name = "grass",
          type = "",
          shape = "point",
          x = 844,
          y = 4,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1873,
          name = "grass",
          type = "",
          shape = "point",
          x = 696,
          y = 380,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1874,
          name = "grass",
          type = "",
          shape = "point",
          x = 681.5,
          y = 357.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1875,
          name = "grass",
          type = "",
          shape = "point",
          x = 640,
          y = 356,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1876,
          name = "grass",
          type = "",
          shape = "point",
          x = 612,
          y = 384,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1877,
          name = "grass",
          type = "",
          shape = "point",
          x = 652,
          y = 408,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1878,
          name = "grass",
          type = "",
          shape = "point",
          x = 686.75,
          y = 404.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1879,
          name = "grass",
          type = "",
          shape = "point",
          x = 606.5,
          y = 350.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1880,
          name = "grass",
          type = "",
          shape = "point",
          x = 432,
          y = 404,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1881,
          name = "grass",
          type = "",
          shape = "point",
          x = 432,
          y = 344,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1882,
          name = "grass",
          type = "",
          shape = "point",
          x = 448,
          y = 320,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1883,
          name = "grass",
          type = "",
          shape = "point",
          x = 330.5,
          y = 413,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1884,
          name = "grass",
          type = "",
          shape = "point",
          x = 288,
          y = 380,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1885,
          name = "grass",
          type = "",
          shape = "point",
          x = 272,
          y = 392,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1886,
          name = "grass",
          type = "",
          shape = "point",
          x = 280,
          y = 440,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1887,
          name = "grass",
          type = "",
          shape = "point",
          x = 251.5,
          y = 458.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1889,
          name = "grass",
          type = "",
          shape = "point",
          x = 342.5,
          y = 458.125,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1890,
          name = "grass",
          type = "",
          shape = "point",
          x = 356,
          y = 472,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1891,
          name = "grass",
          type = "",
          shape = "point",
          x = 380,
          y = 460,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1892,
          name = "grass",
          type = "",
          shape = "point",
          x = 456,
          y = 464,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1893,
          name = "grass",
          type = "",
          shape = "point",
          x = 448.75,
          y = 480.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1894,
          name = "grass",
          type = "",
          shape = "point",
          x = 468,
          y = 516,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1895,
          name = "grass",
          type = "",
          shape = "point",
          x = 492,
          y = 552,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1896,
          name = "grass",
          type = "",
          shape = "point",
          x = 512,
          y = 528,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1897,
          name = "grass",
          type = "",
          shape = "point",
          x = 540,
          y = 520,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1898,
          name = "grass",
          type = "",
          shape = "point",
          x = 524,
          y = 496,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1899,
          name = "grass",
          type = "",
          shape = "point",
          x = 500,
          y = 456,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1900,
          name = "grass",
          type = "",
          shape = "point",
          x = 568,
          y = 456,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1901,
          name = "grass",
          type = "",
          shape = "point",
          x = 576,
          y = 496,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1902,
          name = "grass",
          type = "",
          shape = "point",
          x = 640,
          y = 504,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1903,
          name = "grass",
          type = "",
          shape = "point",
          x = 624,
          y = 492,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1904,
          name = "grass",
          type = "",
          shape = "point",
          x = 629.75,
          y = 456,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1906,
          name = "grass",
          type = "",
          shape = "point",
          x = 991.333,
          y = 589.667,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1907,
          name = "grass",
          type = "",
          shape = "point",
          x = 880.25,
          y = 480.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1908,
          name = "grass",
          type = "",
          shape = "point",
          x = 840,
          y = 576,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1909,
          name = "grass",
          type = "",
          shape = "point",
          x = 904,
          y = 456,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1911,
          name = "grass",
          type = "",
          shape = "point",
          x = 794.75,
          y = 394.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1912,
          name = "grass",
          type = "",
          shape = "point",
          x = 810.75,
          y = 377.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1913,
          name = "grass",
          type = "",
          shape = "point",
          x = 896,
          y = 340,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1914,
          name = "grass",
          type = "",
          shape = "point",
          x = 1012,
          y = 304,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1915,
          name = "grass",
          type = "",
          shape = "point",
          x = 1072.75,
          y = 373.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1916,
          name = "grass",
          type = "",
          shape = "point",
          x = 1011.5,
          y = 368.875,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1917,
          name = "grass",
          type = "",
          shape = "point",
          x = 1440,
          y = 584,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1918,
          name = "grass",
          type = "",
          shape = "point",
          x = 1464,
          y = 528,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1919,
          name = "grass",
          type = "",
          shape = "point",
          x = 1298.33,
          y = 577,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1920,
          name = "grass",
          type = "",
          shape = "point",
          x = 1147,
          y = 530.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1921,
          name = "grass",
          type = "",
          shape = "point",
          x = 1144,
          y = 656,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1922,
          name = "grass",
          type = "",
          shape = "point",
          x = 1264,
          y = 636,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1923,
          name = "grass",
          type = "",
          shape = "point",
          x = 1024,
          y = 632,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1924,
          name = "grass",
          type = "",
          shape = "point",
          x = 1000,
          y = 648,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1925,
          name = "grass",
          type = "",
          shape = "point",
          x = 932,
          y = 632,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1926,
          name = "grass",
          type = "",
          shape = "point",
          x = 908,
          y = 644,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1927,
          name = "grass",
          type = "",
          shape = "point",
          x = 888,
          y = 616,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1928,
          name = "grass",
          type = "",
          shape = "point",
          x = 852,
          y = 716,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1929,
          name = "grass",
          type = "",
          shape = "point",
          x = 748,
          y = 764,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1930,
          name = "grass",
          type = "",
          shape = "point",
          x = 456,
          y = 608,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1931,
          name = "grass",
          type = "",
          shape = "point",
          x = 404,
          y = 520,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1932,
          name = "grass",
          type = "",
          shape = "point",
          x = 376,
          y = 540,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1933,
          name = "grass",
          type = "",
          shape = "point",
          x = 360,
          y = 520,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1934,
          name = "grass",
          type = "",
          shape = "point",
          x = 292,
          y = 504,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1936,
          name = "grass",
          type = "",
          shape = "point",
          x = 180,
          y = 516,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1937,
          name = "grass",
          type = "",
          shape = "point",
          x = 196,
          y = 560,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1938,
          name = "grass",
          type = "",
          shape = "point",
          x = 168,
          y = 568,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1939,
          name = "grass",
          type = "",
          shape = "point",
          x = 132,
          y = 596,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1940,
          name = "grass",
          type = "",
          shape = "point",
          x = 84,
          y = 588,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1941,
          name = "grass",
          type = "",
          shape = "point",
          x = 68,
          y = 440,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1942,
          name = "grass",
          type = "",
          shape = "point",
          x = 92,
          y = 400,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1943,
          name = "grass",
          type = "",
          shape = "point",
          x = 88,
          y = 380,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1944,
          name = "grass",
          type = "",
          shape = "point",
          x = 164,
          y = 380,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1945,
          name = "grass",
          type = "",
          shape = "point",
          x = 220,
          y = 352,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1946,
          name = "grass",
          type = "",
          shape = "point",
          x = 232.25,
          y = 372.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1947,
          name = "grass",
          type = "",
          shape = "point",
          x = 276.25,
          y = 289,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1948,
          name = "grass",
          type = "",
          shape = "point",
          x = 306.75,
          y = 294.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1949,
          name = "grass",
          type = "",
          shape = "point",
          x = 372,
          y = 268,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1950,
          name = "grass",
          type = "",
          shape = "point",
          x = 448,
          y = 276,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1951,
          name = "grass",
          type = "",
          shape = "point",
          x = 524,
          y = 288,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1952,
          name = "grass",
          type = "",
          shape = "point",
          x = 632,
          y = 312,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1953,
          name = "grass",
          type = "",
          shape = "point",
          x = 596,
          y = 196,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1954,
          name = "grass",
          type = "",
          shape = "point",
          x = 596,
          y = 148,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1955,
          name = "grass",
          type = "",
          shape = "point",
          x = 544,
          y = 196,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1956,
          name = "grass",
          type = "",
          shape = "point",
          x = 892,
          y = 12,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1957,
          name = "grass",
          type = "",
          shape = "point",
          x = 888,
          y = 48,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1958,
          name = "grass",
          type = "",
          shape = "point",
          x = 912,
          y = 164,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1959,
          name = "grass",
          type = "",
          shape = "point",
          x = 1024,
          y = 168,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1960,
          name = "grass",
          type = "",
          shape = "point",
          x = 1120,
          y = 120,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1961,
          name = "grass",
          type = "",
          shape = "point",
          x = 1096,
          y = 164,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1962,
          name = "grass",
          type = "",
          shape = "point",
          x = 1116,
          y = 200,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1963,
          name = "grass",
          type = "",
          shape = "point",
          x = 1236,
          y = 164,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1964,
          name = "grass",
          type = "",
          shape = "point",
          x = 1304,
          y = 216,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1965,
          name = "grass",
          type = "",
          shape = "point",
          x = 1279.67,
          y = 177.667,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1966,
          name = "grass",
          type = "",
          shape = "point",
          x = 1267,
          y = 194.667,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1967,
          name = "grass",
          type = "",
          shape = "point",
          x = 1368,
          y = 268,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1968,
          name = "grass",
          type = "",
          shape = "point",
          x = 1408,
          y = 328,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1969,
          name = "grass",
          type = "",
          shape = "point",
          x = 1408,
          y = 412,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1971,
          name = "grass",
          type = "",
          shape = "point",
          x = 1460,
          y = 656,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1972,
          name = "grass",
          type = "",
          shape = "point",
          x = 1324,
          y = 636,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1974,
          name = "grass",
          type = "",
          shape = "point",
          x = 1282.33,
          y = 521,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1975,
          name = "grass",
          type = "",
          shape = "point",
          x = 1234.33,
          y = 497,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1981,
          name = "grass",
          type = "",
          shape = "point",
          x = 260,
          y = 496,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1982,
          name = "grass",
          type = "",
          shape = "point",
          x = 1213.25,
          y = 466.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1983,
          name = "grass",
          type = "",
          shape = "point",
          x = 1185.25,
          y = 454.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1984,
          name = "grass",
          type = "",
          shape = "point",
          x = 1090.25,
          y = 460,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1985,
          name = "grass",
          type = "",
          shape = "point",
          x = 1025.5,
          y = 386.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1986,
          name = "grass",
          type = "",
          shape = "point",
          x = 1060.5,
          y = 407,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1987,
          name = "grass",
          type = "",
          shape = "point",
          x = 1096.75,
          y = 337,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1988,
          name = "grass",
          type = "",
          shape = "point",
          x = 1076,
          y = 323.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1990,
          name = "grass",
          type = "",
          shape = "point",
          x = 826.25,
          y = 128,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1991,
          name = "grass",
          type = "",
          shape = "point",
          x = 710.25,
          y = 12,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1992,
          name = "grass",
          type = "",
          shape = "point",
          x = 634.25,
          y = 80,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1993,
          name = "grass",
          type = "",
          shape = "point",
          x = 614.25,
          y = 220,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1994,
          name = "grass",
          type = "",
          shape = "point",
          x = 650.25,
          y = 164,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1995,
          name = "grass",
          type = "",
          shape = "point",
          x = 682.25,
          y = 156,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1996,
          name = "grass",
          type = "",
          shape = "point",
          x = 1048.5,
          y = 337.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2015,
          name = "grass",
          type = "",
          shape = "point",
          x = 175.5,
          y = 450.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2016,
          name = "grass",
          type = "",
          shape = "point",
          x = 143.5,
          y = 466.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2017,
          name = "grass",
          type = "",
          shape = "point",
          x = 147.5,
          y = 494.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2018,
          name = "grass",
          type = "",
          shape = "point",
          x = 115.5,
          y = 482.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2019,
          name = "grass",
          type = "",
          shape = "point",
          x = 107.5,
          y = 446.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2151,
          name = "shrub",
          type = "",
          shape = "point",
          x = 665.75,
          y = 452,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2152,
          name = "shrub",
          type = "",
          shape = "point",
          x = 689.75,
          y = 456,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2153,
          name = "shrub",
          type = "",
          shape = "point",
          x = 633.75,
          y = 400,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2154,
          name = "shrub",
          type = "",
          shape = "point",
          x = 605.75,
          y = 408,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2193,
          name = "grass",
          type = "",
          shape = "point",
          x = 960,
          y = 304,
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
          x = 928,
          y = 296,
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
      objects = {
        {
          id = 1997,
          name = "logs",
          type = "",
          shape = "point",
          x = 987.159,
          y = 505.636,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1998,
          name = "box",
          type = "",
          shape = "point",
          x = 940,
          y = 600,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1999,
          name = "box",
          type = "",
          shape = "point",
          x = 964,
          y = 600,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2001,
          name = "barrel",
          type = "",
          shape = "point",
          x = 1015.16,
          y = 600.42,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2002,
          name = "stool",
          type = "",
          shape = "point",
          x = 869.409,
          y = 504.42,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2003,
          name = "box2",
          type = "",
          shape = "point",
          x = 1285.11,
          y = 390.131,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2004,
          name = "box2",
          type = "",
          shape = "point",
          x = 1285.11,
          y = 406.131,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2005,
          name = "barrel",
          type = "",
          shape = "point",
          x = 1128,
          y = 488,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2006,
          name = "box",
          type = "",
          shape = "point",
          x = 1096,
          y = 232,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2007,
          name = "box",
          type = "",
          shape = "point",
          x = 1096,
          y = 248,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2008,
          name = "box",
          type = "",
          shape = "point",
          x = 284,
          y = 472,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["resource"] = "gold"
          }
        },
        {
          id = 2009,
          name = "box",
          type = "",
          shape = "point",
          x = 308,
          y = 472,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2010,
          name = "box",
          type = "",
          shape = "point",
          x = 332,
          y = 472,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2011,
          name = "pot",
          type = "",
          shape = "point",
          x = 488,
          y = 312,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2012,
          name = "pot",
          type = "",
          shape = "point",
          x = 472,
          y = 312,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2013,
          name = "pot",
          type = "",
          shape = "point",
          x = 456,
          y = 312,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2014,
          name = "barrel",
          type = "",
          shape = "point",
          x = 598.375,
          y = 328.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["resource"] = "gold"
          }
        },
        {
          id = 2167,
          name = "barrel",
          type = "",
          shape = "point",
          x = 581.38,
          y = 328.25,
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
      objects = {
        {
          id = 2159,
          name = "townRiver",
          type = "small",
          shape = "point",
          x = 656,
          y = 140,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["lootClass"] = "resource",
            ["lootCount"] = 3,
            ["lootId"] = "ore"
          }
        }
      }
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
      objects = {
        {
          id = 1742,
          name = "shopkeeper",
          type = "",
          shape = "point",
          x = 520,
          y = 344,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1747,
          name = "soldierEastGate",
          type = "",
          shape = "point",
          x = 1224,
          y = 416,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1748,
          name = "blacksmith",
          type = "",
          shape = "point",
          x = 936,
          y = 556,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1749,
          name = "soldierWestGate",
          type = "",
          shape = "point",
          x = 264,
          y = 416,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1766,
          name = "balloonGame",
          type = "",
          shape = "point",
          x = 501.818,
          y = 518.102,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1767,
          name = "soldierBarracks",
          type = "",
          shape = "point",
          x = 775,
          y = 359.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["defaultDir"] = -1,
            ["talkDir"] = 1
          }
        }
      }
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
      objects = {
        {
          id = 1761,
          name = "resource_diamond",
          type = "",
          shape = "point",
          x = 476,
          y = 376,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1762,
          name = "map",
          type = "",
          shape = "point",
          x = 520,
          y = 376,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1763,
          name = "lantern",
          type = "",
          shape = "point",
          x = 564,
          y = 376,
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
      objects = {
        {
          id = 1739,
          name = "dummy",
          type = "",
          shape = "point",
          x = 920,
          y = 360,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1740,
          name = "dummy",
          type = "",
          shape = "point",
          x = 1048,
          y = 360,
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
          id = 1758,
          name = "i_town",
          type = "",
          shape = "rectangle",
          x = 960,
          y = 244,
          width = 48,
          height = 12,
          rotation = 0,
          visible = true,
          properties = {
            ["destX"] = 1944,
            ["destY"] = 324
          }
        },
        {
          id = 1759,
          name = "i_town",
          type = "",
          shape = "rectangle",
          x = 336,
          y = 372,
          width = 48,
          height = 12,
          rotation = 0,
          visible = true,
          properties = {
            ["destX"] = 872,
            ["destY"] = 324
          }
        },
        {
          id = 2078,
          name = "2_forest",
          type = "right",
          shape = "rectangle",
          x = 1472,
          y = 448,
          width = 16,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["destX"] = 12,
            ["destY"] = -1
          }
        },
        {
          id = 2079,
          name = "5_swamp",
          type = "left",
          shape = "rectangle",
          x = -16,
          y = 480,
          width = 16,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {
            ["destX"] = 1456,
            ["destY"] = -1
          }
        },
        {
          id = 2143,
          name = "4_camp",
          type = "up",
          shape = "rectangle",
          x = 688,
          y = -16,
          width = 224,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["destX"] = -1,
            ["destY"] = 820
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
          id = 1732,
          name = "spear",
          type = "",
          shape = "point",
          x = 1124,
          y = 308,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1734,
          name = "spear",
          type = "",
          shape = "point",
          x = 1164,
          y = 308,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1754,
          name = "greatsword",
          type = "",
          shape = "point",
          x = 1012,
          y = 580,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["locked"] = true
          }
        },
        {
          id = 1755,
          name = "torch",
          type = "",
          shape = "point",
          x = 872,
          y = 584,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2165,
          name = "greatsword",
          type = "",
          shape = "point",
          x = 896,
          y = 520,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["locked"] = true
          }
        },
        {
          id = 2166,
          name = "greatsword",
          type = "",
          shape = "point",
          x = 1201.91,
          y = 342.364,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["locked"] = true
          }
        },
        {
          id = 2169,
          name = "boomerang",
          type = "",
          shape = "point",
          x = 472,
          y = 537.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["locked"] = true
          }
        },
        {
          id = 2170,
          name = "torch",
          type = "",
          shape = "point",
          x = 152,
          y = 504,
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
          id = 1735,
          name = "blossom",
          type = "",
          shape = "point",
          x = 275.278,
          y = 361.161,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1736,
          name = "blossom",
          type = "",
          shape = "point",
          x = 420.977,
          y = 311.375,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1737,
          name = "blossom",
          type = "",
          shape = "point",
          x = 404.977,
          y = 481.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1738,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 112,
          y = 564,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1743,
          name = "banner2",
          type = "right",
          shape = "point",
          x = 1319.09,
          y = 388,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1744,
          name = "banner2",
          type = "right",
          shape = "point",
          x = 1319.09,
          y = 500,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1745,
          name = "banner2",
          type = "left",
          shape = "point",
          x = 192,
          y = 384,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1746,
          name = "banner2",
          type = "left",
          shape = "point",
          x = 192,
          y = 484,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1753,
          name = "kiln",
          type = "",
          shape = "point",
          x = 963.284,
          y = 506.091,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1756,
          name = "raft",
          type = "",
          shape = "point",
          x = 560,
          y = 564,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1757,
          name = "raft",
          type = "",
          shape = "point",
          x = 560,
          y = 596,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1770,
          name = "ship",
          type = "left",
          shape = "point",
          x = 668,
          y = 592,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1780,
          name = "big",
          type = "",
          shape = "point",
          x = 776,
          y = 724,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1781,
          name = "big",
          type = "",
          shape = "point",
          x = 1060,
          y = 716,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1782,
          name = "big",
          type = "",
          shape = "point",
          x = 1419.45,
          y = 649.818,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1783,
          name = "big",
          type = "",
          shape = "point",
          x = 1444.91,
          y = 412.364,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1784,
          name = "big",
          type = "",
          shape = "point",
          x = 1216,
          y = 300,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1785,
          name = "big",
          type = "",
          shape = "point",
          x = 920,
          y = 140,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1786,
          name = "big",
          type = "fake",
          shape = "point",
          x = 558.667,
          y = 284.333,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1787,
          name = "big",
          type = "",
          shape = "point",
          x = 332,
          y = 284,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1788,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 1172,
          y = 512,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1789,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 1252,
          y = 352,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1790,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 1147.5,
          y = 267.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1791,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 1060,
          y = 160,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1792,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 672,
          y = 76,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1793,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 619,
          y = 278.333,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1794,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 482,
          y = 258.333,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1795,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 240.917,
          y = 315.833,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1796,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 332.208,
          y = 511.833,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1797,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 292,
          y = 556,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1798,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 445.667,
          y = 577,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1799,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 972.667,
          y = 630.333,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1800,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 854.667,
          y = 628,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1801,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 1061.5,
          y = 617.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1802,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 1140,
          y = 584,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1803,
          name = "big",
          type = "fake",
          shape = "point",
          x = 1212,
          y = 656,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1804,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 1356,
          y = 564,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1805,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 1464,
          y = 572,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1806,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 1369,
          y = 399.333,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1807,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 1342,
          y = 353.061,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1808,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 1432,
          y = 184,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1809,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 1420,
          y = 260,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1810,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 1364,
          y = 208,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1811,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 1285.5,
          y = 284,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1812,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 1160,
          y = 180,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1813,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 976,
          y = 156,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1814,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 1028,
          y = 88,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1815,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 964,
          y = 44,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1816,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 596,
          y = 104,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1817,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 464,
          y = 204,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1818,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 376,
          y = 224,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1819,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 408,
          y = 160,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1820,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 284,
          y = 212,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1821,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 194.333,
          y = 261.333,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1822,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 120,
          y = 384,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1823,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 104,
          y = 300,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1824,
          name = "big",
          type = "",
          shape = "point",
          x = 373.667,
          y = 652.667,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1825,
          name = "big",
          type = "",
          shape = "point",
          x = 217.667,
          y = 642.667,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1973,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 1300,
          y = 552,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1978,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 399.333,
          y = 276,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1979,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 176,
          y = 328,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1980,
          name = "blossom",
          type = "fake",
          shape = "point",
          x = 232.333,
          y = 492.667,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2147,
          name = "ship",
          type = "left",
          shape = "point",
          x = 668,
          y = 544,
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
      objects = {
        {
          id = 1751,
          name = "chimneySource",
          type = "",
          shape = "point",
          x = 930.969,
          y = 201.966,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1752,
          name = "chimneySource",
          type = "",
          shape = "point",
          x = 1085.06,
          y = 505.935,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
