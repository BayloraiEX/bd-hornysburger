local QBCore = exports['qb-core']:GetCoreObject()
local ox_inventory = exports.ox_inventory
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

if Config.TargetSystem == 'ox' then
	-- TRAY 1 --
	exports.ox_target:addBoxZone({
		coords = vector4(1248.76, -358.91, 69.09, 245.44),
		size = vec3(1, 1, 1),
		rotation = 45,
		options = {
			{
				name = 'hornyburgers_tray1',
				event = 'bd-hornysburger:client:frontTray1',
				icon = 'fa-solid fa-equals',
				label = 'Tray',
			},
		}
	})
	RegisterNetEvent("bd-hornysburger:client:frontTray1", function()
		if ox_inventory:openInventory('stash', 'hornysburgerTray1') == false then
			TriggerServerEvent('ox:hornysburgerTray1')
			ox_inventory:openInventory('stash', 'hornysburgerTray1')
		end
	end)
	-- TRAY 2 --
	exports.ox_target:addBoxZone({
		coords = vector4(1250.13, -359.37, 69.08, 250.19),
		size = vec3(1, 1, 1),
		rotation = 45,
		options = {
			{
				name = 'hornyburgers_tray2',
				event = 'bd-hornysburger:client:frontTray2',
				icon = 'fa-solid fa-equals',
				label = 'Tray',
			},
		}
	})
	RegisterNetEvent("bd-hornysburger:client:frontTray2", function()
		if ox_inventory:openInventory('stash', 'hornysburgerTray2') == false then
			TriggerServerEvent('ox:hornysburgerTray2')
			ox_inventory:openInventory('stash', 'hornysburgerTray2')
		end
	end)
	-- TRAY 3 --
	exports.ox_target:addBoxZone({
		coords = vector4(1251.53, -359.67, 69.09, 111.96),
		size = vec3(1, 1, 1),
		rotation = 45,
		options = {
			{
				name = 'hornyburgers_tray3',
				event = 'bd-hornysburger:client:frontTray3',
				icon = 'fa-solid fa-equals',
				label = 'Tray',
			},
		}
	})
	RegisterNetEvent("bd-hornysburger:client:frontTray3", function()
		if ox_inventory:openInventory('stash', 'hornysburgerTray3') == false then
			TriggerServerEvent('ox:hornysburgerTray3')
			ox_inventory:openInventory('stash', 'hornysburgerTray3')
		end
	end)
	-- TRAY 4 --
	exports.ox_target:addBoxZone({
		coords = vector4(1253.0, -358.92, 69.09, 344.73),
		size = vec3(1, 1, 1),
		rotation = 45,
		options = {
			{
				name = 'hornyburgers_tray4',
				event = 'bd-hornysburger:client:frontTray4',
				icon = 'fa-solid fa-equals',
				label = 'Tray',
			},
		}
	})
	RegisterNetEvent("bd-hornysburger:client:frontTray4", function()
		if ox_inventory:openInventory('stash', 'hornysburgerTray4') == false then
			TriggerServerEvent('ox:hornysburgerTray4')
			ox_inventory:openInventory('stash', 'hornysburgerTray4')
		end
	end)
	-- FRIDGE --
	exports.ox_target:addBoxZone({
		coords = vector4(1249.56, -352.16, 69.09, 164.43),
		size = vec3(1, 1, 1),
		rotation = 45,
		options = {
			{
				name = 'hornyburgers_fridge',
				event = 'bd-hornysburger:client:fridge',
				icon = 'fa-solid fa-temperature-empty',
				label = 'Fridge',
				groups = {
					Config.Jobname
				},
			},
		}
	})
	RegisterNetEvent("bd-hornysburger:client:fridge", function()
		if ox_inventory:openInventory('stash', 'hornysburgerFridge') == false then
			TriggerServerEvent('ox:hornysburgerFridge')
			ox_inventory:openInventory('stash', 'hornysburgerFridge')
		end
	end)
	-- HEATER --
	exports.ox_target:addBoxZone({
		coords = vector4(1251.94, -356.68, 68.86, 73.96),
		size = vec3(2, 2, 2),
		rotation = 45,
		options = {
			{
				name = 'hornyburgers_heater',
				event = 'bd-hornysburger:client:heater',
				icon = 'fa-solid fa-temperature-arrow-up',
				label = 'Heater',
				groups = {
					Config.Jobname
				},
			},
		}
	})
	RegisterNetEvent("bd-hornysburger:client:heater", function()
		if ox_inventory:openInventory('stash', 'hornysburgerHeater') == false then
			TriggerServerEvent('ox:hornysburgerHeater')
			ox_inventory:openInventory('stash', 'hornysburgerHeater')
		end
	end)
	-- BACK STORAGE --
	exports.ox_target:addBoxZone({
		coords = vector4(1247.99, -352.0, 69.09, 335.54),
		size = vec3(1, 1, 1),
		rotation = 45,
		options = {
			{
				name = 'hornyburgers_storage',
				event = 'bd-hornysburger:client:storage',
				icon = 'fa-solid fa-boxes-stacked',
				label = 'Storage',
				groups = {
					Config.Jobname
				},
			},
		}
	})
	RegisterNetEvent("bd-hornysburger:client:storage", function()
		if ox_inventory:openInventory('stash', 'hornysburgerStorage') == false then
			TriggerServerEvent('ox:hornysburgerStorage')
			ox_inventory:openInventory('stash', 'hornysburgerStorage')
		end
	end)
	-- SHOP --
	exports.ox_target:addBoxZone({
		coords = vector4(1252.21, -351.09, 69.08, 343.29),
		size = vec3(1, 1, 1),
		rotation = 45,
		options = {
			{
				name = 'hornysburger_shop',
				icon = 'fa-solid fa-shopping-basket',
				label = 'Ingredient Shop',
				groups = {
					Config.Jobname
				},
				onSelect = function ()
					exports.ox_inventory:openInventory('shop', {type = 'hbshop'})
				end
			},
		}
	})
