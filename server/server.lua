local QBCore = exports['qb-core']:GetCoreObject()

----- | CREATING INVENTORYS | -----
RegisterNetEvent('bd-hornysburger:server:frontTray1', function(frontTray1)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local stashName = 'Counter'

    if Player then
        exports['qb-inventory']:OpenInventory(src, stashName, {
            maxweight = 50000,
            slots = 15,
        })
    end
end)

RegisterNetEvent('bd-hornysburger:server:frontTray2', function(frontTray2)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local stashName = 'Counter'

    if Player then
        exports['qb-inventory']:OpenInventory(src, stashName, {
            maxweight = 50000,
            slots = 15,
        })
    end
end)

RegisterNetEvent('bd-hornysburger:server:frontTray3', function(frontTray3)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local stashName = 'Counter'

    if Player then
        exports['qb-inventory']:OpenInventory(src, stashName, {
            maxweight = 50000,
            slots = 15,
        })
    end
end)

RegisterNetEvent('bd-hornysburger:server:frontTray4', function(frontTray4)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local stashName = 'Counter'

    if Player then
        exports['qb-inventory']:OpenInventory(src, stashName, {
            maxweight = 50000,
            slots = 15,
        })
    end
end)

RegisterNetEvent('bd-hornysburger:server:jobFridge', function(jobFridge)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local stashName = 'Fridge'

    if Player then
        exports['qb-inventory']:OpenInventory(src, stashName, {
            maxweight = 750000,
            slots = 50,
        })
    end
end)

RegisterNetEvent('bd-hornysburger:server:jobHeater', function(jobHeater)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local stashName = 'Heater'

    if Player then
        exports['qb-inventory']:OpenInventory(src, stashName, {
            maxweight = 250000,
            slots = 25,
        })
    end
end)

RegisterNetEvent('bd-hornysburger:server:backStorage', function(backStorage)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local stashName = 'Storage'

    if Player then
        exports['qb-inventory']:OpenInventory(src, stashName, {
            maxweight = 1000000,
            slots = 100,
        })
    end
end)

----- | CREATING SHOP | ---- 
RegisterNetEvent('bd-hornysburger:server:ingredientShop', function(name)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local playerCoords = GetEntityCoords(playerPed)
    exports['qb-inventory']:CreateShop({
        name = 'ingredientShop',
        label = 'Hornys Shop',
        coords = vector3(1253.15, -349.55, 69.08), -- optional
        slots = 20,
        items = Config.Items
    })

    if Player then
        exports['qb-inventory']:OpenShop(source, 'ingredientShop')
    end
end)