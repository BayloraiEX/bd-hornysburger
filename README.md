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
	hb_baconroll		         = { name = 'hb_baconroll',          label = 'Bacon Rolls', weight = 250, type = 'item', image = 'hb_baconroll.png', unique = false, useable = true, shouldClose = true, description = 'Bacon wrapped around cheese!' },
	hb_breakfast 			     = { name = 'hb_breakfast',          label = 'Breakfast Plate', weight = 250, type = 'item', image = 'hb_breakfast.png', unique = false, useable = true, shouldClose = true, description = 'Freshly Made Eggs'},
	hb_eggsbacon 			     = { name = 'hb_eggsbacon',          label = 'Eggs N Bacon With Toast', 	weight = 250, 		type = 'item', 		image = 'hb_eggsbacon.png', 	    unique = false, 	useable = true, 	shouldClose = true, description = 'Yummy Bacon N Eggs!'},
	hb_eggs_benedict		     = { name = 'hb_eggs_benedict',      label = 'Eggs Benedict', weight = 250, 		type = 'item', 		image = 'hb_eggs_benedict.png', 	unique = false, 	useable = true, 	shouldClose = true, description = 'Eggs Benedict'},
	hb_frenchtoast 			     = { name = 'hb_frenchtoast',        label = 'French Toast', weight = 250, 		type = 'item', 		image = 'hb_frenchtoast.png', 	    unique = false, 	useable = true, 	shouldClose = true, description = 'Yummy French Toast'},
	hb_french_toast_bacon	     = { name = 'hb_french_toast_bacon', label = 'French Toast N Bacon', 	weight = 250, 		type = 'item', 		image = 'hb_french_toast_bacon.png',unique = false, 	useable = true, 	shouldClose = true, description = 'Yummy French Toast WITH BACON...'},
	hb_hashbrowns 		         = { name = 'hb_hashbrowns',         label = 'Hashbrowns', weight = 150, 		type = 'item', 		image = 'hb_hashbrowns.png',        unique = false, 	useable = true, 	shouldClose = true, description = 'Once a potatoe and now a hashbrown'},
	hb_sausages                 = { name = 'hb_sausages',            label = 'Sausages',  weight = 150,       type = 'item',      image = 'hb_sausages.png',          unique = false,     useable = true,     shouldClose = true, description = 'Pork Sausages'},
	-- Burgers
	hb_chicken_burger           = { name = 'hb_chicken_burger',      label = 'Chicken Burger',           weight = 250,       type = 'item',      image = 'hb_chicken_burger.png',    unique = false,     useable = true,     shouldClose = true, description = 'Classic Chicken Burger'},
	hb_dblchicken_burger        = { name = 'hb_dblchicken_burger',   label = 'DBL Chicken Burger',       weight = 250,       type = 'item',      image = 'hb_dblchicken_burger.png', unique = false,     useable = true,     shouldClose = true, description = 'Big Chicken Burger'},
	hb_dblhorn_burger           = { name = 'hb_dblhorn_burger',      label = 'DBL Horn Burger',          weight = 300,       type = 'item',      image = 'hb_dblhorn_burger.png',    unique = false,     useable = true,     shouldClose = true, description = '3 Stack Burger!'},
	hb_hornburger               = { name = 'hb_hornburger',          label = 'Horn Burger',              weight = 250,       type = 'item',      image = 'hb_hornburger.png',        unique = false,     useable = true,     shouldClose = true, description = 'Classic Burger'},
	hb_hornburger_bacon         = { name = 'hb_hornburger_bacon',    label = 'Bacon Horn Burger',        weight = 250,       type = 'item',      image = 'hb_hornburger_bacon.png',  unique = false,     useable = true,     shouldClose = true, description = 'Classic Burger with Bacon!'},
	hb_hornburger_pickle        = { name = 'hb_hornburger_pickle',   label = 'Pickle Horn Burger',       weight = 175,       type = 'item',      image = 'hb_hornburger_pickle.png', unique = false,     useable = true,     shouldClose = true, description = 'Idk what Managment was thinking...'},
	hb_horn_sandwich            = { name = 'hb_horn_sandwich',       label = 'Horn Sandwich',            weight = 175,       type = 'item',      image = 'hb_horn_sandwich.png',     unique = false,     useable = true,     shouldClose = true, description = 'A classic Sandwich'},
	-- Chicken
	hb_chicken_fillet           = { name = 'hb_chicken_fillets',     label = 'Chicken Fillets',          weight = 200,       type = 'item',      image = 'hb_chicken_fillets.png',   unique = false,     useable = true,     shouldClose = true, description = 'Plenty of Fillets'},
	hb_chicken_hornstars        = { name = 'hb_chicken_hornstars',   label = 'Chicken Hornstars',        weight = 100,       type = 'item',     image = 'hb_chicken_hornstars.png',  unique = false,     useable = true,     shouldClose = true, description = 'Little Hornstars'},
	hb_chicken_salad            = { name = 'hb_chicken_salad',       label = 'Chicken Salad',            weight = 100,       type = 'item',      image = 'hb_chicken_salad.png',     unique = false,     useable = true,     shouldClose = true,  description = 'Fresh Chicken Salad'},
	hb_chicken_sandwich         = { name = 'hb_chicken_sandwich',    label = 'Chicken Sandwich',         weight = 125,       type = 'item',      image = 'hb_chicken_sandwich.png',  unique = false,     useable = true,     shouldClose = true, description = 'Why it look like a burger tho?'},
	hb_hunks_o_hen              = { name = 'hb_hunks_o_hen',         label = 'Hunks O Hen',              weight = 300,       type = 'item',      image = 'hb_hunks_o_hen.png',       unique = false,     useable = true,     shouldClose = true, description = 'Hunky Bunky Chunky'},
	-- Ice cream
	hb_cherry_float             = { name = 'hb_cherry_float',        label = 'Cherry Float',             weight = 150,       type = 'item',      image = 'hb_cherry_float.png',      unique = false,     useable = true,     shouldClose = true, description = 'Love you with a cherry on top'},
	hb_cherrypopper             = { name = 'hb_cherrypopper',        label = 'Cherry Popper',           weight = 150,       type = 'item',      image = 'hb_cherrypopper.png',      unique = false,    useable = true,     shouldClose = true, description = 'Wanna lick my Cherry Pop?'},
	hb_icecream_cake            = { name = 'hb_icecream_cake',       label = 'Icecream Cake',            weight = 200,       type = 'item',      image = 'hb_icecream_cake.png',     unique = false,     useable = true,     shouldClose = true, description = 'Love me some Icecream cake!'},
	hb_icecream_cone            = { name = 'hb_icecream_cone',       label = 'Vanilla Cone',             weight = 25,        type = 'item',      image = 'hb_icecream_cone.png',     unique = false,     useable = true,     shouldClose = true, description = 'Classic Vanilla Cone'},
	hb_icecream_nuggets         = { name = 'hb_icecream_nuggets',    label = 'Icecream Nuggets',         weight = 125,       type = 'item',      image = 'hb_icecream_nuggets.png',  unique = false,     useable = true,     shouldClose = true, description = 'I like nuggets and I like icecream...'},
	-- Drinks
	hb_hercules 			     = { name = 'hb_hercules', 		     label = 'Hercules', 				weight = 180, 		type = 'item', 		image = 'hb_hercules.png', 		    unique = false, 	useable = true, 	shouldClose = true, description = 'Yummy'},
	hb_junk 		     	     = { name = 'hb_junk', 				 label = 'Junk', 			    	weight = 180, 		type = 'item', 		image = 'hb_junk.png', 		        unique = false, 	useable = true, 	shouldClose = true, description = 'ENERGRY!!!'},
	hb_orangotang 		     	 = { name = 'hb_orangotang', 	     label = 'Orang O Tang', 			weight = 180, 		type = 'item', 		image = 'hb_orangotang.png', 		unique = false, 	useable = true, 	shouldClose = true, description = 'Orang O Tang'},
	hb_raine 		         	 = { name = 'hb_raine', 		     label = 'Raine', 			        weight = 180, 		type = 'item', 		image = 'hb_raine.png', 		unique = false, 	useable = true,     shouldClose = true, description = 'Good ol water'},
	hb_sprunk 			   	 	 = { name = 'hb_sprunk', 		     label = 'Sprunk', 					weight = 180, 		type = 'item', 		image = 'hb_sprunk.png', 			unique = false, 	useable = true, 	shouldClose = true, description = 'Nothing like an ice cold Sprunk'},
	hb_water_bottle 	     	 = { name = 'hb_water_bottle', 	     label = 'Water Bottle', 	        weight = 180, 		type = 'item', 		image = 'hb_water_bottle.png', 	    unique = false, 	useable = true, 	shouldClose = true, description = 'Good ol water'},
	-- Ingredients
	hb_bacon 			 	     = { name = 'hb_bacon', 			 label = 'Bacon', 			    	weight = 150, 		type = 'item', 		image = 'hb_bacon.png', 		    unique = false, 	useable = false, 	shouldClose = true, description = 'Ingredient'},
	hb_bun 				 	     = { name = 'hb_bun', 			 	 label = 'Buns', 			    	weight = 150, 		type = 'item', 		image = 'hb_bun.png', 		        unique = false, 	useable = false, 	shouldClose = true, description = 'Ingredient'},
	hb_patty_raw 				 = { name = 'hb_patty_raw', 	     label = 'Raw Patty', 				weight = 210, 		type = 'item', 		image = 'hb_patty_raw.png', 	    unique = false, 	useable = false, 	shouldClose = true, description = 'Ingredient'},
	hb_cherrys		 	         = { name = 'hb_cherrys', 			 label = 'Cherrys', 			    	weight = 150, 		type = 'item', 		image = 'hb_cherrys.png', 	        unique = false, 	useable = false, 	shouldClose = true, description = 'Ingredient'},
