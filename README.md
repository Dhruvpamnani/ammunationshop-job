# qb-gunjob

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
    ```    ['gunshop'] = vector3(840.02, -1032.71, 28.19)```
