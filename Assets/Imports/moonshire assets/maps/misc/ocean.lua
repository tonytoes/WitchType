return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.10.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 52,
  height = 36,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 29,
  nextobjectid = 2180,
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
    ["weather"] = "none"
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
      image = "../_tilesets/houses.png",
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
      image = "../_tilesets/terrain.png",
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
      image = "../_tilesets/objects.png",
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
      image = "../_tilesets/water2.png",
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
      image = "../_tilesets/overworld.png",
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
      width = 52,
      height = 36,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 52,
      height = 36,
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
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 699, 699, 699, 699, 699, 699, 699, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 699, 699, 699, 699, 699, 699, 699, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 699, 699, 699, 699, 699, 699, 699, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 699, 699, 699, 699, 699, 699, 699, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 699, 699, 699, 699, 699, 699, 699, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 699, 699, 699, 699, 699, 699, 699, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059,
        6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059, 6059
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 52,
      height = 36,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6178, 6179, 6179, 6179, 6179, 6179, 6179, 6179, 6180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6218, 0, 0, 0, 0, 0, 0, 0, 6220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6218, 0, 0, 0, 0, 0, 0, 0, 6220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6218, 0, 0, 0, 0, 0, 0, 0, 6220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6218, 0, 0, 0, 0, 0, 0, 0, 6220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6218, 0, 0, 0, 0, 0, 0, 0, 6220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6218, 0, 0, 0, 0, 0, 0, 0, 6220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6258, 6259, 6259, 6259, 6259, 6259, 6259, 6259, 6260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 52,
      height = 36,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 52,
      height = 36,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 52,
      height = 36,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 52,
      height = 36,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 52,
      height = 36,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
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
          id = 2174,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = -32,
          width = 832,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2176,
          name = "",
          type = "",
          shape = "rectangle",
          x = 832,
          y = -32,
          width = 36,
          height = 644,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2177,
          name = "",
          type = "",
          shape = "rectangle",
          x = -36,
          y = -32,
          width = 36,
          height = 644,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2178,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 576,
          width = 832,
          height = 36,
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
          id = 2169,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 352,
          height = 576,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2170,
          name = "",
          type = "",
          shape = "rectangle",
          x = 496,
          y = 0,
          width = 336,
          height = 576,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2171,
          name = "",
          type = "",
          shape = "rectangle",
          x = 352,
          y = 332,
          width = 144,
          height = 244,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2173,
          name = "",
          type = "",
          shape = "rectangle",
          x = 352,
          y = 0,
          width = 144,
          height = 208,
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
      objects = {}
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
      objects = {}
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
      objects = {}
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
      objects = {}
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
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 28,
      name = "Pins",
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
          id = 2179,
          name = "balloonCenter",
          type = "",
          shape = "point",
          x = 424,
          y = 272,
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
