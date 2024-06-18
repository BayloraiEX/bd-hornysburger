exports['qb-target']:AddBoxZone("HornysBurgersBossMenu", vector3(1238.41, -348.82, 69.08), 1.45, 1.35, {
	name = "HornysBurgersBossMenu",
	heading = 347.27,
	debugPoly = true,
	minZ = 67.08,
	maxZ = 72.08,
}, {
	options = {
		{
            type = "client",
            event = "qb-bossmenu:client:OpenMenu",
			icon = "fa-solid fa-fire-burner",
			label = "Cook Menu",
			job = {['hornysburger'] = 4},
		},
	},
	distance = 2.5
})