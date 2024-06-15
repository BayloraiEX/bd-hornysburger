# bd-hornysburger
QBCore Hornys Burgers Job Using ox_lib
 Join the Discord for support or questions!
 DISCORD https://discord.gg/hya9t8XfH8
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Simple and eazy setup!
 Drag bd-hornysburger into your resource folder and ensure bd-hornysburger

 Copy and Paste this into your qb-core --> Shared --> items.lua
```
QBShared.Items = {
	-- Hornys Burgers
	-- Breakfast Food
	["hb-baconroll"] 			    = {["name"] = "hb-baconroll", 			 	    ["label"] = "Bacon Rolls", 			    ["weight"] = 250, 		["type"] = "item", 		["image"] = "hb-baconroll.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Bacon wrapped around cheese!"},
	["hb-breakfast"] 			    = {["name"] = "hb-breakfast", 			 	    ["label"] = "Breakfast Plate", 		    ["weight"] = 250, 		["type"] = "item", 		["image"] = "hb-breakfast.png", 	    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Freshly Made Eggs"},
	["hb-eggsbacon"] 			    = {["name"] = "hb-eggsbacon", 			     	["label"] = "Eggs N Bacon With Toast", 	["weight"] = 250, 		["type"] = "item", 		["image"] = "hb-eggsbacon.png", 	    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Yummy Bacon N Eggs!"},
	["hb-eggs-benedict"] 			= {["name"] = "hb-eggs-benedict", 			 	["label"] = "Eggs Benedict", 			["weight"] = 250, 		["type"] = "item", 		["image"] = "hb-eggs-benedict.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Eggs Benedict"},
	["hb-frenchtoast"] 			    = {["name"] = "hb-frenchtoast", 			 	["label"] = "French Toast", 			["weight"] = 250, 		["type"] = "item", 		["image"] = "hb-frenchtoast.png", 	    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Yummy French Toast"},
	["hb-french-toast-bacon"] 	    = {["name"] = "hb-french-toast-bacon", 		 	["label"] = "French Toast N Bacon", 	["weight"] = 250, 		["type"] = "item", 		["image"] = "hb-french-toast-bacon.png",["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Yummy French Toast WITH BACON..."},
	["hb-hashbrowns"] 		        = {["name"] = "hb-hashbrowns", 			        ["label"] = "Hashbrowns", 		        ["weight"] = 150, 		["type"] = "item", 		["image"] = "hb-hashbrowns.png",        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Once a potatoe and now a hashbrown"},
	["hb-sausages"]                 = {["name"] = "hb-sausages",                    ["label"] = "Sausages",                 ["weight"] = 150,       ["type"] = "item",      ["image"] = "hb-sausages.png",          ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Pork Sausages"},
	-- Burgers
	["hb-chicken-burger"]           = {["name"] = "hb-chicken-burger",              ["label"] = "Chicken Burger",           ["weight"] = 250,       ["type"] = "item",      ["image"] = "hb-chicken-burger.png",    ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Classic Chicken Burger"},
	["hb-dblchicken-burger"]        = {["name"] = "hb-dblchicken-burger",           ["label"] = "DBL Chicken Burger",       ["weight"] = 250,       ["type"] = "item",      ["image"] = "hb-dblchicken-burger.png", ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Big Chicken Burger"},
	["hb-dblhorn-burger"]           = {["name"] = "hb-dblhorn-burger",              ["label"] = "DBL Horn Burger",          ["weight"] = 300,       ["type"] = "item",      ["image"] = "hb-dblhorn-burger.png",    ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "3 Stack Burger!"},
	["hb-hornburger"]               = {["name"] = "hb-hornburger",                  ["label"] = "Horn Burger",              ["weight"] = 250,       ["type"] = "item",      ["image"] = "hb-hornburger.png",        ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Classic Burger"},
	["hb-hornburger-bacon"]         = {["name"] = "hb-hornburger-bacon",            ["label"] = "Bacon Horn Burger",        ["weight"] = 250,       ["type"] = "item",      ["image"] = "hb-hornburger-bacon.png",  ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Classic Burger with Bacon!"},
	["hb-hornburger-pickle"]        = {["name"] = "hb-hornburger-pickle",           ["label"] = "Pickle Horn Burger",       ["weight"] = 175,       ["type"] = "item",      ["image"] = "hb-hornburger-pickle.png",["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Idk what Managment was thinking..."},
	["hb-horn-sandwich"]            = {["name"] = "hb-horn-sandwich",               ["label"] = "Horn Sandwich",            ["weight"] = 175,       ["type"] = "item",      ["image"] = "hb-horn-sandwich.png",     ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A classic Sandwich"},
	-- Chicken
	["hb-chicken-fillet"]           = {["name"] = "hb-chicken-fillets",             ["label"] = "Chicken Fillets",          ["weight"] = 200,       ["type"] = "item",      ["image"] = "hb-chicken-fillets.png",   ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Plenty of Fillets"},
	["hb-chicken-hornstars"]       = {["name"] = "hb-chicken-hornstars",         ["label"] = "Chicken Hornstars",        ["weight"] = 100,       ["type"] = "item",      ["image"] = "hb-chicken-hornstars.png", ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Little Hornstars"},
	["hb-chicken-salad"]            = {["name"] = "hb-chicken-salad",               ["label"] = "Chicken Salad",            ["weight"] = 100,       ["type"] = "item",      ["image"] = "hb-chicken-salad.png",     ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fresh Chicken Salad"},
	["hb-chicken-sandwich"]         = {["name"] = "hb-chicken-sandwich",            ["label"] = "Chicken Sandwich",         ["weight"] = 125,       ["type"] = "item",      ["image"] = "hb-chicken-sandwich.png",  ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Why it look like a burger tho?"},
	["hb-hunks-o-hen"]              = {["name"] = "hb-hunks-o-hen",                 ["label"] = "Hunks O Hen",              ["weight"] = 300,       ["type"] = "item",      ["image"] = "hb-hunks-o-hen.png",       ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Hunky Bunky Chunky"},
	-- Ice cream
	["hb-cherry-float"]             = {["name"] = "hb-cherry-float",                ["label"] = "Cherry Float",             ["weight"] = 150,       ["type"] = "item",      ["image"] = "hb-cherry-float.png",      ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Love you with a cherry on top"},
	["hb-cherrypopper"]              = {["name"] = "hb-cherrypopper",               ["label"] = "Cherry Popper",            ["weight"] = 150,       ["type"] = "item",      ["image"] = "hb-cherrypopper.png",      ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Wanna lick my Cherry Pop?"},
	["hb-icecream-cake"]            = {["name"] = "hb-icecream-cake",               ["label"] = "Icecream Cake",            ["weight"] = 200,       ["type"] = "item",      ["image"] = "hb-icecream-cake.png",     ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Love me some Icecream cake!"},
	["hb-icecream-cone"]            = {["name"] = "hb-icecream-cone",               ["label"] = "Vanilla Cone",             ["weight"] = 25,        ["type"] = "item",      ["image"] = "hb-icecream-cone.png",     ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Classic Vanilla Cone"},
	["hb-icecream-nuggets"]         = {["name"] = "hb-icecream-nuggets",            ["label"] = "Icecream Nuggets",         ["weight"] = 125,       ["type"] = "item",      ["image"] = "hb-icecream-nuggets.png",  ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "I like nuggets and I like icecream..."},
	-- Drinks
	["hb-hercules"] 			     = {["name"] = "hb-hercules", 				    ["label"] = "Hercules", 				["weight"] = 180, 		["type"] = "item", 		["image"] = "hb-hercules.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Yummy"},
	["hb-junk"] 		     	     = {["name"] = "hb-junk", 				        ["label"] = "Junk", 			    	["weight"] = 180, 		["type"] = "item", 		["image"] = "hb-junk.png", 		        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "ENERGRY!!!"},
	["hb-orangotang"] 		     	 = {["name"] = "hb-orangotang", 				["label"] = "Orang O Tang", 			["weight"] = 180, 		["type"] = "item", 		["image"] = "hb-orangotang.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Orang O Tang"},
	["hb-pepsi"] 			     	 = {["name"] = "hb-pepsi", 						["label"] = "Pepsi", 					["weight"] = 180, 		["type"] = "item", 		["image"] = "hb-pepsi.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Pepsi!"},
	["hb-raine"] 		         	 = {["name"] = "hb-raine", 		        		["label"] = "Raine", 			        ["weight"] = 180, 		["type"] = "item", 		["image"] = "hb-raine.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Good ol water"},
	["hb-sprunk"] 			   	 	 = {["name"] = "hb-sprunk", 					["label"] = "Sprunk", 					["weight"] = 180, 		["type"] = "item", 		["image"] = "hb-sprunk.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Nothing like an ice cold Sprunk"},
	["hb-water-bottle"] 	     	 = {["name"] = "hb-water-bottle", 	       		["label"] = "Water Bottle", 	        ["weight"] = 180, 		["type"] = "item", 		["image"] = "hb-water-bottle.png", 	    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Good ol water"},
	-- Ingredients
	["hb-bacon"] 			 	     = {["name"] = "hb-bacon", 			 	     	["label"] = "Bacon", 			    	["weight"] = 150, 		["type"] = "item", 		["image"] = "hb-bacon.png", 		    ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ingredient"},
	["hb-bun"] 				 	     = {["name"] = "hb-bun", 			 	     	["label"] = "Buns", 			    	["weight"] = 150, 		["type"] = "item", 		["image"] = "hb-bun.png", 		        ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ingredient"},
	["hb-patty-raw"] 				 = {["name"] = "hb-patty-raw", 			 	  	["label"] = "Raw Patty", 				["weight"] = 210, 		["type"] = "item", 		["image"] = "hb-patty-raw.png", 	    ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ingredient"},
	["hb-cherrys"] 			 	     = {["name"] = "hb-cherrys", 			 	   	["label"] = "Cherrys", 			    	["weight"] = 150, 		["type"] = "item", 		["image"] = "hb-cherrys.png", 	        ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ingredient"},
	["hb-chicken"] 				     = {["name"] = "hb-chicken", 		 	     	["label"] = "Chicken", 			    	["weight"] = 150, 		["type"] = "item", 		["image"] = "hb-chicken.png", 	        ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ingredient"},
	["hb-pickle"] 				     = {["name"] = "hb-pickle", 		 	     	["label"] = "Pickles", 			    	["weight"] = 150, 		["type"] = "item", 		["image"] = "hb-pickle.png", 	        ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ingredient"},
	["hb-sausage"] 			 	     = {["name"] = "hb-sausage", 			 	   	["label"] = "Sausage", 			    	["weight"] = 150, 		["type"] = "item", 		["image"] = "hb-sausage.png", 		    ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ingredient"},
	["hb-bread"] 				     = {["name"] = "hb-bread", 			        	["label"] = "Bread", 		        	["weight"] = 125, 		["type"] = "item", 		["image"] = "hb-bread.png", 	        ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ingredient"},
	["hb-icecream-mix"]		 	     = {["name"] = "hb-icecream-mix", 		     	["label"] = "Icecream Mix", 	    	["weight"] = 150, 		["type"] = "item", 		["image"] = "hb-icecream-mix.png", 	    ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ingredient"},
	["hb-cheddar"] 					 = {["name"] = "hb-cheddar", 			 		["label"] = "Cheddar Cheese", 			["weight"] = 125, 		["type"] = "item", 		["image"] = "hb-cheddar.png", 	   		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ingredient"},
	["hb-chicken-strips-raw"]	 	 = {["name"] = "hb-chicken-strips-raw", 		["label"] = "Chicken Strips Raw", 		["weight"] = 180, 		["type"] = "item", 		["image"] = "hb-chicken-strips-raw.png",["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ingredient"},
	["hb-eggs"] 				 	 = {["name"] = "hb-eggs", 			 			["label"] = "Eggs", 					["weight"] = 150, 		["type"] = "item", 		["image"] = "hb-eggs.png", 	    		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ingredient"},
	["hb-gratedcheese"] 	 		 = {["name"] = "hb-gratedcheese", 				["label"] = "Grated Cheese", 			["weight"] = 150, 		["type"] = "item", 		["image"] = "hb-gratedcheese.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ingredient"},
	["hb-hot-sauce"] 		    	 = {["name"] = "hb-hot-sauce", 				    ["label"] = "Hot Sauce", 	        	["weight"] = 125, 		["type"] = "item", 		["image"] = "hb-hot-sauce.png",      	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ingredient"},
	["hb-lettuce"] 		 		     = {["name"] = "hb-lettuce", 					["label"] = "Lettuce", 			     	["weight"] = 100, 		["type"] = "item", 		["image"] = "hb-lettuce.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ingredient"},
	["hb-potatoes"] 		 	 	 = {["name"] = "hb-potatoes", 					["label"] = "Potatoes", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "hb-potatoes.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ingredient"},
	["hb-sugar-cubes"] 		 	 	 = {["name"] = "hb-sugar-cubes", 				["label"] = "Sguar Cubes", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "hb-sugar-cubes.png",    	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ingredient"},
	["hb-tomato"] 		     	 	 = {["name"] = "hb-tomato", 					["label"] = "Tomato", 		     		["weight"] = 100, 		["type"] = "item", 		["image"] = "hb-tomato.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ingredient"},
	["hb-wraps"] 		    	 	 = {["name"] = "hb-wraps", 	    				["label"] = "Wraps", 		    		["weight"] = 100, 		["type"] = "item", 		["image"] = "hb-wraps.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ingredient"},
	["hb-carbonated-water"]     	 = {["name"] = "hb-carbonated-water", 			["label"] = "Carbonated Water", 		["weight"] = 100, 		["type"] = "item", 		["image"] = "hb-carbonated-water.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ingredient"},

	-- Meal Deals
	["hb-chicken-burger-meal"]       = {["name"] = "hb-chicken-burger-meal",        ["label"] = "Chicken Burger Meal",      ["weight"] = 500,       ["type"] = "item",      ["image"] = "hb-chicken-burger-meal.png",["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Contains a burger, chicken hornstars and a drink"},
	["hb-dblchicken-burger-meal"]    = {["name"] = "hb-dblchicken-burger-meal",     ["label"] = "DBL Chicken Burger Meal",  ["weight"] = 500,       ["type"] = "item",      ["image"] = "hb-dblchicken-burger-meal.png",["unique"] = false,  ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Contains a burger, chicken hornstars and a drink"},
	["hb-dblhorn-burger-meal"]       = {["name"] = "hb-dblhorn-burger-meal",        ["label"] = "DBL Horn Burger Meal",     ["weight"] = 500,       ["type"] = "item",      ["image"] = "hb-dblhorn-burger-meal.png",["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Contains a burger, chicken hornstars and a drink"},
	["hb-horn-burger-meal"]          = {["name"] = "hb-horn-burger-meal",           ["label"] = "Horn Burger Meal",         ["weight"] = 500,       ["type"] = "item",      ["image"] = "hb-horn-burger-meal.png",   ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Contains a burger, chicken hornstars and a drink"},
	["hb-baconhorn-burger-meal"]     = {["name"] = "hb-baconhorn-burger-meal",      ["label"] = "Bacon Horn Burger Meal",   ["weight"] = 500,       ["type"] = "item",      ["image"] = "hb-baconhorn-burger-meal.png",["unique"] = false,   ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Contains a burger, chicken hornstars and a drink"},
	["hb-picklehorn-burger-meal"]    = {["name"] = "hb-picklehorn-burger-meal",     ["label"] = "Pickle Horn Burger Meal",  ["weight"] = 500,       ["type"] = "item",      ["image"] = "hb-picklehorn-burger-meal.png",["unique"] = false,  ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Contains a burger, chicken hornstars and a drinkl"},
	["hb-horn-sandwich-meal"]        = {["name"] = "hb-horn-sandwich-meal",         ["label"] = "Horn Sandwich Meal",       ["weight"] = 500,       ["type"] = "item",      ["image"] = "hb-horn-sandwich-meal.png", ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Contains a sandwich, chicken hornstars and a drink"},
	["hb-chicken-sandwich-meal"]     = {["name"] = "hb-chicken-sandwich-meal",      ["label"] = "Chicken Sandwich Meal",    ["weight"] = 500,       ["type"] = "item",      ["image"] = "hb-chicken-sandwich-meal.png",["unique"] = false,    ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Contains a sandwich, chicken hornstars and a drink"},
}
```
Copy and paste this into your qb-core --> Shared --> jobs.lua
```
QBShared.Jobs = {
["hornysburger"] = {
		label = "Hornys Employee",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = "Trainee",
                payment = 90
            },
			['1'] = {
                name = "Employee",
                payment = 100
            },
			['2'] = {
                name = "Burger Flipper",
                payment = 110
            },
			['3'] = {
                name = "Manager",
                payment = 120
            },
			['4'] = {
                name = "CEO",
				isboss = true,
                --bankAuth = true,
                payment = 135
            },
        },
	},
}
```
 Next take the images from qb-hornysburgers images folder and put them into your qb-inventory --> html --> images
 And your done! Enjoy
