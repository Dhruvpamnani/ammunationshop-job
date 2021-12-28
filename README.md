# qb-gunjob

#A weapons store with a special job, a salary, a store, a safe, a special junk, even weapons, and a boss menu for the shop owner.
 
# https://github.com/zf-development/zf_context_qb menu i use in the export


![FiveM_GTAProcess_nB7zkU7ZXB](https://user-images.githubusercontent.com/89742984/143509988-cc62ade9-d6ac-47a4-99eb-0f381edb7933.png)


![FiveM_GTAProcess_0dZdL8UT1C](https://user-images.githubusercontent.com/89742984/143510003-3a17cb59-281c-41e2-a9ac-4f3bc8f3d659.png)


![FiveM_GTAProcess_2Amt0ftmT8](https://user-images.githubusercontent.com/89742984/143510043-f746e371-4136-4072-84c3-4d475c5befb5.png)


![FiveM_GTAProcess_bZmfAPGrSm](https://user-images.githubusercontent.com/89742984/143510055-6f2b0584-f30b-47f0-9c63-4e3e2818b244.png)


![FiveM_GTAProcess_IjnjkuagPg](https://user-images.githubusercontent.com/89742984/143510066-63c3fd4b-bf76-48f3-8095-a842a4b911c5.png)


![FiveM_GTAProcess_MJavsFGYug](https://user-images.githubusercontent.com/89742984/143510061-2969ee84-fea8-475d-a7e1-cda452d69df0.png)


# add to qb-core/shared.lua
```
	
	['licensepistol'] 				 = {['name'] = 'licensepistol', 			 	['label'] = 'License  pistol', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'stickynote.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = "thats my gun"},
```


```

QBShared.Jobs = {
    	["gunshop"] = {
		label = "Gun Shop",
		defaultDuty = true,
		grades = {
			['1'] = {
				name = "Manager",
				payment = 65
			},
			['2'] = {
				name = "Supervisor",
				payment = 80
			},
			['3'] = {
				name = "Owner",
				isboss = true,
				payment = 1000
			},
		},
	},
```



   # qb-bossmenu/config.lua
    ```    ['gunshop'] = vector3(840.02, -1032.71, 28.19) ```

# qb-target/config.lu ==> config.BoxZones
```
		    ["boxzone9"] = {
        name = "gunshop1",
        coords = vector3(841.06, -1034.82, 28.19),
        length = 0.2,
        width = 0.3,
        heading = 0,
        debugPoly = true,
        minZ=28.19,
        maxZ=28.59,
        options = {
            {
              type = "client",
              event = "shopgun:menu",
              icon = "fas fa-cash-register",
              label = "Gun Register",
              job = "gunshop"
            },
        },
        distance = 2.5
    },
    		    ["boxzone10"] = {
        name = "gunshop2",
        coords = vector3(842.35, -1034.67, 28.19),
        length = 0.6,
        width = 1,
        heading = 0,
        debugPoly = true,
        minZ=28.14,
        maxZ=28.29,
        options = {
            {
              type = "client",
              event = "shopgun:OpenInventory",
              icon = "fas fa-box-open",
              label = "shop table",
            },
        },
        distance = 2.5
    },
    		    ["boxzone11"] = {
        name = "gunshop3",
        coords = vector3(839.49, -1031.62, 28.19),
        length = 0.2,
        width = 0.6,
        heading = 0,
        debugPoly = true,
        minZ=27.94,
        maxZ=28.19,
        options = {
            {
              type = "client",
              event = "shopgun:stash",
              icon = "fas fa-box",
              label = "shop stash",
              job = "gunshop"
            },
        },
        distance = 2.5
    },
        		    ["boxzone12"] = {
        name = "gunshop4",
        coords = vector3(843.97, -1035.09, 28.19),
        length = 0.2,
        width = 1,
        heading = 0,
        debugPoly = true,
        minZ=27.79,
        maxZ=28.19,
        options = {
            {
              type = "client",
              event = "Shopgun:Trash",
              icon = "fas fa-trash",
              label = "gun bin",
              job = "gunshop"
            },
        },
        distance = 2.5
    },
    ```
