local QBCore = exports['qb-core']:GetCoreObject()
local ox_inventory = exports.ox_inventory

if Config.InventorySystem == 'ox' then
  -- HASHBROWNS --
  RegisterNetEvent('bd-hornysburger:server:makeHashBrowns', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'hb_potatoes', 2, false) then
      lib.notify(source, {
        id = 'hornys_burgers',
        title = 'Hornys Burgers',
        description = 'You forget you need 2x Potatoes to make Hash Browns?',
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
      description = 'You have deep fryed 2x Hash Browns',
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
  -- CHICKEN STRIPS --
  RegisterNetEvent('bd-hornysburger:server:makeChickenStrips', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'hb_chicken_strips_raw', 2, false) then
      lib.notify(source, {
        id = 'hornys_burgers',
        title = 'Hornys Burgers',
        description = 'You forget you need 2x Raw Chicken Strips to make Chicken Strips',
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
    ox_inventory:AddItem(src, 'hb_chicken_fillets', 2)
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You have deep fryed 2x Chicken Strips',
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
  -- HORN STARS --
  RegisterNetEvent('bd-hornysburger:server:makeHornStars', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'hb_chicken_strips_raw', 2, false) then
      lib.notify(source, {
        id = 'hornys_burgers',
        title = 'Hornys Burgers',
        description = 'You forget you need 2x Chicken Strips Raw to make Horn Stars',
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
      description = 'You have deep fryed 2x Horn Stars',
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
elseif Config.InventorySystem == 'qb' then
  -- HASHBROWNS --
  RegisterNetEvent('bd-hornysburger:server:makeHashBrowns', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'hb_potatoes', 2, false) then
      lib.notify(source, {
        id = 'hornys_burgers',
        title = 'Hornys Burgers',
        description = 'You forget you need 2x Potatoes to make Hash Browns?',
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
  -- CHICKEN STRIPS --
  RegisterNetEvent('bd-hornysburger:server:makeChickenStrips', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'hb_chicken_strips_raw', 2, false) then
      lib.notify(source, {
        id = 'hornys_burgers',
        title = 'Hornys Burgers',
        description = 'You forget you need 2x Raw Chicken Strups to make Chicken Fillets?',
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
    exports['qb-inventory']:AddItem(src, 'hb_chicken_fillets', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_chicken_fillets'], 'add', 2)
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
  -- HORN STARS --
  RegisterNetEvent('bd-hornysburger:server:makeHornStars', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'hb_chicken_strips_raw', 2, false) then
      lib.notify(source, {
        id = 'hornys_burgers',
        title = 'Hornys Burgers',
        description = 'You forget you need 2x Raw Chicken Strips to make HornStars?',
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
      description = 'You have deep fryed 2x Hornstars',
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