elseif Config.TargetSystem == 'qb' then
	----- | CREATING STASHES | -----
	-- TRAY 1 --
	exports['qb-target']:AddBoxZone("HornysBurgersFrontTray1", vector3(1248.81, -358.92, 69.08), 1.45, 1.35, {
		name = "HornysBurgersFrontTray1",
		heading = 347.27,
		debugPoly = false,
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
	-- TRAY 2 --
	exports['qb-target']:AddBoxZone("HornysBurgersFrontTray2", vector3(1250.1, -359.35, 69.08), 1.45, 1.35, {
		name = "HornysBurgersFrontTray2",
		heading = 347.27,
		debugPoly = false,
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
	-- TRAY 3 --
	exports['qb-target']:AddBoxZone("HornysBurgersFrontTray3", vector3(1251.48, -359.69, 69.08), 1.45, 1.35, {
		name = "HornysBurgersFrontTray3",
		heading = 347.27,
		debugPoly = false,
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
	-- TRAY 4 --
	exports['qb-target']:AddBoxZone("HornysBurgersFrontTray4", vector3(1253.24, -358.77, 69.08), 1.45, 1.35, {
		name = "HornysBurgersFrontTray4",
		heading = 347.27,
		debugPoly = false,
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
		debugPoly = false,
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
		debugPoly = false,
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
		debugPoly = false,
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
	exports['qb-target']:AddBoxZone("HornysBurgersShop", vector3(1252.11, -351.45, 69.08), 1.45, 1.35, {
		name = "HornysBurgersShop",
		heading = 347.27,
		debugPoly = false,
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
end
if Config.TargetSystem == 'qb' then
	----- | SETTING THE CLOCK IN/OUT TARGET | -----
	exports['qb-target']:AddBoxZone("HornysBurgersClock", vector3(1244.27, -350.32, 69.08), 1.45, 1.35, {
		name = "HornysBurgersClock",
		heading = 347.27,
		debugPoly = false,
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
elseif Config.TargetSystem == 'ox' then
	exports.ox_target:addBoxZone({
		coords = vector4(1244.21, -350.45, 69.08, 345.8),
		size = vec3(1, 1, 1),
		rotation = 45,
		options = {
			{
				name = 'hornysburger_clock',
				icon = 'fa-solid fa-clipboard-user',
				event = 'bd-hornysburger:client:ToggleDuty',
				label = 'Clock In/Out',
				groups = {
					Config.Jobname
				},
			},
		}
	})
end
----- | REGISTERING THE EVENT | -----
RegisterNetEvent('bd-hornysburger:client:ToggleDuty', function()
	TriggerServerEvent("QBCore:ToggleDuty")
end)