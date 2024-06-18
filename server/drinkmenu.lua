local QBCore = exports['qb-core']:GetCoreObject()

----- | MAKE HERCULES | -----
RegisterNetEvent('bd-hornysburger:server:makeHercules', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if not Player then return end
  if not exports['qb-inventory']:RemoveItem(src, 'hb_sugar_cubes', 2, false) then
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You need Sugar Cubes to make a Hercules.',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#EBE000',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'burger',
      iconColor = '#EBE000'
    }) return end
  exports['qb-inventory']:AddItem(src, 'hb_hercules', 2, false, false)
  TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_hercules'], 'add', 2)
  lib.notify(source, {
    id = 'hornys_burgers',
    title = 'Hornys Burgers',
    description = 'You have mixed a hercules',
    showDuration = false,
    position = 'top-right',
    style = {
      backgroundColor = '#141517',
      color = '#EBE000',
      ['.description'] = {
          color = '#909296'
      }
  },
    icon = 'burger',
    iconColor = '#EBE000'
  })
end)

----- | MAKE JUNK ENERGY | -----
RegisterNetEvent('bd-hornysburger:server:makeJunkEnergy', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'hb_sugar_cubes', 2, false) then
      lib.notify(source, {
        id = 'hornys_burgers',
        title = 'Hornys Burgers',
        description = 'You need Sugar Cubes to make Junk Energy.',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#EBE000',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'burger',
        iconColor = '#EBE000'
      }) return end
    exports['qb-inventory']:AddItem(src, 'hb_junk', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_junk'], 'add', 2)
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You have mixed a Junk Energy',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#EBE000',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'burger',
      iconColor = '#EBE000'
    })
  end)

  ----- | MAKE Orang O Tang | -----
RegisterNetEvent('bd-hornysburger:server:makeOrangTang', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'hb_oranges', 2, false) then
      lib.notify(source, {
        id = 'hornys_burgers',
        title = 'Hornys Burgers',
        description = 'You need Oranges to make a Orang-O-Tang',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#EBE000',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'burger',
        iconColor = '#EBE000'
      }) return end
    exports['qb-inventory']:AddItem(src, 'hb_orangotang', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_orangotang'], 'add', 2)
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You have poured a Orang-O-Tang',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#EBE000',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'burger',
      iconColor = '#EBE000'
    })
  end)

  ----- | MAKE ECOLA | -----
RegisterNetEvent('bd-hornysburger:server:makeEcola', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'hb_carbonated_water', 2, false) then
      lib.notify(source, {
        id = 'hornys_burgers',
        title = 'Hornys Burgers',
        description = 'You need Carbonated Water to make a Ecola',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#EBE000',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'burger',
        iconColor = '#EBE000'
      }) return end
    exports['qb-inventory']:AddItem(src, 'hb_ecola', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_ecola'], 'add', 2)
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You have poured a Ecola',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#EBE000',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'burger',
      iconColor = '#EBE000'
    })
  end)

----- | MAKE SPRUNK | -----
RegisterNetEvent('bd-hornysburger:server:makeSprunk', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'hb_carbonated_water', 2, false) then
      lib.notify(source, {
        id = 'hornys_burgers',
        title = 'Hornys Burgers',
        description = 'You need Carbonated Water to make a Sprunk.',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#EBE000',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'burger',
        iconColor = '#EBE000'
      }) return end
    exports['qb-inventory']:AddItem(src, 'hb_sprunk', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_sprunk'], 'add', 2)
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You have poured a Sprunk',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#EBE000',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'burger',
      iconColor = '#EBE000'
    })
  end)

  ----- | MAKE WATER | -----
RegisterNetEvent('bd-hornysburger:server:makeWater', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    exports['qb-inventory']:AddItem(src, 'hb_water_bottle', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_water_bottle'], 'add', 2)
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You have grabbed a Water Bottle',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#EBE000',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'burger',
      iconColor = '#EBE000'
    })
  end)

----- | MAKE WATER | -----
RegisterNetEvent('bd-hornysburger:server:makeRaineWater', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    exports['qb-inventory']:AddItem(src, 'hb_raine', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_raine'], 'add', 2)
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You have grabbed a Raine Water Bottle',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#EBE000',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'burger',
      iconColor = '#EBE000'
    })
  end)

