local QBCore = exports['qb-core']:GetCoreObject()

----- | MAKE CHERRY FLOAT | -----
RegisterNetEvent('bd-hornysburger:server:makeCherryFloat', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'hb_cherrys', 2, false) then
      lib.notify(source, {
        id = 'hornys_burgers',
        title = 'Hornys Burgers',
        description = 'You need Cherrys to make a Cherry Float',
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
    exports['qb-inventory']:AddItem(src, 'hb_cherry_float', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_cherry_float'], 'add', 2)
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You have made a Cherry Float',
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

----- | MAKE CHERRY POPPERT | -----
RegisterNetEvent('bd-hornysburger:server:makeCherryPopper', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'hb_cherrys', 2, false) then
      lib.notify(source, {
        id = 'hornys_burgers',
        title = 'Hornys Burgers',
        description = 'You need Cherrys to make a Cherry Popper',
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
    exports['qb-inventory']:AddItem(src, 'hb_cherrypopper', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_cherrypopper'], 'add', 2)
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You have made a Cherry Popper',
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

----- | MAKE ICECREAM CAKE | -----
RegisterNetEvent('bd-hornysburger:server:makeIcecreamCake', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'hb_icecream_mix', 2, false) then
      lib.notify(source, {
        id = 'hornys_burgers',
        title = 'Hornys Burgers',
        description = 'You need Icecream Mix to make Icecream Cake',
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
    exports['qb-inventory']:AddItem(src, 'hb_icecream_cake', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_icecream_cake'], 'add', 2)
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You have made a Icecream Cake',
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

----- | MAKE ICECREAM CONE | -----
RegisterNetEvent('bd-hornysburger:server:makeIcecreamCone', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'hb_icecream_mix', 2, false) then
      lib.notify(source, {
        id = 'hornys_burgers',
        title = 'Hornys Burgers',
        description = 'You need Icecream Mix to make Icecream Cone',
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
    exports['qb-inventory']:AddItem(src, 'hb_icecream_cone', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_icecream_cone'], 'add', 2)
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You have made a Icecream Cone',
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

----- | MAKE ICECREAM CAKE | -----
RegisterNetEvent('bd-hornysburger:server:makeIcecreamNuggets', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'hb_icecream_mix', 2, false) then
      lib.notify(source, {
        id = 'hornys_burgers',
        title = 'Hornys Burgers',
        description = 'You need Icecream Mix to make Icecream Nuggets',
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
    exports['qb-inventory']:AddItem(src, 'hb_icecream_nuggets', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_icecream_nuggets'], 'add', 2)
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You have made a Icecream Nuggets',
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