hb_oranges		         = { name = 'hb_oranges',          label = 'Oranges', weight = 150, type = 'item', image = 'hb_oranges.png', unique = false, useable = true, shouldClose = true, description = 'Ingredient!' },
    hb_chicken 				     = { name = 'hb_chicken', 		 	 label = 'Chicken', 			    	weight = 150, 		type = 'item', 		image = 'hb_chicken.png', 	        unique = false, 	useable = false, 	shouldClose = true, description = 'Ingredient'},
	hb_pickle 				     = { name = 'hb_pickle', 		 	 label = 'Pickles', 			    	weight = 150, 		type = 'item', 		image = 'hb_pickle.png', 	        unique = false, 	useable = false, 	shouldClose = true, description = 'Ingredient'},
	hb_sausage 			 	     = { name = 'hb_sausage', 		     label = 'Sausage', 			        weight = 150, 		type = 'item', 		image = 'hb_sausage.png', 		    unique = false, 	useable = false, 	shouldClose = true, description = 'Ingredient'},
	hb_bread 				     = { name = 'hb_bread', 			 label = 'Bread', 		        	weight = 125, 		type = 'item', 		image = 'hb_bread.png', 	        unique = false, 	useable = false, 	shouldClose = true, description = 'Ingredient'},
	hb_icecream_mix		 	     = { name = 'hb_icecream_mix', 		 label = 'Icecream Mix', 	    	weight = 150, 		type = 'item', 		image = 'hb_icecream_mix.png', 	    unique = false, 	useable = false, 	shouldClose = true, description = 'Ingredient'},
	hb_cheddar 					 = { name = 'hb_cheddar', 			 label = 'Cheddar Cheese', 			weight = 125, 		type = 'item', 		image = 'hb_cheddar.png', 	   		unique = false, useable = false, 	shouldClose = true, description = 'Ingredient'},
	hb_chicken_strips_raw	 	 = { name = 'hb_chicken_strips_raw', label = 'Chicken Strips Raw', 		weight = 180, 		type = 'item', 		image = 'hb_chicken_strips_raw.png', unique = false, 	useable = false, 	shouldClose = true, description = 'Ingredient'},
	hb_eggs 				 	 = { name = 'hb_eggs', 			 	 label = 'Eggs', 					weight = 150, 		type = 'item', 		image = 'hb_eggs.png', 	    		unique = false, 	useable = false, 	shouldClose = true, description = 'Ingredient'},
	hb_gratedcheese 	 		 = { name = 'hb_gratedcheese', 		 label = 'Grated Cheese', 			weight = 150, 		type = 'item', 		image = 'hb_gratedcheese.png', 		unique = false, 	useable = false, 	shouldClose = true, description = 'Ingredient'},
	hb_hot_sauce 		    	 = { name = 'hb_hot_sauce', 		 label = 'Hot Sauce', 	        	weight = 125, 		type = 'item', 		image = 'hb_hot_sauce.png',      	unique = false, 	useable = false, 	shouldClose = true, description = 'Ingredient'},
	hb_lettuce 		 		     = { name = 'hb_lettuce', 			 label = 'Lettuce', 			     	weight = 100, 		type = 'item', 		image = 'hb_lettuce.png', 			unique = false, 	useable = false, 	shouldClose = true, description = 'Ingredient'},
	hb_potatoes 		 	 	 = { name = 'hb_potatoes', 			 label = 'Potatoes', 				weight = 100, 		type = 'item', 		image = 'hb_potatoes.png', 			unique = false, 	useable = false, 	shouldClose = true, description = 'Ingredient'},
	hb_sugar_cubes		 	 	 = { name = 'hb_sugar_cubes', 		 label = 'Sguar Cubes', 				weight = 100, 		type = 'item', 		image = 'hb_sugar_cubes.png',    	unique = false, 	useable = false, 	shouldClose = true, description = 'Ingredient'},
	hb_tomato 		     	 	 = { name = 'hb_tomato', 			 label = 'Tomato', 		     		weight = 100, 		type = 'item', 		image = 'hb_tomato.png', 			unique = false, 	useable = false, 	shouldClose = true, description = 'Ingredient'},
	hb_wraps 		    	 	 = { name = 'hb_wraps', 	    	 label = 'Wraps', 		    	weight = 100, 	    type = 'item', 		image = 'hb_wraps.png', 			unique = false, 	useable = false, 	shouldClose = true, description = 'Ingredient'},
	hb_carbonated_water     	 = { name = 'hb_carbonated_water', 	 label = 'Carbonated Water', 		weight = 100, 		type = 'item', 		image = 'hb_carbonated_water.png', 	unique = false, 	useable = false, 	shouldClose = true,  description = 'Ingredient'},
