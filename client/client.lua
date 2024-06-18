local QBCore = exports['qb-core']:GetCoreObject()
PlayerJob = {}

----- | GARAGE LOGIC | -----
RegisterNetEvent('bd-hornysburger:client:jobGarage', function(vehicle)
    local vehicle = Config.Vehicle
    local coords = Config.VehicleSpawn
    QBCore.Functions.SpawnVehicle(vehicle, function(veh)
        SetVehicleNumberPlateText(veh, "HORNYS"..tostring(math.random(1000, 9999)))
        DecorSetFloat(veh, "t_vehicle", 1)
        SetEntityAsMissionEntity(veh, true, true)
        TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
        TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(veh))
        SetVehicleEngineOn(veh, true, true)
        CurrentPlate = QBCore.Functions.GetPlate(veh)
        SetVehicleFuelLevel(veh, 100.0)
        SetVehicleDirtLevel(veh, 0)
    end, coords, true)
end)

RegisterNetEvent('bd-hornysburger:client:storeGarage', function()
    local veh = QBCore.Functions.GetClosestVehicle()
    if DecorExistOn((veh), "t_vehicle") then
        QBCore.Functions.DeleteVehicle(veh)
        lib.notify({
            id = 'hornys_garage',
            title = 'Hornys Garage',
            description = 'You returned the vehicle.',
            showDuration = false,
            position = 'top-right',
            style = {
                backgroundColor = '#141517',
                color = '#EBE000',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'square-parking',
            iconColor = '#EBE000'
        })
    else
        lib.notify({
            id = 'hornys_garage',
            title = 'Hornys Garage',
            description = 'This is not a work vehicle.',
            showDuration = false,
            position = 'top-right',
            style = {
                backgroundColor = '#141517',
                color = 'EBE000',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'square-parking',
            iconColor = 'EBE000'
        })
    end
end)

----- | CREATING INVENTORIES | -----
-- 1 --
exports['qb-target']:AddBoxZone("HornysBurgersFrontTray1", vector3(1248.81, -358.92, 69.08), 1.45, 1.35, {
	name = "HornysBurgersFrontTray1",
	heading = 347.27,
	debugPoly = true,
	minZ = 67.08,
	maxZ = 72.08,
}, {
	options = {
		{
            type = "client",
            event = "bd-hornysburger:client:frontTray1",
			icon = "fa-solid fa-equals",
			label = "Counter",
		},
	},
	distance = 2.5
})

RegisterNetEvent("bd-hornysburger:client:frontTray1", function()
    TriggerServerEvent('bd-hornysburger:server:frontTray1')
end)

-- 2 --
exports['qb-target']:AddBoxZone("HornysBurgersFrontTray2", vector3(1250.1, -359.35, 69.08), 1.45, 1.35, {
	name = "HornysBurgersFrontTray2",
	heading = 347.27,
	debugPoly = true,
	minZ = 67.08,
	maxZ = 72.08,
}, {
	options = {
		{
            type = "client",
            event = "bd-hornysburger:client:frontTray2",
			icon = "fa-solid fa-equals",
			label = "Counter",
		},
	},
	distance = 2.5
})

RegisterNetEvent("bd-hornysburger:client:frontTray2", function()
    TriggerServerEvent('bd-hornysburger:server:frontTray2')
end)

-- 3 --
exports['qb-target']:AddBoxZone("HornysBurgersFrontTray3", vector3(1251.48, -359.69, 69.08), 1.45, 1.35, {
	name = "HornysBurgersFrontTray3",
	heading = 347.27,
	debugPoly = true,
	minZ = 67.08,
	maxZ = 72.08,
}, {
	options = {
		{
            type = "client",
            event = "bd-hornysburger:client:frontTray3",
			icon = "fa-solid fa-equals",
			label = "Counter",
		},
	},
	distance = 2.5
})

RegisterNetEvent("bd-hornysburger:client:frontTray3", function()
    TriggerServerEvent('bd-hornysburger:server:frontTray3')
end)

-- 4 --
exports['qb-target']:AddBoxZone("HornysBurgersFrontTray4", vector3(1253.24, -358.77, 69.08), 1.45, 1.35, {
	name = "HornysBurgersFrontTray4",
	heading = 347.27,
	debugPoly = true,
	minZ = 67.08,
	maxZ = 72.08,
}, {
	options = {
		{
            type = "client",
            event = "bd-hornysburger:client:frontTray4",
			icon = "fa-solid fa-equals",
			label = "Counter",
		},
	},
	distance = 2.5
})

RegisterNetEvent("bd-hornysburger:client:frontTray4", function()
    TriggerServerEvent('bd-hornysburger:server:frontTray4')
end)

-- FRIDGE --
exports['qb-target']:AddBoxZone("HornysBurgersJobFridge", vector3(1249.66, -352.3, 69.08), 1.45, 1.35, {
	name = "HornysBurgersJobFridge",
	heading = 347.27,
	debugPoly = true,
	minZ = 67.08,
	maxZ = 72.08,
}, {
	options = {
		{
            type = "client",
            event = "bd-hornysburger:client:jobFridge",
			icon = "fa-solid fa-temperature-empty",
			label = "Fridge",
			job = "hornysburger",
		},
	},
	distance = 2.5
})

RegisterNetEvent("bd-hornysburger:client:jobFridge", function()
    TriggerServerEvent('bd-hornysburger:server:jobFridge')
end)

-- HEATER --
exports['qb-target']:AddBoxZone("HornysBurgersJobHeater", vector3(1251.99, -356.94, 69.08), 1.45, 1.35, {
	name = "HornysBurgersJobHeater",
	heading = 347.27,
	debugPoly = true,
	minZ = 67.08,
	maxZ = 72.08,
}, {
	options = {
		{
            type = "client",
            event = "bd-hornysburger:client:jobHeater",
			icon = "fa-solid fa-temperature-arrow-up",
			label = "Heater",
			job = "hornysburger",
		},
	},
	distance = 2.5
})

RegisterNetEvent("bd-hornysburger:client:jobHeater", function()
    TriggerServerEvent('bd-hornysburger:server:jobHeater')
end)

-- BACK STORAGE --
exports['qb-target']:AddBoxZone("HornysBurgersBackStorage", vector3(1247.86, -351.78, 69.08), 1.45, 1.35, {
	name = "HornysBurgersBackStorage",
	heading = 347.27,
	debugPoly = true,
	minZ = 67.08,
	maxZ = 72.08,
}, {
	options = {
		{
            type = "client",
            event = "bd-hornysburger:client:backStorage",
			icon = "fa-solid fa-boxes-stacked",
			label = "Storage",
			job = "hornysburger",
		},
	},
	distance = 2.5
})

RegisterNetEvent("bd-hornysburger:client:backStorage", function()
    TriggerServerEvent('bd-hornysburger:server:backStorage')
end)

-- SHOP --
exports['qb-target']:AddBoxZone("HornysBurgersShop", vector3(1253.15, -349.55, 69.08), 1.45, 1.35, {
	name = "HornysBurgersShop",
	heading = 347.27,
	debugPoly = true,
	minZ = 67.08,
	maxZ = 72.08,
}, {
	options = {
		{
            type = "client",
            event = "bd-hornysburger:client:ingredientShop",
			icon = "fa-solid fa-basket-shopping",
			label = "Hornys Shop",
			job = "hornysburger",
		},
	},
	distance = 2.5
})

RegisterNetEvent("bd-hornysburger:client:ingredientShop", function()
    TriggerServerEvent('bd-hornysburger:server:ingredientShop')
end)

----- | SETTING THE CLOCK IN/OUT TARGET | -----
exports['qb-target']:AddBoxZone("HornysBurgersClock", vector3(1244.27, -350.32, 69.08), 1.45, 1.35, {
	name = "HornysBurgersClock",
	heading = 347.27,
	debugPoly = true,
	minZ = 67.08,
	maxZ = 72.08,
}, {
	options = {
		{
            type = "client",
            event = "bd-hornysburger:client:ToggleDuty",
			icon = "fa-solid fa-clipboard-user",
			label = "Clock In/Out",
			job = "hornysburger",
		},
	},
	distance = 2.5
})

----- | REGISTERING THE EVENT | -----
RegisterNetEvent('bd-hornysburger:client:ToggleDuty', function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)

