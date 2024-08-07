local QBCore = exports['qb-core']:GetCoreObject()
local ox_inventory = exports.ox_inventory

if Config.InvetorySystem == 'ox' then
  -- CHICKEN HORNSTARS --
  RegisterNetEvent('bd-hornysburger:server:makeHornstars', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'hb_chicken_strips_raw', 2, false) then
      lib.notify(source, {
        id = 'hornys_burgers',
        title = 'Hornys Burgers',
        description = 'You forget you need 2x Raw Chicken Strips to make Hornstars?',
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
    ox_inventory:AddItem(src, 'hb_chicken_hornstars', 2)
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You have deep fryed 2x Chicken Hornstars',
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
  -- CHICKEN FILLETS --
  RegisterNetEvent('bd-hornysburger:server:makeChickenFillets', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'hb_chicken_strips_raw', 2, false) then
      lib.notify(source, {
        id = 'hornys_burgers',
        title = 'Hornys Burgers',
        description = 'You forget you need 2x Raw Chicken Strips to make Chicken Fillets?',
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
    ox_inventory:AddItem(src, 'hb_chicken_fillet', 2)
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You have deep fryed 2 Chicken Fillets',
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
  -- HASHBROWNS --
  RegisterNetEvent('bd-hornysburger:server:makeHashbrowns', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'hb_potatoes', 2, false) then
      lib.notify(source, {
        id = 'hornys_burgers',
        title = 'Hornys Burgers',
        description = 'You forget you need 2x Potatoes to make Hashbrowns?',
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
    ox_inventory:AddItem(src, 'hb_hashbrowns', 2)
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You have deep fryed 2x Hashbrowns',
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
elseif Config.InvetorySystem == 'qb' then
  -- CHICKEN HORNSTARS --
  RegisterNetEvent('bd-hornysburger:server:makeHornstars', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'hb_chicken_strips_raw', 2, false) then
      lib.notify(source, {
        id = 'hornys_burgers',
        title = 'Hornys Burgers',
        description = 'You forget you need 2x Raw Chicken Strips to make Hornstars?',
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
    exports['qb-inventory']:AddItem(src, 'hb_chicken_hornstars', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_chicken_hornstars'], 'add', 2)
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You have deep fryed 2x Chicken Hornstars',
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
  -- CHICKEN FILLETS --
  RegisterNetEvent('bd-hornysburger:server:makeChickenFillets', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'hb_chicken_strips_raw', 2, false) then
      lib.notify(source, {
        id = 'hornys_burgers',
        title = 'Hornys Burgers',
        description = 'You forget you need 2x Raw Chicken Strips to make Chicken Fillets?',
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
    exports['qb-inventory']:AddItem(src, 'hb_chicken_fillet', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_chicken_fillet'], 'add', 2)
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You have deep fryed 2x Chicken Fillets',
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
  -- HASHBROWNS --
  RegisterNetEvent('bd-hornysburger:server:makeHashbrowns', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'hb_potatoes', 2, false) then
      lib.notify(source, {
        id = 'hornys_burgers',
        title = 'Hornys Burgers',
        description = 'You forget you need 2x Potatoes to make Hashbrowns?',
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
    exports['qb-inventory']:AddItem(src, 'hb_hashbrowns', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_hashbrowns'], 'add', 2)
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You have deep fryed 2x Hashbrowns',
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
end