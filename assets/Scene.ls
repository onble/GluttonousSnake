{
  "_$ver": 1,
  "_$id": "lx8mwule",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "width": 1920,
  "height": 1080,
  "_$child": [
    {
      "_$id": "6rfwd6pp",
      "_$type": "Image",
      "name": "Bg",
      "width": 1920,
      "height": 1080,
      "skin": "res://c7e25d26-cb9d-404a-9b9c-5b59af1d6b1e",
      "useSourceSize": true,
      "color": "#ffffff"
    },
    {
      "_$id": "3ol0laql",
      "_$type": "Sprite",
      "name": "joystick",
      "width": 1920,
      "height": 1080,
      "_$comp": [
        {
          "_$type": "42d7eaa2-a517-4bb8-a4cb-60852aa08f0c",
          "scriptPath": "../src/Joystick.ts",
          "nodeDotBg": {
            "_$ref": "zk2yb83m"
          },
          "nodeDot": {
            "_$ref": "zdzp1w2o"
          }
        }
      ],
      "_$child": [
        {
          "_$id": "zk2yb83m",
          "_$type": "Image",
          "name": "bg",
          "x": 100,
          "y": 680,
          "width": 300,
          "height": 300,
          "alpha": 0.422,
          "left": 100,
          "bottom": 100,
          "skin": "res://2b5aa8a9-0107-4c58-981c-51304b30d3b8",
          "color": "#a5a5a5",
          "_$child": [
            {
              "_$id": "zdzp1w2o",
              "_$type": "Image",
              "name": "point",
              "x": 100,
              "y": 100,
              "width": 100,
              "height": 100,
              "skin": "res://2b5aa8a9-0107-4c58-981c-51304b30d3b8",
              "color": "#ffffff"
            }
          ]
        }
      ]
    },
    {
      "_$id": "sahghm54",
      "_$type": "Sprite",
      "name": "Wall1",
      "x": -25,
      "y": 500,
      "width": 100,
      "height": 100,
      "_$comp": [
        {
          "_$type": "RigidBody",
          "type": "static",
          "category": 8,
          "mask": 27
        },
        {
          "_$id": "irt3",
          "_$type": "BoxCollider",
          "x": 26,
          "y": -500,
          "width": 45,
          "height": 1080
        }
      ],
      "_$child": [
        {
          "_$id": "feuvhsr0",
          "_$type": "Image",
          "name": "icecream-10",
          "y": 400,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://81995de0-a856-4592-b3ef-dca34951e2af",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "wm3xw1vd",
          "_$type": "Image",
          "name": "icecream-09",
          "y": 300,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://da5dc43a-82e9-4cde-b0f7-9ad2af435df6",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "8e5p5azh",
          "_$type": "Image",
          "name": "icecream-08",
          "y": 200,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://7326cd4f-f6ae-47fc-b2a0-e61d91a4ffb8",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "j2wcer9k",
          "_$type": "Image",
          "name": "icecream-07",
          "y": 100,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://f6dc7dbf-478e-447d-89a9-622b761699bc",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "rl4ll1qy",
          "_$type": "Image",
          "name": "icecream-06",
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://5f340788-27e0-484c-abec-75cbdfe0ad38",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "783q2tsg",
          "_$type": "Image",
          "name": "icecream-05",
          "y": -100,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://3d10f96f-308f-4ff9-80c4-7218d796af37",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "c22qv0dn",
          "_$type": "Image",
          "name": "icecream-04",
          "y": -200,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://64bcf216-8d7c-4f69-ae09-967e4efb82c1",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "jvoeh28o",
          "_$type": "Image",
          "name": "icecream-03",
          "y": -300,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://44e2b492-6d1a-4d8c-9470-6fe4e8feca00",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "4lpprty5",
          "_$type": "Image",
          "name": "icecream-02",
          "y": -400,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://30413c0b-67b5-4342-8048-a10c51b740d3",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "tv2g784s",
          "_$type": "Image",
          "name": "icecream-01",
          "y": -500,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://e24cbddd-0711-4faf-9385-25935ec244cc",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "ypuy3644",
          "_$type": "Image",
          "name": "icecream-00",
          "y": 500,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://e24cbddd-0711-4faf-9385-25935ec244cc",
          "useSourceSize": true,
          "color": "#ffffff"
        }
      ]
    },
    {
      "_$id": "6hwahz66",
      "_$type": "Sprite",
      "name": "Wall2",
      "x": 1840,
      "y": 500,
      "width": 100,
      "height": 100,
      "_$comp": [
        {
          "_$type": "RigidBody",
          "type": "static",
          "category": 8,
          "mask": 27
        },
        {
          "_$id": "3s03",
          "_$type": "BoxCollider",
          "x": 26,
          "y": -500,
          "width": 45,
          "height": 1080
        }
      ],
      "_$child": [
        {
          "_$id": "ugkb21nq",
          "_$type": "Image",
          "name": "icecream-10",
          "y": 400,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://81995de0-a856-4592-b3ef-dca34951e2af",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "3vou6v28",
          "_$type": "Image",
          "name": "icecream-09",
          "y": 300,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://da5dc43a-82e9-4cde-b0f7-9ad2af435df6",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "emjk03s8",
          "_$type": "Image",
          "name": "icecream-08",
          "y": 200,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://7326cd4f-f6ae-47fc-b2a0-e61d91a4ffb8",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "8p9d49tf",
          "_$type": "Image",
          "name": "icecream-07",
          "y": 100,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://f6dc7dbf-478e-447d-89a9-622b761699bc",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "j4jvx9tj",
          "_$type": "Image",
          "name": "icecream-06",
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://5f340788-27e0-484c-abec-75cbdfe0ad38",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "fcnnit6g",
          "_$type": "Image",
          "name": "icecream-05",
          "y": -100,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://3d10f96f-308f-4ff9-80c4-7218d796af37",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "id11zlpp",
          "_$type": "Image",
          "name": "icecream-04",
          "y": -200,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://64bcf216-8d7c-4f69-ae09-967e4efb82c1",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "pnjq8t1w",
          "_$type": "Image",
          "name": "icecream-03",
          "y": -300,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://44e2b492-6d1a-4d8c-9470-6fe4e8feca00",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "ht61f48c",
          "_$type": "Image",
          "name": "icecream-02",
          "y": -400,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://30413c0b-67b5-4342-8048-a10c51b740d3",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "ivyzzyou",
          "_$type": "Image",
          "name": "icecream-01",
          "y": -500,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://e24cbddd-0711-4faf-9385-25935ec244cc",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "teuez44q",
          "_$type": "Image",
          "name": "icecream-00",
          "y": 500,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://e24cbddd-0711-4faf-9385-25935ec244cc",
          "useSourceSize": true,
          "color": "#ffffff"
        }
      ]
    },
    {
      "_$id": "0i1ba67q",
      "_$type": "Sprite",
      "name": "Wall3",
      "x": 920,
      "y": -20,
      "width": 100,
      "height": 100,
      "rotation": 90,
      "_$comp": [
        {
          "_$type": "RigidBody",
          "type": "static",
          "category": 8,
          "mask": 27
        },
        {
          "_$id": "db72",
          "_$type": "BoxCollider",
          "x": 20,
          "y": -1000,
          "width": 50,
          "height": 1920
        }
      ],
      "_$child": [
        {
          "_$id": "ymx7h0ku",
          "_$type": "Image",
          "name": "icecream-10",
          "y": 800,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://81995de0-a856-4592-b3ef-dca34951e2af",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "n5y0gup3",
          "_$type": "Image",
          "name": "icecream-09",
          "y": 700,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://da5dc43a-82e9-4cde-b0f7-9ad2af435df6",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "rxhsplwb",
          "_$type": "Image",
          "name": "icecream-08",
          "y": 600,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://7326cd4f-f6ae-47fc-b2a0-e61d91a4ffb8",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "odnu2gco",
          "_$type": "Image",
          "name": "icecream-07",
          "y": 500,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://f6dc7dbf-478e-447d-89a9-622b761699bc",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "jav669sf",
          "_$type": "Image",
          "name": "icecream-06",
          "y": 400,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://5f340788-27e0-484c-abec-75cbdfe0ad38",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "e6vxvdiw",
          "_$type": "Image",
          "name": "icecream-05",
          "y": 300,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://3d10f96f-308f-4ff9-80c4-7218d796af37",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "mvnvws94",
          "_$type": "Image",
          "name": "icecream-04",
          "y": 200,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://64bcf216-8d7c-4f69-ae09-967e4efb82c1",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "jzx8np8v",
          "_$type": "Image",
          "name": "icecream-03",
          "y": 100,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://44e2b492-6d1a-4d8c-9470-6fe4e8feca00",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "9qdulmcg",
          "_$type": "Image",
          "name": "icecream-02",
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://30413c0b-67b5-4342-8048-a10c51b740d3",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "8614eizs",
          "_$type": "Image",
          "name": "icecream-01",
          "y": -100,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://e24cbddd-0711-4faf-9385-25935ec244cc",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "piypigdx",
          "_$type": "Image",
          "name": "icecream-10(1)",
          "y": -200,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://81995de0-a856-4592-b3ef-dca34951e2af",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "c5oqtel3",
          "_$type": "Image",
          "name": "icecream-09(1)",
          "y": -300,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://da5dc43a-82e9-4cde-b0f7-9ad2af435df6",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "y7mvcsgs",
          "_$type": "Image",
          "name": "icecream-08(1)",
          "y": -400,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://7326cd4f-f6ae-47fc-b2a0-e61d91a4ffb8",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "e41fq5q0",
          "_$type": "Image",
          "name": "icecream-07(1)",
          "y": -500,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://f6dc7dbf-478e-447d-89a9-622b761699bc",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "6ah4wq3u",
          "_$type": "Image",
          "name": "icecream-06(1)",
          "y": -600,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://5f340788-27e0-484c-abec-75cbdfe0ad38",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "thm3fhi4",
          "_$type": "Image",
          "name": "icecream-05(1)",
          "y": -700,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://3d10f96f-308f-4ff9-80c4-7218d796af37",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "jp8mgkii",
          "_$type": "Image",
          "name": "icecream-04(1)",
          "y": -800,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://64bcf216-8d7c-4f69-ae09-967e4efb82c1",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "embq1im9",
          "_$type": "Image",
          "name": "icecream-03(1)",
          "y": -900,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://44e2b492-6d1a-4d8c-9470-6fe4e8feca00",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "eoybfkwn",
          "_$type": "Image",
          "name": "icecream-02(1)",
          "y": -1000,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://30413c0b-67b5-4342-8048-a10c51b740d3",
          "useSourceSize": true,
          "color": "#ffffff"
        }
      ]
    },
    {
      "_$id": "shlxpydm",
      "_$type": "Sprite",
      "name": "Wall4",
      "x": 920,
      "y": 1000,
      "width": 100,
      "height": 100,
      "rotation": 90,
      "_$comp": [
        {
          "_$type": "RigidBody",
          "type": "static",
          "category": 8,
          "mask": 27
        },
        {
          "_$id": "7g20",
          "_$type": "BoxCollider",
          "x": 22,
          "y": -1000,
          "isSensor": true,
          "width": 50,
          "height": 1920
        }
      ],
      "_$child": [
        {
          "_$id": "fvwn4ouz",
          "_$type": "Image",
          "name": "icecream-10",
          "y": 800,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://81995de0-a856-4592-b3ef-dca34951e2af",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "gfi4tppz",
          "_$type": "Image",
          "name": "icecream-09",
          "y": 700,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://da5dc43a-82e9-4cde-b0f7-9ad2af435df6",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "f3kh3kgr",
          "_$type": "Image",
          "name": "icecream-08",
          "y": 600,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://7326cd4f-f6ae-47fc-b2a0-e61d91a4ffb8",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "qjra5z5r",
          "_$type": "Image",
          "name": "icecream-07",
          "y": 500,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://f6dc7dbf-478e-447d-89a9-622b761699bc",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "9ipz2kto",
          "_$type": "Image",
          "name": "icecream-06",
          "y": 400,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://5f340788-27e0-484c-abec-75cbdfe0ad38",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "3c078dig",
          "_$type": "Image",
          "name": "icecream-05",
          "y": 300,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://3d10f96f-308f-4ff9-80c4-7218d796af37",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "sjbb43do",
          "_$type": "Image",
          "name": "icecream-04",
          "y": 200,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://64bcf216-8d7c-4f69-ae09-967e4efb82c1",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "wbb5ty97",
          "_$type": "Image",
          "name": "icecream-03",
          "y": 100,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://44e2b492-6d1a-4d8c-9470-6fe4e8feca00",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "k0ktyt4c",
          "_$type": "Image",
          "name": "icecream-02",
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://30413c0b-67b5-4342-8048-a10c51b740d3",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "6osqjxmj",
          "_$type": "Image",
          "name": "icecream-01",
          "y": -100,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://e24cbddd-0711-4faf-9385-25935ec244cc",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "2hjiixlu",
          "_$type": "Image",
          "name": "icecream-10(1)",
          "y": -200,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://81995de0-a856-4592-b3ef-dca34951e2af",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "yo47x0ad",
          "_$type": "Image",
          "name": "icecream-09(1)",
          "y": -300,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://da5dc43a-82e9-4cde-b0f7-9ad2af435df6",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "1xxdbcnk",
          "_$type": "Image",
          "name": "icecream-08(1)",
          "y": -400,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://7326cd4f-f6ae-47fc-b2a0-e61d91a4ffb8",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "1cmfwfgh",
          "_$type": "Image",
          "name": "icecream-07(1)",
          "y": -500,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://f6dc7dbf-478e-447d-89a9-622b761699bc",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "p9s258ya",
          "_$type": "Image",
          "name": "icecream-06(1)",
          "y": -600,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://5f340788-27e0-484c-abec-75cbdfe0ad38",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "u2rbzgg4",
          "_$type": "Image",
          "name": "icecream-05(1)",
          "y": -700,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://3d10f96f-308f-4ff9-80c4-7218d796af37",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "cl1236cy",
          "_$type": "Image",
          "name": "icecream-04(1)",
          "y": -800,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://64bcf216-8d7c-4f69-ae09-967e4efb82c1",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "pe8gro0k",
          "_$type": "Image",
          "name": "icecream-03(1)",
          "y": -900,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://44e2b492-6d1a-4d8c-9470-6fe4e8feca00",
          "useSourceSize": true,
          "color": "#ffffff"
        },
        {
          "_$id": "zaxeixzq",
          "_$type": "Image",
          "name": "icecream-02(1)",
          "y": -1000,
          "width": 200,
          "height": 200,
          "scaleX": 0.5,
          "scaleY": 0.5,
          "skin": "res://30413c0b-67b5-4342-8048-a10c51b740d3",
          "useSourceSize": true,
          "color": "#ffffff"
        }
      ]
    },
    {
      "_$id": "kkawvq6h",
      "_$prefab": "1587bd57-4d72-4679-9929-e84cb62d69ea",
      "name": "Head",
      "active": true,
      "x": 942,
      "y": 575,
      "visible": true,
      "_$comp": [
        {
          "_$override": "fa104c31-7b68-4e40-8831-d1f020012bcc",
          "joystick": {
            "_$ref": "3ol0laql"
          }
        },
        {
          "_$override": "RigidBody",
          "group": 0,
          "type": "kinematic"
        },
        {
          "_$override": "ln7g",
          "isSensor": true
        }
      ]
    }
  ]
}