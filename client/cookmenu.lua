local QBCore = exports['qb-core']:GetCoreObject()
----- | CREATING COOK MENU LOCATION | ----- 
exports['qb-target']:AddBoxZone("HornysBurgersCookMenu", vector3(1253.42, -355.41, 69.08), 1.45, 1.35, {
	name = "HornysBurgersCookMenu",
	heading = 347.27,
	debugPoly = false,
	minZ = 67.08,
	maxZ = 72.08,
}, {
	options = {
		{
            type = "client",
            event = "bd-hornysburger:client:OpenCookMenu",
			icon = "fa-solid fa-fire-burner",
			label = "Cook Menu",
			job = "hornysburger",
		},
	},
	distance = 2.5
})
----- | CREATING MENU | -----
lib.registerContext({
  id = 'cook_menu',
  title = 'Cook Menu',
  options = {
    {
      title = '2x Bacon Rolls',
      description = 'You need 2x Bacon',
      icon = 'bacon',
      iconColor = 'DarkSalmon',
      serverEvent = 'bd-hornysburger:server:makeBaconRoll'
    },
    {
      title = '2x Breakfast Plate',
      description = 'You need 2x Eggs',
      icon = 'utensils',
      iconColor = 'DarkSalmon',
      serverEvent = 'bd-hornysburger:server:makeBreakfast'
    },
    {
      title = '2x Eggs n Bacon',
      description = 'You need 2x Eggs',
      icon = 'bacon',
      iconColor = 'DarkSalmon',
      serverEvent = 'bd-hornysburger:server:makeEggsBacon'
    },
    {
      title = '2x Eggs Benedict',
      description = 'You need 2x Eggs',
      icon = 'utensils',
      iconColor = 'DarkSalmon',
      serverEvent = 'bd-hornysburger:server:makeEggsBenedict'
    },
    {
      title = '2x French Toast',
      description = 'You need 2x Bread',
      icon = 'utensils',
      iconColor = 'DarkSalmon',
      serverEvent = 'bd-hornysburger:server:makeFrenchToast'
    },
    {
      title = '2x Bacon French Toast',
      description = 'You need 2x Bread',
      icon = 'bacon',
      iconColor = 'DarkSalmon',
      serverEvent = 'bd-hornysburger:server:makeFrenchToastBacon'
    },
    {
      title = '2x Sausages',
      description = 'You need 2x Sausage',
      icon = 'utensils',
      iconColor = 'DarkSalmon',
      serverEvent = 'bd-hornysburger:server:makeSausages'
    },
    {
      title = '2x Chicken Burger',
      description = 'You need 2x Chicken',
      icon = 'burger',
      iconColor = 'DarkSalmon',
      serverEvent = 'bd-hornysburger:server:makeChickenBurger'
    },
    {
      title = '2x DBL Chicken Burger',
      description = 'You need 2x Chicken',
      icon = 'burger',
      iconColor = 'DarkSalmon',
      serverEvent = 'bd-hornysburger:server:makeDBLChickenBurger'
    },
    {
      title = '2x DBL Horn Burger',
      description = 'You need 4x Raw Patty',
      icon = 'burger',
      iconColor = 'DarkSalmon',
      serverEvent = 'bd-hornysburger:server:makeDBLHornBurger'
    },
    {
      title = '2x Horn Burger',
      description = 'You need 2x Raw Patty',
      icon = 'burger',
      iconColor = 'DarkSalmon',
      serverEvent = 'bd-hornysburger:server:makeHornBurger'
    },
    {
      title = '2x Bacon Horn Burger',
      description = 'You need 2x Raw Patty',
      icon = 'burger',
      iconColor = 'DarkSalmon',
      serverEvent = 'bd-hornysburger:server:makeHornBurgerBacon'
    },
    {
      title = '2x Pickle Horn Burger',
      description = 'You need 2x Pickles',
      icon = 'burger',
      iconColor = 'DarkSalmon',
      serverEvent = 'bd-hornysburger:server:makeHornBurgerPickle'
    },
    {
      title = '2x Horn Sandwich',
      description = 'You need 2x Bread',
      icon = 'bread-slice',
      iconColor = 'DarkSalmon',
      serverEvent = 'bd-hornysburger:server:makeHornSandwich'
    },
    {
      title = '2x Chicken Salad',
      description = 'You need 2x Raw Chicken Strips',
      icon = 'bread-slice',
      iconColor = 'DarkSalmon',
      serverEvent = 'bd-hornysburger:server:makeChickenSalad'
    },
    {
      title = '2x Chicken Sandwich',
      description = 'You need 2x Raw Chicken Strips',
      icon = 'bread-slice',
      iconColor = 'DarkSalmon',
      serverEvent = 'bd-hornysburger:server:makeChickenSandwich'
    },
    {
      title = '2x Hunk O Hen',
      description = 'You need 2x Potatoes',
      icon = 'utensils',
      iconColor = 'DarkSalmon',
      serverEvent = 'bd-hornysburger:server:makeHunksHen'
    }
  }
})
----- | REGISTERING MENU TO 'OpenCookMenu' | -----
RegisterNetEvent('bd-hornysburger:client:OpenCookMenu', function()
  lib.showContext('cook_menu')
end)
