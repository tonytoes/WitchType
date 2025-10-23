return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.10.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 80,
  height = 52,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 27,
  nextobjectid = 2653,
  properties = {
    ["ambience"] = "wind",
    ["background"] = "fog",
    ["dark"] = 25,
    ["darkType"] = "parallax",
    ["defaultX"] = 290,
    ["defaultY"] = 290,
    ["music"] = "forest",
    ["shader"] = "saturation",
    ["shaderVal"] = 0.7,
    ["weather"] = "none"
  },
  tilesets = {
    {
      name = "overworld",
      firstgid = 1,
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
    },
    {
      name = "water",
      firstgid = 737,
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
      name = "terrain",
      firstgid = 2337,
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
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 80,
      height = 52,
      id = 25,
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
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395,
        2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395, 2395
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 80,
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
        4060, 4060, 4013, 4111, 0, 0, 0, 0, 0, 0, 0, 4059, 4060, 4060, 4060, 4060, 4060, 4061, 0, 0, 4059, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4063, 4011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        4060, 4013, 4111, 0, 0, 0, 0, 0, 0, 0, 0, 4059, 4060, 4060, 4060, 4060, 4060, 4061, 0, 0, 4059, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4059, 4060, 4060, 4013, 4014, 4060, 4061, 0, 4009, 4064, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4013, 4110, 4111, 0, 4009, 4010, 4011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4059, 4013, 4110, 4111, 4059, 4013, 4111, 0, 4059, 4060, 4060, 4060, 4060, 4060, 4060, 4013, 4110, 4111, 0, 4009, 4010, 4064, 4060, 4063, 4010, 4011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4111, 0, 0, 4109, 4061, 0, 4009, 4064, 4060, 4060, 4060, 4060, 4060, 4060, 4063, 4011, 0, 0, 4059, 4060, 4060, 4060, 4060, 4060, 4061, 4009, 4010, 4011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        4060, 4063, 4011, 0, 0, 0, 0, 0, 4009, 4010, 4010, 4011, 0, 0, 0, 0, 4061, 0, 4059, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4061, 0, 0, 4059, 4060, 4060, 4060, 4060, 4060, 4061, 4059, 4060, 4063, 4011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        4060, 4060, 4061, 0, 0, 0, 0, 4009, 4064, 4060, 4060, 4063, 4011, 0, 0, 0, 4061, 0, 4109, 4110, 4110, 4014, 4060, 4060, 4060, 4060, 4060, 4061, 0, 0, 4109, 4014, 4060, 4060, 4060, 4060, 4061, 4059, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        4060, 4060, 4061, 0, 0, 0, 0, 4059, 4060, 4060, 4060, 4060, 4061, 0, 0, 4110, 0, 0, 0, 0, 0, 4109, 4110, 4110, 4014, 4060, 4013, 4111, 0, 0, 0, 4059, 4060, 4060, 4060, 4013, 4111, 4059, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        4060, 4060, 4063, 4010, 4011, 0, 0, 4059, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4109, 4110, 4111, 0, 0, 0, 0, 4059, 4060, 4013, 4110, 4111, 0, 4109, 4014, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        4060, 4060, 4060, 4060, 4061, 0, 0, 4059, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 4009, 4010, 4010, 4010, 4011, 0, 0, 0, 0, 0, 0, 4109, 4110, 4111, 0, 0, 0, 0, 4059, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        4060, 4060, 4060, 4013, 4111, 0, 0, 4059, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 4059, 4060, 4060, 4060, 4061, 4009, 4010, 4011, 0, 0, 0, 0, 0, 0, 4009, 4010, 4011, 0, 4109, 4110, 4111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        4060, 4060, 4060, 4061, 0, 0, 0, 4109, 4014, 4060, 4060, 4013, 4111, 0, 0, 0, 0, 0, 0, 0, 4109, 4110, 4110, 4110, 4111, 4059, 4060, 4061, 0, 0, 4009, 4010, 4011, 0, 4059, 4060, 4063, 4010, 4011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        4060, 4060, 4060, 4063, 4011, 0, 0, 0, 4109, 4110, 4110, 4111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4059, 4060, 4061, 0, 0, 4059, 4060, 4061, 0, 4059, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        4060, 4060, 4060, 4060, 4063, 4011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4059, 4060, 4061, 0, 0, 4109, 4110, 4111, 0, 4059, 4060, 4060, 4060, 4063, 4011, 0, 0, 4009, 4010, 4010, 4011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        4110, 4110, 4014, 4060, 4060, 4063, 4011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4009, 4010, 4010, 4010, 4011, 0, 4059, 4060, 4061, 0, 0, 0, 0, 0, 0, 4109, 4110, 4110, 4014, 4060, 4061, 0, 0, 4059, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 4009, 4064, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4009, 4064, 4060, 4060, 4060, 4061, 0, 4059, 4060, 4063, 4010, 4010, 4010, 4010, 4011, 0, 0, 0, 0, 4059, 4060, 4061, 0, 0, 4059, 4060, 4060, 4063, 4011, 4009, 4010, 4011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 4059, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4059, 4060, 4060, 0, 0, 0, 0, 0, 0, 4014, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 4059, 4060, 4061, 0, 0, 4059, 4060, 4060, 4060, 4061, 4059, 4060, 4061, 4009, 4010, 4010, 4011, 0, 0, 0, 4009, 4010, 4010, 4010, 4011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 4109, 4014, 4060, 4060, 4060, 4063, 4011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4009, 4010, 4010, 4010, 4011, 0, 4109, 4110, 4110, 4014, 4060, 4061, 0, 4009, 4010, 4010, 4064, 4060, 4061, 0, 0, 4059, 4060, 4060, 4060, 4061, 4109, 4110, 4111, 4059, 4060, 4060, 4061, 4009, 4010, 0, 4059, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 4014, 4060, 4060, 4060, 4061, 0, 0, 0, 4009, 4010, 4010, 4011, 0, 0, 4009, 4010, 4010, 4010, 4064, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 0, 4110, 4111, 0, 4059, 4060, 4060, 4060, 4060, 4063, 4010, 4010, 4064, 4060, 4060, 4060, 4061, 4009, 4010, 4010, 4064, 4060, 4060, 4061, 4059, 4060, 0, 4109, 4014, 4060, 4060, 4063, 4011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 4110, 4014, 4060, 4061, 0, 0, 0, 4059, 4060, 4060, 4063, 4010, 4010, 4064, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 0, 4009, 4010, 4011, 4109, 4014, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4013, 4110, 4111, 4059, 4060, 4060, 4060, 4060, 4060, 4061, 4059, 4060, 4061, 0, 4059, 4060, 4060, 4060, 4063, 4011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 4009, 4010, 4064, 4060, 4063, 4011, 0, 0, 4059, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4013, 4111, 0, 4009, 4010, 4011, 0, 4059, 4060, 4063, 4011, 4059, 4060, 4060, 4060, 4060, 4013, 4110, 4014, 4060, 4061, 0, 0, 4109, 4014, 4060, 4060, 4060, 4060, 4061, 4059, 4060, 4063, 0, 4109, 4014, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 4009, 4064, 4060, 4060, 4060, 4060, 4061, 0, 0, 4059, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4061, 0, 0, 4059, 4060, 4063, 4010, 4064, 4060, 4060, 4061, 4059, 4110, 4110, 4014, 4060, 4061, 0, 4059, 4060, 4061, 0, 0, 0, 4109, 4014, 4060, 4060, 4060, 4061, 4109, 4014, 4060, 0, 0, 4059, 4060, 4060, 4060, 4063, 4011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 4009, 4064, 4060, 4060, 4060, 4060, 4013, 4111, 0, 0, 4109, 4014, 4060, 4060, 4013, 4110, 4110, 4110, 4014, 4060, 4060, 4013, 4110, 4111, 0, 0, 4059, 4060, 4060, 4060, 4060, 4060, 4060, 4061, 4059, 0, 0, 4059, 4060, 4063, 4010, 4064, 4060, 4063, 4010, 4011, 0, 0, 4109, 4110, 4110, 4110, 4111, 0, 4109, 4110, 0, 4009, 4064, 4060, 4060, 4060, 4060, 4063, 4011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 4059, 4060, 4060, 4013, 4110, 4110, 4111, 0, 0, 0, 0, 4059, 4060, 4013, 4111, 0, 0, 0, 4109, 4110, 4110, 4111, 0, 0, 0, 0, 4109, 4014, 4060, 4060, 4060, 4060, 4013, 4111, 4109, 0, 0, 4059, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 4009, 4010, 4010, 4010, 4010, 4011, 0, 4009, 4064, 4060, 4060, 4060, 4060, 4060, 4060, 4063, 4010, 4011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 4109, 4110, 4110, 4111, 0, 0, 0, 0, 0, 0, 0, 4109, 4110, 4111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4109, 4014, 4060, 4060, 4060, 4061, 0, 0, 4109, 4110, 4110, 4110, 4110, 4014, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 4059, 4060, 4060, 4060, 4060, 4061, 0, 4059, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4063, 4010, 4011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4009, 4010, 4010, 4011, 4192, 4192, 4192, 4192, 4192, 4192, 4192, 4192, 4192, 4192, 0, 0, 0, 4109, 4110, 4110, 4110, 4111, 0, 0, 4009, 4010, 4010, 4011, 0, 4059, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 4059, 4060, 4013, 4110, 4110, 4111, 0, 4059, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 4009, 4010, 4010, 4064, 4060, 4060, 4061, 4192, 4192, 4192, 4192, 4192, 4192, 4192, 4192, 4192, 4009, 4010, 4010, 4011, 0, 0, 0, 0, 0, 4009, 4010, 4064, 4060, 4060, 4063, 4011, 0, 4110, 4110, 4014, 4060, 4061, 0, 0, 0, 4059, 4060, 4061, 0, 0, 0, 0, 4109, 4014, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4063, 4011, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        4060, 4060, 4013, 4111, 0, 0, 0, 0, 0, 4059, 4060, 4060, 4060, 4060, 4013, 4111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4059, 4060, 4060, 4063, 0, 0, 0, 4009, 4010, 4064, 4060, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 4109, 4110, 4111, 0, 0, 0, 4109, 4110, 4111, 0, 0, 0, 0, 0, 4109, 4014, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 4109, 4110, 4110, 4110, 4110, 4111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4059, 4060, 4060, 4060, 4063, 4011, 0, 4059, 4060, 4060, 4060, 4060, 4060, 4060, 4013, 4111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4109, 4110, 4110, 4014, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        4060, 4060, 4061, 0, 0, 0, 4009, 4010, 4010, 4011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4009, 4010, 4011, 4109, 4014, 4060, 4060, 4060, 4061, 0, 4059, 4060, 4013, 4110, 4110, 4110, 4110, 4111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4009, 4010, 4010, 4010, 4010, 4011, 0, 0, 0, 4059, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        4060, 4060, 4061, 0, 4009, 4010, 4064, 4060, 4060, 4063, 4011, 0, 0, 4192, 4192, 4192, 0, 0, 0, 0, 4009, 4010, 4064, 4060, 4063, 4011, 4059, 4060, 4060, 4060, 4061, 0, 4109, 4110, 4111, 0, 0, 0, 0, 4010, 4010, 4010, 4010, 4010, 4011, 0, 0, 0, 0, 0, 0, 0, 4009, 4064, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 4059, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        4060, 4060, 4063, 4011, 4059, 4060, 4060, 4060, 4060, 4060, 4061, 0, 0, 4192, 4192, 0, 0, 0, 0, 0, 4059, 4060, 4060, 4060, 4060, 4061, 4109, 4014, 4060, 4060, 4063, 0, 0, 0, 0, 0, 0, 0, 4059, 4060, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 4009, 4064, 4060, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 4109, 4110, 4014, 4060, 4060, 4060, 4060, 4013, 4111, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        4110, 4110, 4110, 4111, 4109, 4110, 4110, 4110, 0, 0, 0, 0, 0, 0, 4192, 0, 0, 0, 0, 0, 4109, 4110, 4110, 4110, 4110, 4111, 0, 4109, 4014, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 4109, 4110, 4110, 4110, 4110, 4110, 4111, 4002, 4003, 4003, 4004, 0, 0, 4059, 4060, 4060, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 0, 4059, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4009, 4010, 4011, 0, 0, 0, 0, 0, 0, 4192, 0, 0, 0, 4009, 4010, 4010, 4010, 4011, 4109, 4110, 4110, 4111, 0, 0, 0, 0, 0, 0, 0, 0, 4002, 4003, 4003, 4003, 4003, 4057, 4199, 4200, 4054, 0, 0, 4059, 4060, 4060, 4060, 4060, 4060, 4013, 4111, 0, 0, 0, 0, 0, 4109, 4110, 4110, 4110, 4110, 4111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 4009, 4064, 4060, 4061, 0, 0, 0, 4192, 4192, 4192, 0, 0, 0, 0, 4059, 4060, 4060, 4060, 4063, 4011, 0, 0, 0, 0, 0, 0, 4002, 4003, 4003, 4003, 4003, 4057, 4242, 4053, 4053, 4053, 4053, 4249, 4250, 4054, 0, 0, 4109, 4014, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 4009, 4010, 4011, 0, 4009, 4010, 4010, 4011, 4059, 4060, 4060, 4063, 4011, 0, 0, 0, 0, 4192, 0, 0, 0, 0, 4109, 4110, 4014, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 4052, 4197, 4198, 4053, 4053, 4053, 4053, 4053, 4053, 4193, 4053, 4053, 4053, 4054, 0, 0, 0, 4059, 4060, 4060, 4013, 4110, 4111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        4009, 4064, 4060, 4063, 4010, 4064, 4060, 4060, 4061, 4109, 4014, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4109, 4110, 4110, 4111, 0, 0, 0, 0, 0, 0, 4052, 4247, 4248, 4053, 4053, 4243, 4053, 4053, 4195, 4053, 4053, 4053, 4006, 4104, 0, 0, 0, 4059, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        4064, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4061, 0, 4059, 4060, 4060, 4063, 4010, 4010, 4010, 4010, 4011, 0, 0, 0, 0, 0, 0, 4009, 4010, 4010, 4010, 4011, 0, 4009, 4010, 4010, 4011, 4102, 4103, 4007, 4193, 4053, 4053, 4053, 4053, 4053, 4053, 4053, 4243, 4054, 0, 0, 0, 0, 4109, 4014, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        4060, 4060, 4060, 4060, 4060, 4060, 4060, 4013, 4111, 4009, 4064, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 4009, 4010, 4010, 4064, 4060, 4060, 4060, 4061, 0, 4059, 4060, 4060, 4063, 4010, 4011, 4102, 4007, 4053, 4053, 2147487848, 2147487847, 4053, 4006, 4103, 4103, 4104, 0, 0, 0, 0, 0, 4109, 4110, 4111, 0, 0, 4009, 4010, 4010, 4010, 4011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        4060, 4060, 4060, 4060, 4060, 4060, 4060, 4061, 4009, 4064, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4061, 0, 4009, 4010, 4064, 4060, 4060, 4060, 4060, 4060, 4013, 4111, 0, 0, 4060, 4060, 4060, 4060, 4061, 0, 4102, 4103, 4007, 2147487898, 2147487897, 4006, 4104, 0, 0, 4009, 4010, 4011, 0, 0, 0, 0, 0, 0, 0, 4009, 4064, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        4060, 4060, 4060, 4060, 4060, 4060, 4060, 4061, 4059, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4063, 4010, 4064, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 4110, 4014, 4060, 4060, 4063, 4011, 0, 0, 4102, 4103, 4103, 4104, 0, 4009, 4010, 4064, 4060, 4061, 0, 0, 0, 0, 0, 0, 4009, 4064, 4060, 4060, 4060, 4060, 4063, 4010, 4011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        4060, 4060, 4060, 4060, 4060, 4060, 4013, 4111, 4059, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4063, 4010, 4011, 0, 0, 4109, 4110, 4014, 4060, 0, 0, 0, 0, 0, 0, 0, 0, 4059, 4060, 4060, 4013, 4111, 0, 0, 0, 0, 0, 0, 4059, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        4060, 4013, 4014, 4060, 4013, 4110, 4111, 0, 4109, 4110, 4110, 4014, 4060, 4060, 4060, 4060, 4013, 4014, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 0, 4109, 4110, 4111, 0, 0, 0, 0, 0, 0, 4109, 4110, 4110, 4111, 0, 0, 0, 0, 0, 0, 4009, 4064, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        4110, 4111, 4109, 4110, 4111, 0, 0, 0, 0, 0, 0, 4059, 4060, 4060, 4060, 4013, 4111, 4109, 4110, 4014, 4060, 4060, 4060, 4013, 4110, 4014, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 4009, 4010, 4011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4009, 4010, 4064, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4063, 4011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4059, 4060, 4013, 4110, 4111, 0, 0, 0, 4109, 4110, 4110, 4110, 4111, 0, 4109, 4014, 4060, 4060, 4060, 4063, 4011, 4009, 4010, 4010, 4064, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4059, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4109, 4110, 4111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4109, 4014, 4060, 4060, 4060, 4063, 4064, 4060, 4060, 4060, 4060, 4063, 4010, 4011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4009, 4010, 4010, 4064, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4059, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4063, 4011, 0, 0, 0, 0, 0, 0, 0, 0, 4009, 4064, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4063, 4011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4109, 4014, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 4009, 4064, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4109, 4110, 4014, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 4059, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4063, 4011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4059, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4013, 4111, 0, 0, 0, 0, 0, 0, 0, 4059, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4063, 4010, 4011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4109, 4110, 4014, 4060, 4060, 4060, 4060, 4060, 4013, 4111, 0, 0, 0, 0, 0, 0, 0, 0, 4059, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4063, 4011, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4109, 4110, 4110, 4110, 4110, 4110, 4111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4109, 4014, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4060, 4061, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 80,
      height = 52,
      id = 15,
      name = "Environment",
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 80,
      height = 52,
      id = 20,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1419, 1419, 1419, 1419, 1419, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1419, 1419, 1419, 1419, 1419, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1419, 1419, 1419, 1419, 1419, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1419, 1419, 1419, 1419, 1419, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1419, 1419, 1419, 1419, 1419, 0, 0, 0, 0, 0, 0, 0, 3166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 3216, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 0, 3166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 3166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 3166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1459, 1459, 1459, 1459, 1540, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1458, 1459, 1459, 1459, 1459, 1540, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1458, 1459, 1459, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419, 1419,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1419, 1419, 1419, 1419, 1419, 1419,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4002, 4003, 4003, 4003, 4003, 4003, 4003, 4003, 4004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4052, 4053, 2147487894, 2147487893, 4053, 4053, 4193, 4053, 4054, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4102, 4103, 4103, 4103, 4103, 4103, 4103, 4103, 4104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4002, 4003, 4003, 4004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4002, 4057, 4195, 4053, 4056, 4003, 4004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4052, 4053, 0, 4053, 4053, 2147487890, 4056, 4004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4052, 4053, 4053, 4053, 4053, 4054, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4052, 4243, 4053, 4053, 4193, 4056, 4003, 4004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4102, 4103, 4103, 4103, 4007, 4053, 4053, 4056, 4004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4102, 4103, 4007, 4053, 4054, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4102, 4103, 4104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 80,
      height = 52,
      id = 21,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2440, 0, 0, 0, 0, 0, 2438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2440, 0, 0, 0, 0, 1116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2440, 0, 0, 0, 0, 0, 2438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2440, 0, 0, 0, 0, 1116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2440, 0, 0, 0, 0, 0, 2438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2440, 0, 0, 0, 0, 1119, 3107, 3107, 3107, 3107, 3107, 3107, 3107, 3020, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2440, 0, 0, 0, 0, 2388, 2443, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2440, 0, 0, 0, 0, 1122, 3157, 3157, 3157, 3157, 3157, 3157, 3157, 3070, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 2392, 2489, 2489, 2489, 2490, 0, 0, 0, 0, 2438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2440, 0, 0, 0, 0, 1122, 3157, 3157, 3157, 3157, 3157, 3157, 3157, 3056, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 2392, 2490, 0, 0, 0, 0, 0, 0, 0, 0, 2438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2442, 2390, 0, 0, 0, 1125, 1126, 1126, 1126, 1126, 1126, 1126, 1126, 3056, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 2440, 0, 0, 0, 0, 0, 0, 0, 0, 2388, 2443, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1119, 3107, 3020, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 2440, 0, 0, 0, 0, 0, 0, 0, 0, 2438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1122, 3157, 3070, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 2440, 0, 0, 0, 0, 0, 0, 0, 0, 2438, 0, 2439, 2439, 2439, 2439, 2439, 2439, 2439, 2439, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1122, 3157, 3106, 3107, 3107, 3107, 3107, 3107, 3107, 3107, 3107, 3107, 3107, 3107, 3020, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 2440, 0, 0, 0, 0, 0, 0, 0, 0, 2488, 2489, 2489, 2489, 2489, 2489, 2489, 2489, 2393, 2439, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1125, 1126, 3156, 3157, 3157, 3157, 3157, 3157, 3157, 3157, 3157, 3157, 3157, 3157, 3070, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 2440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2488, 2489, 2393, 2439, 2392, 2489, 2489, 2489, 2489, 2489, 2489, 2489, 2489, 2393, 0, 0, 0, 0, 0, 2442, 2389, 2389, 2390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1122, 3157, 3157, 3157, 3157, 3157, 3157, 3157, 3157, 3157, 3157, 3157, 3106, 3107, 3107, 3107, 3107, 3107, 3107, 3107, 3107, 3107, 3107, 3107,
        0, 0, 0, 0, 0, 0, 2440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2488, 2489, 2490, 0, 0, 0, 0, 0, 0, 0, 0, 2488, 2489, 2393, 0, 0, 0, 0, 0, 0, 2440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1125, 1126, 1126, 1126, 1126, 1126, 1126, 1126, 1126, 1126, 1126, 1126, 3156, 3157, 3157, 3157, 3157, 3157, 3157, 3157, 3157, 3157, 3157, 3157,
        0, 0, 0, 0, 0, 0, 2442, 2390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2438, 0, 0, 0, 0, 0, 0, 2440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1122, 3157, 3157, 3157, 3157, 3157, 3157, 3157, 3157, 3157, 3157, 3157,
        0, 0, 0, 0, 0, 0, 0, 2442, 2389, 2389, 2389, 2389, 2390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2488, 2489, 2489, 2489, 2489, 2489, 2489, 2490, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1125, 1126, 1126, 1126, 1126, 1126, 1126, 1126, 1126, 1126, 1126, 1126,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2442, 2390, 0, 0, 0, 0, 0, 0, 0, 2388, 2389, 2389, 2389, 2389, 2389, 2390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2388, 2389, 2389, 2389, 2389, 2389, 2389, 2389, 2390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2442, 2389, 2389, 2389, 2389, 2389, 2389, 2389, 2443, 0, 0, 0, 0, 0, 2440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2438, 0, 0, 0, 0, 0, 0, 0, 2440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2442, 2389, 2389, 2389, 2390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2438, 0, 0, 0, 0, 0, 0, 0, 2442, 2389, 2390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2442, 2389, 2389, 2389, 2390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2442, 2389, 2389, 2389, 2389, 2389, 2389, 2389, 2390, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2439, 2440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2488, 2393, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2442, 2389, 2389, 2389, 2389, 2389, 2389,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2439, 2440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2442, 2390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2388, 2443, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2439, 2439, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2442, 2389, 2389, 2389, 2389, 2390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        2439, 2439, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2439, 2439, 2439, 2439, 2392, 2489, 2489, 2489, 2489, 2489, 2489, 2489, 2489, 2489, 2393, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2439, 2442, 2390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2388, 2389, 2389, 2443, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 2439, 2439, 2439, 2439, 2392, 2489, 2489, 2489, 2490, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2488, 2489, 2489, 2393, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2442, 2389, 2390, 0, 0, 0, 0, 0, 0, 0, 2438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        2489, 2489, 2489, 2489, 2489, 2489, 2489, 2489, 2489, 2489, 2489, 2490, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2439, 2439, 2440, 0, 0, 0, 0, 2388, 2389, 2389, 2443, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2488, 2489, 2393, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2440, 0, 0, 0, 0, 2438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2440, 0, 0, 0, 0, 2438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2438, 0, 0, 0, 0, 0, 0, 0, 0, 2392, 2489, 2489, 2489, 2489, 2490, 0, 0, 0, 0, 2488, 286, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 2388, 2389, 2389, 2389, 2389, 2389, 2390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2438, 0, 0, 0, 0, 2392, 2489, 2489, 2489, 2490, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        2389, 2389, 2389, 2389, 2389, 2389, 2389, 2389, 2443, 0, 0, 0, 0, 0, 2440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2488, 2489, 2489, 2489, 2489, 2490, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        2439, 0, 0, 2439, 2439, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2442, 2389, 2389, 2389, 2390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        2439, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2439, 2439, 2439, 2439, 2439, 2442, 2389, 2389, 2389, 2389, 2389, 2389, 2389, 2389, 2390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2439, 2439, 2439, 2439, 2439, 2439, 2439, 2439, 2439, 2439, 2442, 2389, 2389, 2389, 2390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2442, 2390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2439, 2440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2388, 309, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2442, 2390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2439, 2442, 2389, 2389, 2389, 2389, 2389, 2390, 0, 0, 0, 0, 0, 0, 0, 0, 2388, 309, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2439, 2439, 2439, 2439, 2439, 2439, 2442, 2389, 2389, 2389, 2389, 2389, 2389, 2389, 2389, 2443, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2439, 2439, 2439, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 80,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 80,
      height = 52,
      id = 16,
      name = "Platform",
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 80,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 80,
      height = 52,
      id = 4,
      name = "Test",
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 80,
      height = 52,
      id = 23,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
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
          id = 2008,
          name = "blockadeVine",
          type = "blockade",
          shape = "rectangle",
          x = 720,
          y = 476,
          width = 64,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["delay"] = true
          }
        },
        {
          id = 2024,
          name = "blockadeVine",
          type = "blockade",
          shape = "rectangle",
          x = 492,
          y = 528,
          width = 16,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {
            ["delay"] = true
          }
        },
        {
          id = 2551,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = -16,
          width = 64,
          height = 96,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2556,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 208,
          width = 80,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2557,
          name = "",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 240,
          width = 16,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2558,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 256,
          width = 112,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2559,
          name = "",
          type = "",
          shape = "rectangle",
          x = 336,
          y = 240,
          width = 112,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2560,
          name = "",
          type = "",
          shape = "rectangle",
          x = 448,
          y = 272,
          width = 64,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2561,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 288,
          width = 64,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2562,
          name = "",
          type = "",
          shape = "rectangle",
          x = 560,
          y = 368,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2563,
          name = "",
          type = "",
          shape = "rectangle",
          x = 592,
          y = 384,
          width = 80,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2564,
          name = "",
          type = "",
          shape = "rectangle",
          x = 672,
          y = 400,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2565,
          name = "",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 416,
          width = 80,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2566,
          name = "",
          type = "",
          shape = "rectangle",
          x = 576,
          y = 464,
          width = 64,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2567,
          name = "",
          type = "",
          shape = "rectangle",
          x = 480,
          y = 464,
          width = 96,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2568,
          name = "",
          type = "",
          shape = "rectangle",
          x = 448,
          y = 432,
          width = 48,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2569,
          name = "",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 400,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2571,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 384,
          width = 144,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2572,
          name = "",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 400,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2573,
          name = "",
          type = "",
          shape = "rectangle",
          x = -16,
          y = 400,
          width = 208,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2574,
          name = "",
          type = "",
          shape = "rectangle",
          x = -16,
          y = 512,
          width = 144,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2575,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 496,
          width = 112,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2576,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 544,
          width = 80,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2577,
          name = "",
          type = "",
          shape = "rectangle",
          x = 304,
          y = 560,
          width = 144,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2578,
          name = "",
          type = "",
          shape = "rectangle",
          x = 448,
          y = 576,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2579,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 592,
          width = 16,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2580,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 640,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2581,
          name = "",
          type = "",
          shape = "rectangle",
          x = 544,
          y = 656,
          width = 96,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2582,
          name = "",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 672,
          width = 128,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2583,
          name = "",
          type = "",
          shape = "rectangle",
          x = 768,
          y = 656,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2584,
          name = "",
          type = "",
          shape = "rectangle",
          x = 784,
          y = 624,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2585,
          name = "",
          type = "",
          shape = "rectangle",
          x = 800,
          y = 496,
          width = 32,
          height = 128,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2587,
          name = "",
          type = "",
          shape = "rectangle",
          x = 784,
          y = 432,
          width = 48,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2588,
          name = "",
          type = "",
          shape = "rectangle",
          x = 832,
          y = 400,
          width = 48,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2589,
          name = "",
          type = "",
          shape = "rectangle",
          x = 880,
          y = 368,
          width = 32,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2590,
          name = "",
          type = "",
          shape = "rectangle",
          x = 896,
          y = 320,
          width = 32,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2591,
          name = "",
          type = "",
          shape = "rectangle",
          x = 880,
          y = 240,
          width = 144,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2593,
          name = "",
          type = "",
          shape = "rectangle",
          x = 608,
          y = 160,
          width = 128,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2594,
          name = "",
          type = "",
          shape = "rectangle",
          x = 576,
          y = 144,
          width = 32,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2595,
          name = "",
          type = "",
          shape = "rectangle",
          x = 656,
          y = 80,
          width = 32,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2596,
          name = "",
          type = "",
          shape = "rectangle",
          x = 640,
          y = -16,
          width = 32,
          height = 96,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2597,
          name = "",
          type = "",
          shape = "rectangle",
          x = 736,
          y = -16,
          width = 128,
          height = 112,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2598,
          name = "",
          type = "",
          shape = "rectangle",
          x = 864,
          y = 64,
          width = 32,
          height = 96,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2599,
          name = "",
          type = "",
          shape = "rectangle",
          x = 896,
          y = 144,
          width = 192,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2600,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1088,
          y = 176,
          width = 192,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2601,
          name = "",
          type = "",
          shape = "rectangle",
          x = 992,
          y = 192,
          width = 16,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2602,
          name = "",
          type = "",
          shape = "rectangle",
          x = 448,
          y = 128,
          width = 128,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2603,
          name = "",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 144,
          width = 48,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2605,
          name = "",
          type = "",
          shape = "rectangle",
          x = 368,
          y = 128,
          width = 32,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2606,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 96,
          width = 128,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2607,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 48,
          width = 32,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2608,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = -16,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2610,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 32,
          width = 16,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2611,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 64,
          width = 32,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2612,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 192,
          width = 16,
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
          id = 2644,
          name = "",
          type = "",
          shape = "rectangle",
          x = 672,
          y = 0,
          width = 64,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2645,
          name = "",
          type = "",
          shape = "rectangle",
          x = 688,
          y = 80,
          width = 48,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2647,
          name = "",
          type = "",
          shape = "rectangle",
          x = 736,
          y = 96,
          width = 160,
          height = 116,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2648,
          name = "",
          type = "",
          shape = "rectangle",
          x = 780,
          y = 212,
          width = 80,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2649,
          name = "",
          type = "",
          shape = "rectangle",
          x = 860,
          y = 212,
          width = 36,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2650,
          name = "",
          type = "",
          shape = "rectangle",
          x = 896,
          y = 192,
          width = 128,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2651,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1024,
          y = 192,
          width = 64,
          height = 96,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2652,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1088,
          y = 224,
          width = 192,
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
      id = 5,
      name = "Loot",
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
          id = 2025,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 420,
          y = 196,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2037,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 428,
          y = 204,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2038,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 420,
          y = 212,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2039,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 428,
          y = 220,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2040,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 420,
          y = 228,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2041,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 428,
          y = 236,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2042,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 452,
          y = 260,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2043,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 460,
          y = 268,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2044,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 468,
          y = 260,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2045,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 476,
          y = 268,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2046,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 484,
          y = 260,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2047,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 492,
          y = 268,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2048,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 500,
          y = 260,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2049,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 508,
          y = 268,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2050,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 564,
          y = 180,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2051,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 572,
          y = 188,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2052,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 564,
          y = 196,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2053,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 572,
          y = 204,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2054,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 564,
          y = 212,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2055,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 572,
          y = 220,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2056,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 580,
          y = 196,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2057,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 588,
          y = 204,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2058,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 580,
          y = 212,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2059,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 588,
          y = 220,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2060,
          name = "spike_vine",
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
          id = 2061,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 604,
          y = 204,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2062,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 596,
          y = 212,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2063,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 604,
          y = 220,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2064,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 612,
          y = 228,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2065,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 620,
          y = 236,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2066,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 612,
          y = 244,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2067,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 620,
          y = 252,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2068,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 612,
          y = 260,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2069,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 620,
          y = 268,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2070,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 612,
          y = 276,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2071,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 620,
          y = 284,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2072,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 612,
          y = 292,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2073,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 620,
          y = 300,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2074,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 596,
          y = 292,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2075,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 604,
          y = 300,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2076,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 580,
          y = 292,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2077,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 588,
          y = 300,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2078,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 580,
          y = 308,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2079,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 588,
          y = 316,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2080,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 580,
          y = 324,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2081,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 588,
          y = 332,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2082,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 596,
          y = 308,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2083,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 604,
          y = 316,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2084,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 596,
          y = 324,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2085,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 604,
          y = 332,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2086,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 612,
          y = 308,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2087,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 620,
          y = 316,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2088,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 612,
          y = 324,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2089,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 620,
          y = 332,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2090,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 628,
          y = 308,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2091,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 636,
          y = 316,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2092,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 628,
          y = 324,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2093,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 636,
          y = 332,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2094,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 628,
          y = 340,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2095,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 636,
          y = 348,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2096,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 628,
          y = 356,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2097,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 636,
          y = 364,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2098,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 628,
          y = 372,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2099,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 636,
          y = 380,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2100,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 644,
          y = 372,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2101,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 652,
          y = 380,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2102,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 660,
          y = 372,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2103,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 668,
          y = 380,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2104,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 676,
          y = 372,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2105,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 684,
          y = 380,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2106,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 676,
          y = 388,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2107,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 684,
          y = 396,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2108,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 692,
          y = 388,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2109,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 700,
          y = 396,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2110,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 692,
          y = 404,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2111,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 700,
          y = 412,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2112,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 692,
          y = 372,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2113,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 700,
          y = 380,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2114,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 692,
          y = 356,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2115,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 700,
          y = 364,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2116,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 692,
          y = 340,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2117,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 700,
          y = 348,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2118,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 692,
          y = 324,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2119,
          name = "spike_vine",
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
          id = 2120,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 692,
          y = 308,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2121,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 700,
          y = 316,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2122,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 692,
          y = 292,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2123,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 700,
          y = 300,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2124,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 708,
          y = 292,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2125,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 716,
          y = 300,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2126,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 724,
          y = 292,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2127,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 732,
          y = 300,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2128,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 724,
          y = 276,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2129,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 732,
          y = 284,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2130,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 724,
          y = 260,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2131,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 732,
          y = 268,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2132,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 708,
          y = 260,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2133,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 716,
          y = 268,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2134,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 708,
          y = 276,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2135,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 716,
          y = 284,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2136,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 692,
          y = 276,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2137,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 700,
          y = 284,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2138,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 692,
          y = 260,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2139,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 700,
          y = 268,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2140,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 692,
          y = 244,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2141,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 700,
          y = 252,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2142,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 692,
          y = 228,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2143,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 700,
          y = 236,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2144,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 708,
          y = 372,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2145,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 716,
          y = 380,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2146,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 724,
          y = 372,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2147,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 732,
          y = 380,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2148,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 724,
          y = 388,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2149,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 732,
          y = 396,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2150,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 708,
          y = 388,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2151,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 716,
          y = 396,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2152,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 708,
          y = 404,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2153,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 716,
          y = 412,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2154,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 724,
          y = 404,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2155,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 732,
          y = 412,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2156,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 724,
          y = 420,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2157,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 732,
          y = 428,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2158,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 820,
          y = 420,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2159,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 828,
          y = 428,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2160,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 820,
          y = 404,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2161,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 828,
          y = 412,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2162,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 820,
          y = 388,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2163,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 828,
          y = 396,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2164,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 836,
          y = 388,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2165,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 844,
          y = 396,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2166,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 852,
          y = 388,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2167,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 860,
          y = 396,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2168,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 868,
          y = 388,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2169,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 876,
          y = 396,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2170,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 884,
          y = 324,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2171,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 892,
          y = 332,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2172,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 772,
          y = 260,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2173,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 780,
          y = 268,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2178,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 644,
          y = 500,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2179,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 652,
          y = 508,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2180,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 660,
          y = 500,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2181,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 668,
          y = 508,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2182,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 676,
          y = 500,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2183,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 684,
          y = 508,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2184,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 692,
          y = 500,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2185,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 700,
          y = 508,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2186,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 532,
          y = 612,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2187,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 540,
          y = 620,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2188,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 532,
          y = 628,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2189,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 540,
          y = 636,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2190,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 548,
          y = 628,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2191,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 556,
          y = 636,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2192,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 564,
          y = 628,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2193,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 572,
          y = 636,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2194,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 548,
          y = 644,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2195,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 556,
          y = 652,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2196,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 564,
          y = 644,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2197,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 572,
          y = 652,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2198,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 644,
          y = 308,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2199,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 652,
          y = 316,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2200,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 660,
          y = 308,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2201,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 668,
          y = 316,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2202,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 676,
          y = 308,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2203,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 684,
          y = 316,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2204,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 708,
          y = 244,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2205,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 716,
          y = 252,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2206,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 708,
          y = 228,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2207,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 716,
          y = 236,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2208,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 500,
          y = 196,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2209,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 508,
          y = 204,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2210,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 356,
          y = 164,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2211,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 364,
          y = 172,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2212,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 340,
          y = 164,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2213,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 348,
          y = 172,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2214,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 324,
          y = 244,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2215,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 332,
          y = 252,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2216,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 740,
          y = 660,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2217,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 748,
          y = 668,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2218,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 756,
          y = 660,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2219,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 764,
          y = 668,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2220,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 772,
          y = 644,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2221,
          name = "spike_vine",
          type = "",
          shape = "point",
          x = 780,
          y = 652,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2307,
          name = "grass",
          type = "",
          shape = "point",
          x = 60.5,
          y = 497.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2308,
          name = "grass",
          type = "",
          shape = "point",
          x = 108,
          y = 460,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2309,
          name = "grass",
          type = "",
          shape = "point",
          x = 192,
          y = 480,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2310,
          name = "grass",
          type = "",
          shape = "point",
          x = 248,
          y = 468,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2311,
          name = "grass",
          type = "",
          shape = "point",
          x = 236,
          y = 456,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2312,
          name = "grass",
          type = "",
          shape = "point",
          x = 308,
          y = 500,
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
          x = 352,
          y = 544,
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
          x = 392,
          y = 524,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2315,
          name = "grass",
          type = "",
          shape = "point",
          x = 416,
          y = 484,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2316,
          name = "grass",
          type = "",
          shape = "point",
          x = 396,
          y = 440,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2317,
          name = "grass",
          type = "",
          shape = "point",
          x = 452,
          y = 532,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2318,
          name = "grass",
          type = "",
          shape = "point",
          x = 476,
          y = 560,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2319,
          name = "grass",
          type = "",
          shape = "point",
          x = 596,
          y = 524,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2320,
          name = "grass",
          type = "",
          shape = "point",
          x = 548,
          y = 581.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2321,
          name = "grass",
          type = "",
          shape = "point",
          x = 588,
          y = 644,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2322,
          name = "grass",
          type = "",
          shape = "point",
          x = 632,
          y = 636,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2323,
          name = "grass",
          type = "",
          shape = "point",
          x = 656,
          y = 664,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2324,
          name = "grass",
          type = "",
          shape = "point",
          x = 672,
          y = 656,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2325,
          name = "grass",
          type = "",
          shape = "point",
          x = 720,
          y = 624,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2326,
          name = "grass",
          type = "",
          shape = "point",
          x = 710.25,
          y = 661,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2327,
          name = "grass",
          type = "",
          shape = "point",
          x = 784,
          y = 608,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2328,
          name = "grass",
          type = "",
          shape = "point",
          x = 768,
          y = 588,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2329,
          name = "grass",
          type = "",
          shape = "point",
          x = 786.25,
          y = 540.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2330,
          name = "grass",
          type = "",
          shape = "point",
          x = 792,
          y = 508,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2331,
          name = "grass",
          type = "",
          shape = "point",
          x = 748,
          y = 504,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2332,
          name = "grass",
          type = "",
          shape = "point",
          x = 712,
          y = 528,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2333,
          name = "grass",
          type = "",
          shape = "point",
          x = 644,
          y = 548,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2334,
          name = "grass",
          type = "",
          shape = "point",
          x = 732,
          y = 456,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2335,
          name = "grass",
          type = "",
          shape = "point",
          x = 776,
          y = 428,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2336,
          name = "grass",
          type = "",
          shape = "point",
          x = 808,
          y = 368,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2337,
          name = "grass",
          type = "",
          shape = "point",
          x = 884,
          y = 360,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2338,
          name = "grass",
          type = "",
          shape = "point",
          x = 866.75,
          y = 274.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2339,
          name = "grass",
          type = "",
          shape = "point",
          x = 800,
          y = 284,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2340,
          name = "grass",
          type = "",
          shape = "point",
          x = 743.75,
          y = 235,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2341,
          name = "grass",
          type = "",
          shape = "point",
          x = 752,
          y = 288,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2342,
          name = "grass",
          type = "",
          shape = "point",
          x = 672,
          y = 352,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2343,
          name = "grass",
          type = "",
          shape = "point",
          x = 600,
          y = 372,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2344,
          name = "grass",
          type = "",
          shape = "point",
          x = 664,
          y = 232,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2345,
          name = "grass",
          type = "",
          shape = "point",
          x = 652,
          y = 276,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2346,
          name = "grass",
          type = "",
          shape = "point",
          x = 669.5,
          y = 287.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2347,
          name = "grass",
          type = "",
          shape = "point",
          x = 588,
          y = 244,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2348,
          name = "grass",
          type = "",
          shape = "point",
          x = 572,
          y = 268,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2349,
          name = "grass",
          type = "",
          shape = "point",
          x = 540,
          y = 188,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2350,
          name = "grass",
          type = "",
          shape = "point",
          x = 528,
          y = 224,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2351,
          name = "grass",
          type = "",
          shape = "point",
          x = 460,
          y = 188,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2352,
          name = "grass",
          type = "",
          shape = "point",
          x = 468,
          y = 232,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2353,
          name = "grass",
          type = "",
          shape = "point",
          x = 388,
          y = 208,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2354,
          name = "grass",
          type = "",
          shape = "point",
          x = 360,
          y = 228,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2355,
          name = "grass",
          type = "",
          shape = "point",
          x = 304,
          y = 192,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2356,
          name = "grass",
          type = "",
          shape = "point",
          x = 289.75,
          y = 224.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2357,
          name = "grass",
          type = "",
          shape = "point",
          x = 240,
          y = 172,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2358,
          name = "grass",
          type = "",
          shape = "point",
          x = 219.25,
          y = 234.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2359,
          name = "grass",
          type = "",
          shape = "point",
          x = 192,
          y = 196,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2360,
          name = "grass",
          type = "",
          shape = "point",
          x = 224,
          y = 108,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2361,
          name = "grass",
          type = "",
          shape = "point",
          x = 196,
          y = 92,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2362,
          name = "grass",
          type = "",
          shape = "point",
          x = 240,
          y = 48,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2363,
          name = "shrub",
          type = "",
          shape = "point",
          x = 240,
          y = 84,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2364,
          name = "shrub",
          type = "",
          shape = "point",
          x = 208,
          y = 64,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2365,
          name = "shrub",
          type = "",
          shape = "point",
          x = 216,
          y = 148,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2366,
          name = "shrub",
          type = "",
          shape = "point",
          x = 228,
          y = 204,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2367,
          name = "shrub",
          type = "",
          shape = "point",
          x = 284,
          y = 176,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2368,
          name = "shrub",
          type = "",
          shape = "point",
          x = 272,
          y = 244,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2369,
          name = "shrub",
          type = "",
          shape = "point",
          x = 320,
          y = 220,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2370,
          name = "shrub",
          type = "",
          shape = "point",
          x = 335.5,
          y = 200,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2371,
          name = "shrub",
          type = "",
          shape = "point",
          x = 380,
          y = 192,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2372,
          name = "shrub",
          type = "",
          shape = "point",
          x = 397.25,
          y = 233.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2373,
          name = "shrub",
          type = "",
          shape = "point",
          x = 456,
          y = 212,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2374,
          name = "shrub",
          type = "",
          shape = "point",
          x = 492,
          y = 236,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2375,
          name = "shrub",
          type = "",
          shape = "point",
          x = 484,
          y = 192,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2376,
          name = "shrub",
          type = "",
          shape = "point",
          x = 540,
          y = 248,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2377,
          name = "shrub",
          type = "",
          shape = "point",
          x = 544,
          y = 204,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2378,
          name = "shrub",
          type = "",
          shape = "point",
          x = 590.25,
          y = 273.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2379,
          name = "shrub",
          type = "",
          shape = "point",
          x = 648,
          y = 244,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2380,
          name = "shrub",
          type = "",
          shape = "point",
          x = 672,
          y = 264,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2381,
          name = "shrub",
          type = "",
          shape = "point",
          x = 660,
          y = 336,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2382,
          name = "shrub",
          type = "",
          shape = "point",
          x = 724,
          y = 356,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2383,
          name = "shrub",
          type = "",
          shape = "point",
          x = 768,
          y = 340,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2384,
          name = "shrub",
          type = "",
          shape = "point",
          x = 756,
          y = 400,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2385,
          name = "shrub",
          type = "",
          shape = "point",
          x = 864,
          y = 364,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2386,
          name = "shrub",
          type = "",
          shape = "point",
          x = 824,
          y = 256,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2387,
          name = "shrub",
          type = "",
          shape = "point",
          x = 759.5,
          y = 242,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2388,
          name = "shrub",
          type = "",
          shape = "point",
          x = 764,
          y = 460,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2389,
          name = "shrub",
          type = "",
          shape = "point",
          x = 788,
          y = 571.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2390,
          name = "shrub",
          type = "",
          shape = "point",
          x = 744,
          y = 632,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2391,
          name = "shrub",
          type = "",
          shape = "point",
          x = 612,
          y = 644,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2392,
          name = "shrub",
          type = "",
          shape = "point",
          x = 544,
          y = 540,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2393,
          name = "shrub",
          type = "",
          shape = "point",
          x = 521.75,
          y = 562.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2394,
          name = "shrub",
          type = "",
          shape = "point",
          x = 427.25,
          y = 516,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2395,
          name = "shrub",
          type = "",
          shape = "point",
          x = 348,
          y = 480,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2396,
          name = "shrub",
          type = "",
          shape = "point",
          x = 164,
          y = 468,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2397,
          name = "shrub",
          type = "",
          shape = "point",
          x = 56,
          y = 460,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2398,
          name = "shrub",
          type = "",
          shape = "point",
          x = 4,
          y = 536,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2399,
          name = "shrub",
          type = "",
          shape = "point",
          x = 144,
          y = 568,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2400,
          name = "shrub",
          type = "",
          shape = "point",
          x = 187.75,
          y = 520,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2401,
          name = "shrub",
          type = "",
          shape = "point",
          x = 240,
          y = 588,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2402,
          name = "shrub",
          type = "",
          shape = "point",
          x = 356,
          y = 580,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2403,
          name = "shrub",
          type = "",
          shape = "point",
          x = 468,
          y = 648,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2404,
          name = "shrub",
          type = "",
          shape = "point",
          x = 600,
          y = 676,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2405,
          name = "shrub",
          type = "",
          shape = "point",
          x = 556,
          y = 704,
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
          x = 672,
          y = 736,
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
          x = 760,
          y = 700,
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
          x = 828,
          y = 640,
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
          x = 816,
          y = 712,
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
          x = 888,
          y = 640,
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
          x = 832,
          y = 476,
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
          x = 856,
          y = 416,
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
          x = 908,
          y = 392,
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
          x = 904,
          y = 288,
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
          x = 992,
          y = 260,
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
          x = 636,
          y = 200,
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
          x = 664,
          y = 184,
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
          x = 660,
          y = 116,
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
          x = 548,
          y = 148,
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
          x = 496.75,
          y = 152.5,
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
          x = 424,
          y = 168,
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
          x = 436,
          y = 64,
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
          x = 284,
          y = 92,
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
          x = 168,
          y = 16,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2428,
          name = "shrub",
          type = "",
          shape = "point",
          x = 185.5,
          y = 230.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2429,
          name = "shrub",
          type = "",
          shape = "point",
          x = 200,
          y = 264,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2430,
          name = "shrub",
          type = "",
          shape = "point",
          x = 296,
          y = 272,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2431,
          name = "shrub",
          type = "",
          shape = "point",
          x = 416,
          y = 256,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2432,
          name = "shrub",
          type = "",
          shape = "point",
          x = 456,
          y = 308,
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
          x = 552,
          y = 308,
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
          x = 572,
          y = 385.25,
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
          x = 648,
          y = 404,
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
          x = 552,
          y = 500,
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
          x = 476,
          y = 434.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2438,
          name = "shrub",
          type = "",
          shape = "point",
          x = 324,
          y = 390.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2439,
          name = "shrub",
          type = "",
          shape = "point",
          x = 340,
          y = 386.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2440,
          name = "shrub",
          type = "",
          shape = "point",
          x = 116,
          y = 426.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2441,
          name = "shrub",
          type = "",
          shape = "point",
          x = 56,
          y = 422.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2442,
          name = "shrub",
          type = "",
          shape = "point",
          x = 8,
          y = 422.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2443,
          name = "shrub",
          type = "",
          shape = "point",
          x = 8,
          y = 350.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2444,
          name = "shrub",
          type = "",
          shape = "point",
          x = 136,
          y = 378.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2445,
          name = "shrub",
          type = "",
          shape = "point",
          x = 136,
          y = 298.25,
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
          x = 60,
          y = 538.25,
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
          x = 48,
          y = 550.25,
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
          x = 4,
          y = 582.25,
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
          x = 124,
          y = 674.25,
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
          x = 152,
          y = 610.25,
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
          x = 212,
          y = 562.25,
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
          x = 292,
          y = 594.25,
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
          x = 360,
          y = 610.25,
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
          x = 428,
          y = 578.25,
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
          x = 504,
          y = 634.25,
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
          x = 568,
          y = 678.25,
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
          x = 632,
          y = 702.25,
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
          x = 612,
          y = 722.25,
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
          x = 712,
          y = 694.25,
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
          x = 700,
          y = 758.25,
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
          x = 652,
          y = 794.25,
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
          x = 768,
          y = 762.25,
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
          x = 744,
          y = 782.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2464,
          name = "grass",
          type = "",
          shape = "point",
          x = 788,
          y = 678.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2465,
          name = "grass",
          type = "",
          shape = "point",
          x = 808,
          y = 658.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2466,
          name = "grass",
          type = "",
          shape = "point",
          x = 848,
          y = 722.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2467,
          name = "grass",
          type = "",
          shape = "point",
          x = 869.5,
          y = 675.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2468,
          name = "grass",
          type = "",
          shape = "point",
          x = 928,
          y = 618.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2469,
          name = "grass",
          type = "",
          shape = "point",
          x = 824,
          y = 610.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2470,
          name = "grass",
          type = "",
          shape = "point",
          x = 836,
          y = 562.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2471,
          name = "grass",
          type = "",
          shape = "point",
          x = 820,
          y = 554.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2472,
          name = "grass",
          type = "",
          shape = "point",
          x = 820,
          y = 490.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2473,
          name = "grass",
          type = "",
          shape = "point",
          x = 864,
          y = 466.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2474,
          name = "grass",
          type = "",
          shape = "point",
          x = 800,
          y = 450.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2475,
          name = "grass",
          type = "",
          shape = "point",
          x = 916,
          y = 442.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2476,
          name = "grass",
          type = "",
          shape = "point",
          x = 960,
          y = 478.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2477,
          name = "grass",
          type = "",
          shape = "point",
          x = 948,
          y = 522.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2478,
          name = "grass",
          type = "",
          shape = "point",
          x = 988,
          y = 478.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2479,
          name = "grass",
          type = "",
          shape = "point",
          x = 952,
          y = 566.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2480,
          name = "grass",
          type = "",
          shape = "point",
          x = 920,
          y = 362.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2481,
          name = "grass",
          type = "",
          shape = "point",
          x = 948,
          y = 346.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2482,
          name = "grass",
          type = "",
          shape = "point",
          x = 936,
          y = 338.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2483,
          name = "grass",
          type = "",
          shape = "point",
          x = 920,
          y = 306.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2484,
          name = "grass",
          type = "",
          shape = "point",
          x = 952,
          y = 258.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2485,
          name = "grass",
          type = "",
          shape = "point",
          x = 992,
          y = 282.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2486,
          name = "grass",
          type = "",
          shape = "point",
          x = 1008,
          y = 266.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2487,
          name = "grass",
          type = "",
          shape = "point",
          x = 1024,
          y = 306.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2488,
          name = "grass",
          type = "",
          shape = "point",
          x = 672,
          y = 198.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2489,
          name = "grass",
          type = "",
          shape = "point",
          x = 644,
          y = 178.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2490,
          name = "grass",
          type = "",
          shape = "point",
          x = 600,
          y = 162.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2491,
          name = "grass",
          type = "",
          shape = "point",
          x = 596,
          y = 98.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2492,
          name = "grass",
          type = "",
          shape = "point",
          x = 616,
          y = 26.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2493,
          name = "grass",
          type = "",
          shape = "point",
          x = 640,
          y = 42.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2494,
          name = "grass",
          type = "",
          shape = "point",
          x = 644,
          y = 74.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2495,
          name = "grass",
          type = "",
          shape = "point",
          x = 456,
          y = 154.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2496,
          name = "grass",
          type = "",
          shape = "point",
          x = 496,
          y = 110.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2497,
          name = "grass",
          type = "",
          shape = "point",
          x = 444,
          y = 86.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2498,
          name = "grass",
          type = "",
          shape = "point",
          x = 439,
          y = 138.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2499,
          name = "grass",
          type = "",
          shape = "point",
          x = 368,
          y = 130.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2500,
          name = "grass",
          type = "",
          shape = "point",
          x = 312,
          y = 34.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2501,
          name = "grass",
          type = "",
          shape = "point",
          x = 296,
          y = 26.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2502,
          name = "grass",
          type = "",
          shape = "point",
          x = 170.5,
          y = 34.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2506,
          name = "grass",
          type = "",
          shape = "point",
          x = 16,
          y = 282.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2509,
          name = "grass",
          type = "",
          shape = "point",
          x = 160,
          y = 254.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2510,
          name = "grass",
          type = "",
          shape = "point",
          x = 216,
          y = 286.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2511,
          name = "grass",
          type = "",
          shape = "point",
          x = 268,
          y = 302.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2512,
          name = "grass",
          type = "",
          shape = "point",
          x = 322.5,
          y = 270.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2513,
          name = "grass",
          type = "",
          shape = "point",
          x = 308,
          y = 286.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2514,
          name = "grass",
          type = "",
          shape = "point",
          x = 360,
          y = 254.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2515,
          name = "grass",
          type = "",
          shape = "point",
          x = 428,
          y = 306.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2516,
          name = "grass",
          type = "",
          shape = "point",
          x = 412,
          y = 342.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2517,
          name = "grass",
          type = "",
          shape = "point",
          x = 424,
          y = 362.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2518,
          name = "grass",
          type = "",
          shape = "point",
          x = 432,
          y = 342.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2519,
          name = "grass",
          type = "",
          shape = "point",
          x = 496,
          y = 338.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2520,
          name = "grass",
          type = "",
          shape = "point",
          x = 540,
          y = 302.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2521,
          name = "grass",
          type = "",
          shape = "point",
          x = 556,
          y = 350.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2522,
          name = "grass",
          type = "",
          shape = "point",
          x = 616,
          y = 398.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2523,
          name = "grass",
          type = "",
          shape = "point",
          x = 656,
          y = 414.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2524,
          name = "grass",
          type = "",
          shape = "point",
          x = 700,
          y = 442.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2525,
          name = "grass",
          type = "",
          shape = "point",
          x = 656,
          y = 462.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2526,
          name = "grass",
          type = "",
          shape = "point",
          x = 696,
          y = 475.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2527,
          name = "grass",
          type = "",
          shape = "point",
          x = 620,
          y = 490.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2528,
          name = "grass",
          type = "",
          shape = "point",
          x = 500,
          y = 454.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2529,
          name = "grass",
          type = "",
          shape = "point",
          x = 448,
          y = 406.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2530,
          name = "grass",
          type = "",
          shape = "point",
          x = 512,
          y = 414.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2531,
          name = "grass",
          type = "",
          shape = "point",
          x = 392,
          y = 394.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2532,
          name = "grass",
          type = "",
          shape = "point",
          x = 308,
          y = 366.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2533,
          name = "grass",
          type = "",
          shape = "point",
          x = 284,
          y = 390.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2534,
          name = "grass",
          type = "",
          shape = "point",
          x = 248,
          y = 378.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2535,
          name = "grass",
          type = "",
          shape = "point",
          x = 172.25,
          y = 426.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2536,
          name = "grass",
          type = "",
          shape = "point",
          x = 128,
          y = 422.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2537,
          name = "grass",
          type = "",
          shape = "point",
          x = 124,
          y = 382.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2538,
          name = "grass",
          type = "",
          shape = "point",
          x = 80,
          y = 382.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2539,
          name = "grass",
          type = "",
          shape = "point",
          x = 80,
          y = 426.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2540,
          name = "grass",
          type = "",
          shape = "point",
          x = 36,
          y = 342.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2541,
          name = "grass",
          type = "",
          shape = "point",
          x = 84,
          y = 318.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2542,
          name = "grass",
          type = "",
          shape = "point",
          x = 36,
          y = 306.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2544,
          name = "grass",
          type = "",
          shape = "point",
          x = 176,
          y = 302.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2545,
          name = "grass",
          type = "",
          shape = "point",
          x = 128,
          y = 318.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2547,
          name = "grass",
          type = "",
          shape = "point",
          x = 28,
          y = 530.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2549,
          name = "grass",
          type = "",
          shape = "point",
          x = 80,
          y = 578.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2550,
          name = "grass",
          type = "",
          shape = "point",
          x = 365.5,
          y = 552.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2621,
          name = "grass",
          type = "",
          shape = "point",
          x = 94.5,
          y = 18.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2622,
          name = "grass",
          type = "",
          shape = "point",
          x = 98.5,
          y = 74.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2623,
          name = "grass",
          type = "",
          shape = "point",
          x = 90.5,
          y = 126.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2624,
          name = "grass",
          type = "",
          shape = "point",
          x = 54.5,
          y = 78.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2625,
          name = "grass",
          type = "",
          shape = "point",
          x = 50.5,
          y = 118.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2626,
          name = "grass",
          type = "",
          shape = "point",
          x = 72.5,
          y = 165.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2627,
          name = "grass",
          type = "",
          shape = "point",
          x = 86.5,
          y = 182.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2628,
          name = "grass",
          type = "",
          shape = "point",
          x = 66.5,
          y = 190.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2629,
          name = "grass",
          type = "",
          shape = "point",
          x = 122.5,
          y = 222.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2630,
          name = "grass",
          type = "",
          shape = "point",
          x = 118.5,
          y = 254.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2631,
          name = "grass",
          type = "",
          shape = "point",
          x = 102.5,
          y = 218.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2632,
          name = "grass",
          type = "",
          shape = "point",
          x = 154.5,
          y = 226.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2633,
          name = "shrub",
          type = "",
          shape = "point",
          x = 92.25,
          y = 47.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2634,
          name = "shrub",
          type = "",
          shape = "point",
          x = 60,
          y = 16,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2635,
          name = "shrub",
          type = "",
          shape = "point",
          x = 36,
          y = 68,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2637,
          name = "shrub",
          type = "",
          shape = "point",
          x = 88,
          y = 148,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2638,
          name = "shrub",
          type = "",
          shape = "point",
          x = 80,
          y = 204,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2639,
          name = "shrub",
          type = "",
          shape = "point",
          x = 140,
          y = 256,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2640,
          name = "shrub",
          type = "",
          shape = "point",
          x = 180,
          y = 280,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2641,
          name = "shrub",
          type = "",
          shape = "point",
          x = 8,
          y = 240,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2642,
          name = "shrub",
          type = "",
          shape = "point",
          x = 120,
          y = 60,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2643,
          name = "sink_fish",
          type = "",
          shape = "point",
          x = 840,
          y = 120,
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
      id = 17,
      name = "Rocks",
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
          id = 1837,
          name = "big",
          type = "fake",
          shape = "point",
          x = 924,
          y = 500,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1871,
          name = "big",
          type = "fake",
          shape = "point",
          x = 584.5,
          y = 802,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1886,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 832,
          y = 756,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 1887,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 672,
          y = 820,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2174,
          name = "standard",
          type = "",
          shape = "point",
          x = 789.25,
          y = 311.625,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2175,
          name = "standard",
          type = "",
          shape = "point",
          x = 831.5,
          y = 285.375,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2176,
          name = "standard",
          type = "",
          shape = "point",
          x = 596.375,
          y = 353.875,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2177,
          name = "standard",
          type = "",
          shape = "point",
          x = 536,
          y = 278,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2223,
          name = "stump",
          type = "",
          shape = "point",
          x = 825,
          y = 333.625,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2229,
          name = "campfire",
          type = "",
          shape = "point",
          x = 266.75,
          y = 519.125,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2235,
          name = "banner2",
          type = "right",
          shape = "point",
          x = 160,
          y = 420,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2236,
          name = "banner2",
          type = "right",
          shape = "point",
          x = 160,
          y = 516,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2238,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 290,
          y = 67,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2239,
          name = "standard",
          type = "",
          shape = "point",
          x = 400,
          y = 149.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2240,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 468,
          y = 74,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2241,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 702.5,
          y = 193.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2243,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 254.25,
          y = 289.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2244,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 381,
          y = 268,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2245,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 484.75,
          y = 309.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2246,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 278,
          y = 372,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2247,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 514.25,
          y = 498.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2248,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 685.25,
          y = 461.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2249,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 815.75,
          y = 461.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2250,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 909.5,
          y = 262.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2251,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 675.25,
          y = 698,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2252,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 492.5,
          y = 615,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2253,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 390,
          y = 587.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2254,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 103.25,
          y = 550.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2255,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 76.25,
          y = 655.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2256,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 244.75,
          y = 669.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2257,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 484.75,
          y = 753.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2258,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 960.75,
          y = 689.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2259,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 992.75,
          y = 541.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2260,
          name = "big",
          type = "fake",
          shape = "point",
          x = 967.5,
          y = 380,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2261,
          name = "big",
          type = "fake",
          shape = "point",
          x = 835.75,
          y = 679.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2262,
          name = "big",
          type = "fake",
          shape = "point",
          x = 537.25,
          y = 433.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2263,
          name = "big",
          type = "fake",
          shape = "point",
          x = 430.25,
          y = 397,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2264,
          name = "big",
          type = "fake",
          shape = "point",
          x = 28,
          y = 412,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2265,
          name = "big",
          type = "fake",
          shape = "point",
          x = 159.5,
          y = 334,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2267,
          name = "big",
          type = "fake",
          shape = "point",
          x = 372,
          y = 96,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2268,
          name = "big",
          type = "fake",
          shape = "point",
          x = 588.75,
          y = 143.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2269,
          name = "big",
          type = "fake",
          shape = "point",
          x = 151.25,
          y = 48.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2270,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 314.25,
          y = 313.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2272,
          name = "standard",
          type = "",
          shape = "point",
          x = 477.25,
          y = 140.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2273,
          name = "standard",
          type = "",
          shape = "point",
          x = 533,
          y = 112.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2274,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 610.75,
          y = 427.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2275,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 593,
          y = 481.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2276,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 865.25,
          y = 444,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2277,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 865.25,
          y = 536,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2278,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 913.25,
          y = 596,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2279,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 897.25,
          y = 744,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2280,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 733.25,
          y = 728,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2281,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 516.75,
          y = 689.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2282,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 416.75,
          y = 669.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2283,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 320.5,
          y = 620,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2284,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 270.5,
          y = 576.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2285,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 196.75,
          y = 616.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2286,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 208,
          y = 530.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2287,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 101.25,
          y = 412.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2288,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 220.75,
          y = 400.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2289,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 372.75,
          y = 384.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2290,
          name = "big",
          type = "fake",
          shape = "point",
          x = 38.5,
          y = 633.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2291,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 56.75,
          y = 296,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2296,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 311.75,
          y = 14,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2297,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 26.5,
          y = 261.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2298,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 1041.5,
          y = 330.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2299,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 997.5,
          y = 430.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2300,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 1065.5,
          y = 466.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2301,
          name = "big",
          type = "fake",
          shape = "point",
          x = 360.5,
          y = 722,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2302,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 89.25,
          y = 348.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2303,
          name = "standard",
          type = "forestFruit1",
          shape = "point",
          x = 160,
          y = 116,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["fruit"] = "apple"
          }
        },
        {
          id = 2304,
          name = "standard",
          type = "forestFruit1",
          shape = "point",
          x = 160,
          y = 172,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["fruit"] = "apple"
          }
        },
        {
          id = 2613,
          name = "big",
          type = "fake",
          shape = "point",
          x = 79.25,
          y = 256.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2614,
          name = "big",
          type = "fake",
          shape = "point",
          x = 76.25,
          y = 111,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2615,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 46.5,
          y = 153.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2616,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 14.5,
          y = 209.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2617,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 14.5,
          y = 105.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2618,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 35.25,
          y = 39.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2619,
          name = "standard",
          type = "fake",
          shape = "point",
          x = 118.5,
          y = 14.75,
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
      id = 22,
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
          id = 2230,
          name = "logs",
          type = "",
          shape = "point",
          x = 311.159,
          y = 553.636,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2231,
          name = "logs",
          type = "",
          shape = "point",
          x = 327.159,
          y = 553.636,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2232,
          name = "box",
          type = "",
          shape = "point",
          x = 424,
          y = 440,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2233,
          name = "box",
          type = "",
          shape = "point",
          x = 440,
          y = 440,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2234,
          name = "box2",
          type = "",
          shape = "point",
          x = 472,
          y = 472,
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
      objects = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 26,
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
          id = 2022,
          name = "forestFight1",
          type = "",
          shape = "point",
          x = 696,
          y = 584,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["triggerType"] = "below",
            ["triggerVal"] = 498,
            ["triggerX"] = 752,
            ["triggerY"] = 498
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
      id = 13,
      name = "Portals",
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
          id = 2237,
          name = "3_town",
          type = "left",
          shape = "rectangle",
          x = -16,
          y = 448,
          width = 16,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["destX"] = 1458,
            ["destY"] = -1
          }
        },
        {
          id = 2305,
          name = "1_meadow",
          type = "up",
          shape = "rectangle",
          x = 192,
          y = -16,
          width = 80,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["destX"] = -1,
            ["destY"] = 792
          }
        },
        {
          id = 2306,
          name = "1_meadow",
          type = "up",
          shape = "rectangle",
          x = 672,
          y = -16,
          width = 64,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["destX"] = -1,
            ["destY"] = 792
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 18,
      name = "Tutorials",
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
          id = 2222,
          name = "dodge",
          type = "",
          shape = "point",
          x = 286.5,
          y = 207.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["ambience"] = "wind"
          }
        },
        {
          id = 2224,
          name = "heal",
          type = "",
          shape = "point",
          x = 328,
          y = 472,
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
      id = 19,
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
          id = 1828,
          name = "greataxe",
          type = "",
          shape = "point",
          x = 828.092,
          y = 328.715,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2225,
          name = "torch",
          type = "",
          shape = "point",
          x = 280,
          y = 424,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2226,
          name = "spear",
          type = "",
          shape = "point",
          x = 312,
          y = 424,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2227,
          name = "torch",
          type = "",
          shape = "point",
          x = 376,
          y = 424,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2228,
          name = "spear",
          type = "",
          shape = "point",
          x = 344,
          y = 424,
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
