local QBCore = exports['qb-core']:GetCoreObject()
----- | CREATING DRINK MENU LOCATION | -----
exports['qb-target']:AddBoxZone("HornysBurgersIcecreamMenu", vector3(1246.06, -357.46, 69.08), 1.45, 1.35, {
	name = "HornysBurgersIcecreamMenu",
	heading = 347.27,
	debugPoly = true,
	minZ = 67.08,
	maxZ = 72.08,
}, {
	options = {
		{
            type = "client",
            event = "bd-hornysburger:client:OpenIcecreamMenu",
			icon = "fa-solid fa-ice-cream",
			label = "Icecream Menu",
			job = "hornysburger",
		},
	},
	distance = 2.5
})
----- | CREATING MENU | -----
lib.registerContext({
  id = 'icecream_menu',
  title = 'Icecream Menu',
  options = {
    {
      title = '1x Cherry Float',
      description = '1x Cherry | 1x Icecream Mix',
      icon = 'ice-cream',
      iconColor = 'Crimson',
      serverEvent = 'bd-hornysburger:server:makeCherryFloat'
    },
    {
      title = '1x Cherry Popper',
      description = '1x Cherry | 1x Icecream Mix',
      icon = 'ice-cream',
      iconColor = 'Crimson',
      serverEvent = 'bd-hornysburger:server:makeCherryPopper'
    },
    {
      title = '1x Icecream Cake',
      description = '3x Icecream Mix',
      icon = 'ice-cream',
      iconColor = 'LightSkyBlue',
      serverEvent = 'bd-hornysburger:server:makeIcecreamCake'
    },
    {
      title = '1x Icecream Cone',
      description = '1x Icecream Mix',
      icon = 'faucet',
      iconColor = 'LightSkyBlue',
      serverEvent = 'bd-hornysburger:server:makeIcecreamCone'
    },
    {
      title = '1x Icecream Nuggets',
      description = '2x Icecream Mix',
      icon = 'faucet',
      iconColor = 'LightSkyBlue',
      serverEvent = 'bd-hornysburger:server:makeIcecreamNuggets'
    },
  }
})
----- | REGISTERING MENU TO 'OpenDrinkMenu' | -----
RegisterNetEvent('bd-hornysburger:client:OpenIcecreamMenu', function()
  lib.showContext('icecream_menu')
end)