local QBCore = exports['qb-core']:GetCoreObject()
----- | CREATING DRINK MENU LOCATION | -----
exports['qb-target']:AddBoxZone("HornysBurgersDrinkMenu", vector3(1246.25, -356.48, 69.08), 1.45, 1.35, {
	name = "HornysBurgersDrinkMenu",
	heading = 347.27,
	debugPoly = false,
	minZ = 67.08,
	maxZ = 72.08,
}, {
	options = {
		{
            type = "client",
            event = "bd-hornysburger:client:OpenDrinkMenu",
			icon = "fa-solid fa-faucet-drip",
			label = "Drink Menu",
			job = "hornysburger",
		},
	},
	distance = 2.5
})
----- | CREATING MENU | -----
lib.registerContext({
  id = 'hornys_drink_menu',
  title = 'Drink Menu',
  options = {
    {
      title = '2x Ecola',
      description = 'You need 2x Carbonated Water',
      icon = 'faucet',
      iconColor = 'Red',
      serverEvent = 'bd-hornysburger:server:makeEcola'
    },
    {
      title = '2x Sprunk',
      description = 'You need 2x Carbonated Water',
      icon = 'faucet',
      iconColor = 'SpringGreen',
      serverEvent = 'bd-hornysburger:server:makeSprunk'
    },
    {
      title = '2x Orang-O-Tang',
      description = 'You need 2x Oranges',
      icon = 'faucet',
      iconColor = 'DarkOrange',
      serverEvent = 'bd-hornysburger:server:makeOrangTang'
    },
    {
      title = '2x Hercules',
      description = 'You need 2x Sugar Cubes',
      icon = 'faucet',
      iconColor = 'Goldenrod',
      serverEvent = 'bd-hornysburger:server:makeHercules'
    },
    {
      title = '2x Junk',
      description = 'You need 2x Sugar Cubes',
      icon = 'faucet',
      iconColor = 'Green',
      serverEvent = 'bd-hornysburger:server:makeJunkEnegry'
    },
    {
      title = '2x Raine',
      description = 'Grab a Raine Bottled Water',
      icon = 'bottle-water',
      iconColor = 'Aqua',
      serverEvent = 'bd-hornysburger:server:makeRaineWater'
    },
    {
      title = '2x Water',
      description = 'Grab a Bottled Water',
      icon = 'bottle-water',
      iconColor = 'Aqua',
      serverEvent = 'bd-hornysburger:server:makeWater'
    }
  }
})
----- | REGISTERING MENU TO 'OpenDrinkMenu' | -----
RegisterNetEvent('bd-hornysburger:client:OpenDrinkMenu', function()
  lib.showContext('hornys_drink_menu')
end)
