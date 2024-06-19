local QBCore = exports['qb-core']:GetCoreObject()
----- | CREATING FRYER MENU LOCATION | -----
exports['qb-target']:AddBoxZone("HornysBurgersFryerMenu", vector3(1254.29, -352.8, 69.08), 1.45, 1.35, {
	name = "HornysBurgersFryerMenu",
	heading = 347.27,
	debugPoly = false,
	minZ = 67.08,
	maxZ = 72.08,
}, {
	options = {
		{
            type = "client",
            event = "bd-hornysburger:client:OpenFryerMenu",
			icon = "fa-solid fa-fire-burner",
			label = "Fryer Menu",
			job = "hornysburger",
		},
	},
	distance = 2.5
})
lib.registerContext({
  id = 'fryer_menu',
  title = 'Fryer Menu',
  options = {
    {
      title = '2x Hashbrowns',
      description = '2x Potatoes',
      icon = 'fire',
      iconColor = 'DarkSalmon',
      serverEvent = 'bd-hornysburger:server:makeHashbrowns'
    },
    {
      title = '2x Chicken Fillets',
      description = '2x Raw Chicken Strips',
      icon = 'fire',
      iconColor = 'DarkSalmon',
      serverEvent = 'bd-hornysburger:server:makeChickenFillets'
    },
    {
      title = '2x Chicken Hornstars',
      description = '2x Raw Chicken Strips',
      icon = 'fire',
      iconColor = 'DarkSalmon',
      serverEvent = 'bd-hornysburger:server:makeHornstars'
    }
  }
})
----- | REGISTERING MENU TO 'OpenFryerMenu' | -----
RegisterNetEvent('bd-hornysburger:client:OpenFryerMenu', function()
  lib.showContext('fryer_menu')
end)
