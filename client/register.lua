local QBCore = exports['qb-core']:GetCoreObject()

if Config.TargetSystem == 'ox' then
	-- 1 --
	exports.ox_target:addBoxZone({
		coords = vector4(1248.11, -358.6, 69.09, 168.47),
		size = vec3(1, 1, 1),
		rotation = 45,
		options = {
			{
				name = 'hornysburger_register1',
				event = 'bd-hornysburger:client:bill',
				icon = 'fa-solid fa-cash-register',
				label = 'Register',
				groups = {
					Config.Jobname
				},
			},
		}
	})
	-- 2 --
	exports.ox_target:addBoxZone({
		coords = vector4(1249.46, -358.78, 69.1, 166.01),
		size = vec3(1, 1, 1),
		rotation = 45,
		options = {
			{
				name = 'hornysburger_register2',
				event = 'bd-hornysburger:client:bill',
				icon = 'fa-solid fa-cash-register',
				label = 'Register',
				groups = {
					Config.Jobname
				},
			},
		}
	})
	-- 3 --
	exports.ox_target:addBoxZone({
		coords = vector4(1250.82, -359.27, 69.09, 161.02),
		size = vec3(1, 1, 1),
		rotation = 45,
		options = {
			{
				name = 'hornysburger_register3',
				event = 'bd-hornysburger:client:bill',
				icon = 'fa-solid fa-cash-register',
				label = 'Register',
				groups = {
					Config.Jobname
				},
			},
		}
	})
	-- 4 --
	exports.ox_target:addBoxZone({
		coords = vector4(1252.9, -357.5, 69.02, 67.51),
		size = vec3(1, 1, 1),
		rotation = 45,
		options = {
			{
				name = 'hornysburger_register4',
				event = 'bd-hornysburger:client:bill',
				icon = 'fa-solid fa-cash-register',
				label = 'Register',
				groups = {
					Config.Jobname
				},
			},
		}
	})
elseif Config.TargetSystem == 'qb' then
	-- 1 --
	exports['qb-target']:AddBoxZone("HornysBurgersRegister1", vector3(1248.14, -358.73, 69.08), 1.45, 1.35, {
		name = "HornysBurgersRegister1",
		heading = 347.27,
		debugPoly = false,
		minZ = 67.08,
		maxZ = 72.08,
	}, {
		options = {
			{
				type = "client",
				event = "bd-hornysburger:client:bill",
				icon = "fa-solid fa-cash-register",
				label = "Register",
				job = "hornysburger",
			},
		},
		distance = 2.5
	})
	-- 2 --
	exports['qb-target']:AddBoxZone("HornysBurgersRegister2", vector3(1249.36, -359.04, 69.08), 1.45, 1.35, {
		name = "HornysBurgersRegister2",
		heading = 347.27,
		debugPoly = true,
		minZ = 67.08,
		maxZ = 72.08,
	}, {
		options = {
			{
				type = "client",
				event = "bd-hornysburger:client:bill",
				icon = "fa-solid fa-cash-register",
				label = "Register",
				job = "hornysburger",
			},
		},
		distance = 2.5
	})
	-- 3 --
	exports['qb-target']:AddBoxZone("HornysBurgersRegister3", vector3(1250.8, -359.44, 69.08), 1.45, 1.35, {
		name = "HornysBurgersRegister3",
		heading = 347.27,
		debugPoly = true,
		minZ = 67.08,
		maxZ = 72.08,
	}, {
		options = {
			{
				type = "client",
				event = "bd-hornysburger:client:bill",
				icon = "fa-solid fa-cash-register",
				label = "Register",
				job = "hornysburger",
			},
		},
		distance = 2.5
	})
	-- 4 --
	exports['qb-target']:AddBoxZone("HornysBurgersRegister4", vector3(1252.9, -357.55, 69.08), 1.45, 1.35, {
		name = "HornysBurgersRegister4",
		heading = 347.27,
		debugPoly = true,
		minZ = 67.08,
		maxZ = 72.08,
	}, {
		options = {
			{
				type = "client",
				event = "bd-hornysburger:client:bill",
				icon = "fa-solid fa-cash-register",
				label = "Register",
				job = "hornysburger",
			},
		},
		distance = 2.5
	})
end

RegisterNetEvent("bd-hornysburger:client:bill", function()
    local bill = lib.inputDialog('Register', {
        {type = 'input', label = 'Citizen ID', description = 'Players Citizen ID', icon = 'hashtag'},
        {type = 'number', label = 'Bill Price', description = 'The Bills Total Price', icon = 'dollar-sign'}
    })
    if bill ~= nil then
        if bill[1] == nil or bill[2] == nil then
            return
        end
        TriggerServerEvent('bd-hornysburger:server:billPlayer', bill[1], bill[2])
    end
end)

