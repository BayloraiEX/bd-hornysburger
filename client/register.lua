local QBCore = exports['qb-core']:GetCoreObject()

-- 1 --
exports['qb-target']:AddBoxZone("HornysBurgersRegister1", vector3(1259.11, -356.74, 69.08), 1.45, 1.35, {
	name = "HornysBurgersRegister1",
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

-- 2 --
exports['qb-target']:AddBoxZone("HornysBurgersRegister2", vector3(1260.5, -352.51, 69.08), 1.45, 1.35, {
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
exports['qb-target']:AddBoxZone("HornysBurgersRegister3", vector3(1258.13, -361.21, 69.08), 1.45, 1.35, {
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
exports['qb-target']:AddBoxZone("HornysBurgersRegister4", vector3(1256.74, -366.17, 69.08), 1.45, 1.35, {
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

