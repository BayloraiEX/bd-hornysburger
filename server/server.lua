local QBCore = exports['qb-core']:GetCoreObject()
local ox_inventory = exports.ox_inventory

if Config.InventorySystem == 'ox' then
    -- TRAY 1 --
    RegisterNetEvent('ox:hornysburgerTray1', function()
        ox_inventory:RegisterStash('hornysburgerTray1', 'Tray', 5, 5000, true)
    end)
    -- TRAY 2 --
    RegisterNetEvent('ox:hornysburgerTray2', function()
        ox_inventory:RegisterStash('hornysburgerTray2', 'Tray', 5, 5000, true)
    end)
    -- TRAY 3 --
    RegisterNetEvent('ox:hornysburgerTray3', function()
        ox_inventory:RegisterStash('hornysburgerTray3', 'Tray', 5, 5000, true)
    end)
    -- TRAY 4 --
    RegisterNetEvent('ox:hornysburgerTray4', function()
        ox_inventory:RegisterStash('hornysburgerTray4', 'Tray', 5, 5000, true)
    end)
    -- FRIDGE --
    RegisterNetEvent('ox:hornysburgerFridge', function()
        ox_inventory:RegisterStash('hornysburgerFridge', 'Fridge', 50, 750000, true)
    end)
    -- HEATER --
    RegisterNetEvent('ox:hornysburgerHeater', function()
        ox_inventory:RegisterStash('hornysburgerHeater', 'Heater', 25, 250000, true)
    end)
    -- STORAGE --
    RegisterNetEvent('ox:hornysburgerStorage', function()
        ox_inventory:RegisterStash('hornysburgerStorage', 'Storage', 100, 1000000, true)
    end)
    -- SHOP --
    exports.ox_inventory:RegisterShop('hbshop', {
        name = 'HornysBurger Shop',
        inventory = Config.Items
    })
elseif Config.InventorySystem == 'qb' then
    -- TRAY 1 --
    RegisterNetEvent('bd-hornysburger:server:hornysburgerTray1', function(hornysburgerTray1)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local stashName = 'Horny Burgers Counter1'
    
        if Player then
            exports['qb-inventory']:OpenInventory(src, stashName, {
                maxweight = 50000,
                slots = 15,
            })
        end
    end)
    -- TRAY 2 --
    RegisterNetEvent('bd-hornysburger:server:hornysburgerTray2', function(hornysburgerTray2)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local stashName = 'Horny Burgers Counter2'
    
        if Player then
            exports['qb-inventory']:OpenInventory(src, stashName, {
                maxweight = 50000,
                slots = 15,
            })
        end
    end)
    -- TRAY 3 --
    RegisterNetEvent('bd-hornysburger:server:hornysburgerTray3', function(hornysburgerTray3)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local stashName = 'Horny Burgers Counter3'
    
        if Player then
            exports['qb-inventory']:OpenInventory(src, stashName, {
                maxweight = 50000,
                slots = 15,
            })
        end
    end)
    -- TRAY 4 --
    RegisterNetEvent('bd-hornysburger:server:hornysburgerTray4', function(hornysburgerTray4)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local stashName = 'Horny Burgers Counter4'
    
        if Player then
            exports['qb-inventory']:OpenInventory(src, stashName, {
                maxweight = 50000,
                slots = 15,
            })
        end
    end)
    -- FRIDGE --
    RegisterNetEvent('bd-hornysburger:server:hornysburgerFridge', function(hornysburgerFridge)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local stashName = 'Horny Burgers Fridge'
    
        if Player then
            exports['qb-inventory']:OpenInventory(src, stashName, {
                maxweight = 750000,
                slots = 50,
            })
        end
    end)
    -- HEATER --
    RegisterNetEvent('bd-hornysburger:server:hornysburgerHeater', function(hornysburgerHeater)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local stashName = 'Horny Burgers Heater'
    
        if Player then
            exports['qb-inventory']:OpenInventory(src, stashName, {
                maxweight = 250000,
                slots = 25,
            })
        end
    end)
    -- BACK STORAGE --
    RegisterNetEvent('bd-hornysburger:server:hornysburgerbackStorage', function(hornysburgerbackStorage)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local stashName = 'Horny Burgers Storage'
    
        if Player then
            exports['qb-inventory']:OpenInventory(src, stashName, {
                maxweight = 1000000,
                slots = 100,
            })
        end
    end)
    RegisterNetEvent('bd-hornysburger:server:ingredientShop', function(name)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local playerCoords = GetEntityCoords(playerPed)
        exports['qb-inventory']:CreateShop({
            name = 'ingredientShop',
            label = 'Hornys Shop',
            coords = vector3(1253.15, -349.55, 69.08), -- match where the target is on client side
            slots = 20,
            items = Config.Items
        })
    
        if Player then
            exports['qb-inventory']:OpenShop(source, 'ingredientShop')
        end
    end)
end