```
Copy and paste this into your qb-core --> Shared --> jobs.lua
```
QBShared.Jobs = {
	hornysburger = {
		label = 'Hornys Burgers',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Janitor', payment = 30 },
			['1'] = { name = 'Employee', payment = 40 },
			['2'] = { name = 'Sr-Employee', payment = 50 },
			['3'] = { name = 'Ast-Manager', payment = 60 },
			['4'] = { name = 'Manager', payment = 75 },
			['5'] = { name = 'CEO', payment = 90 },
		},
	},
}
```
Copy and paste this into your qb-smallresources --> config.lua
```
Config.Consumables = {
    eat = {
        -- HORNYS ITEMS --
        -- Breakfast
        ['hb_baconroll'] = math.random(45, 65),
        ['hb_breakfast'] = math.random(45, 65),
        ['hb_eggs_benedict'] = math.random(45, 65),
        ['hb_eggsbacon'] = math.random(45, 65),
        ['hb_frenchtoast'] = math.random(45, 65),
        ['hb_french_toast_bacon'] = math.random(45, 65),
        ['hb_hashbrowns'] = math.random(45, 65),
        ['hb_sausages'] = math.random(45, 65),
        -- Burgers
        ['hb_chicken_burger'] = math.random(45, 65),
        ['hb_dblchicken_burger'] = math.random(45, 65),
        ['hb_dblhorn_burger'] = math.random(45, 65),
        ['hb_horn_sandwich'] = math.random(45, 65),
        ['hb_hornburger_bacon'] = math.random(45, 65),
        ['hb_hornburger_pickle'] = math.random(45, 65),
        ['hb_hornburger'] = math.random(45, 65),
        -- Chicken
        ['hb_chicken_fillets'] = math.random(45, 65),
        ['hb_chicken_hornstars'] = math.random(45, 65),
        ['hb_chicken_salad'] = math.random(45, 65),
        ['hb_chicken_sandwich'] = math.random(45, 65),
        ['hb_hunks_o_hen'] = math.random(45, 65),
        -- Ice cream
        ['hb_cherry-float'] = math.random(15, 30),
        ['hb_cherrypopper'] = math.random(15, 30),
        ['hb_icecream_cake'] = math.random(25, 50),
        ['hb_icecream_cone'] = math.random(5, 10),
        ['hb_icecream_nuggets'] = math.random(30, 60),
    },
    drink = {
        --HORNYS ITEMS --
        ['hb_hercules'] = math.random(45, 65),
        ['hb_junk'] = math.random(45, 65),
        ['hb_orangotang'] = math.random(45, 65),
        ['hb_ecola'] = math.random(45, 65),
        ['hb_raine'] = math.random(45, 65),
        ['hb_sprunk'] = math.random(45, 65),
        ['hb_water_bottle'] = math.random(45, 65),
        -- Ice cream
        ['hb_cherry_float'] = math.random(20, 40),
        ['hb_cherrypopper'] = math.random(15, 30),
        ['hb_icecream_cake'] = math.random(10, 20),
        ['hb_icecream_cone'] = math.random(15, 30),
        ['hb_icecream_nuggets'] = math.random(10, 20),
    },
}
```
 Next take the images from bd-hornysburgers images folder and put them into your qb-inventory --> html --> images
 And your done! Enjoy
