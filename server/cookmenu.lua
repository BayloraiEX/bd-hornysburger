local QBCore = exports['qb-core']:GetCoreObject()

----- | MAKE BACON ROLLS | -----
RegisterNetEvent('bd-hornysburger:server:makeBaconRoll', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if not Player then return end
  if not exports['qb-inventory']:RemoveItem(src, 'hb_bacon', 2, false) then
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You need bacon to make bacon rolls.',
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
  exports['qb-inventory']:AddItem(src, 'hb_baconroll', 2, false, false)
  TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_baconroll'], 'add', 2)
  lib.notify(source, {
    id = 'hornys_burgers',
    title = 'Hornys Burgers',
    description = 'You have cooked Bacon Rolls',
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

----- | MAKE BREAKFAST PLATE | -----
RegisterNetEvent('bd-hornysburger:server:makeBreakfast', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if not Player then return end
  if not exports['qb-inventory']:RemoveItem(src, 'hb_eggs', 2, false) then
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You need eggs to make a Breakfast Plate',
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
  exports['qb-inventory']:AddItem(src, 'hb_breakfast', 2, false, false)
  TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_breakfast'], 'add', 2)
  lib.notify(source, {
    id = 'hornys_burgers',
    title = 'Hornys Burgers',
    description = 'You have cooked a Breakfast Plate',
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

----- | MAKE EGGS N BACON WITH TOAST | -----
RegisterNetEvent('bd-hornysburger:server:makeEggsBacon', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if not Player then return end
  if not exports['qb-inventory']:RemoveItem(src, 'hb_eggs', 2, false) then
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You need eggs to make Eggs n Bacon with Toast',
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
  exports['qb-inventory']:AddItem(src, 'hb_eggsbacon', 2, false, false)
  TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_eggsbacon'], 'add', 2)
  lib.notify(source, {
    id = 'hornys_burgers',
    title = 'Hornys Burgers',
    description = 'You have cooked Eggs n Bacon with Toast',
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

----- | MAKE EGGS BENEDICT | -----
RegisterNetEvent('bd-hornysburger:server:makeEggsBenedict', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if not Player then return end
  if not exports['qb-inventory']:RemoveItem(src, 'hb_eggs', 2, false) then
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You need eggs to make Eggs Benedict',
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
  exports['qb-inventory']:AddItem(src, 'hb_eggs_benedict', 2, false, false)
  TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_eggs_benedict'], 'add', 2)
  lib.notify(source, {
    id = 'hornys_burgers',
    title = 'Hornys Burgers',
    description = 'You have cooked Eggs Benedict',
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

----- | MAKE FRENCH TOAST | -----
RegisterNetEvent('bd-hornysburger:server:makeFrenchToast', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if not Player then return end
  if not exports['qb-inventory']:RemoveItem(src, 'hb_bread', 2, false) then
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You need  bread to make French Toast',
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
  exports['qb-inventory']:AddItem(src, 'hb_frenchtoast', 2, false, false)
  TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_frenchtoast'], 'add', 2)
  lib.notify(source, {
    id = 'hornys_burgers',
    title = 'Hornys Burgers',
    description = 'You have cooked French Toast',
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

----- | MAKE FRENCH TOAST WITH BACON | -----
RegisterNetEvent('bd-hornysburger:server:makeFrenchToastBacon', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if not Player then return end
  if not exports['qb-inventory']:RemoveItem(src, 'hb_bread', 2, false) then
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You need bread to make Bacon French Toast',
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
  exports['qb-inventory']:AddItem(src, 'hb_french_toast_bacon', 2, false, false)
  TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_french_toast_bacon'], 'add', 2)
  lib.notify(source, {
    id = 'hornys_burgers',
    title = 'Hornys Burgers',
    description = 'You have cooked Bacon French Toast',
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

----- | MAKE SAUSAGES | -----
RegisterNetEvent('bd-hornysburger:server:makeSausages', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if not Player then return end
  if not exports['qb-inventory']:RemoveItem(src, 'hb_sausage', 2, false) then
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You need sausage to make Sausages',
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
  exports['qb-inventory']:AddItem(src, 'hb_sausages', 2, false, false)
  TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_sausages'], 'add', 2)
  lib.notify(source, {
    id = 'hornys_burgers',
    title = 'Hornys Burgers',
    description = 'You have grilled some Sausages',
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

----- | MAKE CHICKEN BURGER | -----
RegisterNetEvent('bd-hornysburger:server:makeChickenBurger', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if not Player then return end
  if not exports['qb-inventory']:RemoveItem(src, 'hb_chicken', 2, false) then
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You need chicken to make a chicken burger',
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
  exports['qb-inventory']:AddItem(src, 'hb_chicken_burger', 2, false, false)
  TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_chicken_burger'], 'add', 2)
  lib.notify(source, {
    id = 'hornys_burgers',
    title = 'Hornys Burgers',
    description = 'You have grilled a Chicken Burger',
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

----- | MAKE DBL CHICKEN BURGER | -----
RegisterNetEvent('bd-hornysburger:server:makeDBLChickenBurger', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if not Player then return end
  if not exports['qb-inventory']:RemoveItem(src, 'hb_chicken', 2, false) then
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You need chicken to make a dbl chicken burger',
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
  exports['qb-inventory']:AddItem(src, 'hb_dblchicken_burger', 2, false, false)
  TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_dblchicken_burger'], 'add', 2)
  lib.notify(source, {
    id = 'hornys_burgers',
    title = 'Hornys Burgers',
    description = 'You have grilled a DBL Chicken Burger',
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

----- | MAKE DBL HORN BURGER | -----
RegisterNetEvent('bd-hornysburger:server:makeDBLHornBurger', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if not Player then return end
  if not exports['qb-inventory']:RemoveItem(src, 'hb_patty_raw', 4, false) then
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You need raw patty to make a dbl horn burger',
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
  exports['qb-inventory']:AddItem(src, 'hb_dblhorn_burger', 2, false, false)
  TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_dblhorn_burger'], 'add', 2)
  lib.notify(source, {
    id = 'hornys_burgers',
    title = 'Hornys Burgers',
    description = 'You have grilled a DBLHorn Burger',
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

----- | MAKE HORN BURGER | -----
RegisterNetEvent('bd-hornysburger:server:makeHornBurger', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if not Player then return end
  if not exports['qb-inventory']:RemoveItem(src, 'hb_patty_raw', 2, false) then
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You need raw patty to make a Horn Burger',
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
  exports['qb-inventory']:AddItem(src, 'hb_hornburger', 2, false, false)
  TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_hornburger'], 'add', 2)
  lib.notify(source, {
    id = 'hornys_burgers',
    title = 'Hornys Burgers',
    description = 'You have grilled a Horn Burger',
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

----- | MAKE BACON HORN BURGER | -----
RegisterNetEvent('bd-hornysburger:server:makeHornBurgerBacon', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if not Player then return end
  if not exports['qb-inventory']:RemoveItem(src, 'hb_patty_raw', 2, false) then
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You need raw patty to make a Bacon Horn Burger',
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
  exports['qb-inventory']:AddItem(src, 'hb_hornburger_bacon', 2, false, false)
  TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_hornburger_bacon'], 'add', 2)
  lib.notify(source, {
    id = 'hornys_burgers',
    title = 'Hornys Burgers',
    description = 'You have grilled a Bacon Horn Burger',
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

----- | MAKE HORN BURGER PICKLE | -----
RegisterNetEvent('bd-hornysburger:server:makeHornBurgerPickle', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if not Player then return end
  if not exports['qb-inventory']:RemoveItem(src, 'hb_pickle', 2, false) then
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You need pickle to make a Pickle Horn Burger',
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
  exports['qb-inventory']:AddItem(src, 'hb_hornburger_pickle', 2, false, false)
  TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_hornburger_pickle'], 'add', 2)
  lib.notify(source, {
    id = 'hornys_burgers',
    title = 'Hornys Burgers',
    description = 'You have made a Pickle Horn Burger',
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

----- | MAKE HORN SANDWICH | -----
RegisterNetEvent('bd-hornysburger:server:makeHornSandwich', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if not Player then return end
  if not exports['qb-inventory']:RemoveItem(src, 'hb_bread', 2, false) then
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You need bread to make a Horn Sandwich',
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
  exports['qb-inventory']:AddItem(src, 'hb_horn_sandwich', 2, false, false)
  TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_horn_sandwich'], 'add', 2)
  lib.notify(source, {
    id = 'hornys_burgers',
    title = 'Hornys Burgers',
    description = 'You have made a Horn Sandwich',
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

----- | MAKE CHICKEN SALAD | -----
RegisterNetEvent('bd-hornysburger:server:makeChickenSalad', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if not Player then return end
  if not exports['qb-inventory']:RemoveItem(src, 'hb_chicken_strips_raw', 2, false) then
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You need raw chicken strips to make a Chicken Salad',
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
  exports['qb-inventory']:AddItem(src, 'hb_chicken_salad', 2, false, false)
  TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_chicken_salad'], 'add', 2)
  lib.notify(source, {
    id = 'hornys_burgers',
    title = 'Hornys Burgers',
    description = 'You have made a Chicken Salad',
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

----- | MAKE CHICKEN SANDWICH | -----
RegisterNetEvent('bd-hornysburger:server:makeChickenSandwich', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if not Player then return end
  if not exports['qb-inventory']:RemoveItem(src, 'hb_chicken_strips_raw', 2, false) then
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You need raw chicken strips to make a Chicken Sandwich',
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
  exports['qb-inventory']:AddItem(src, 'hb_chicken_sandwich', 2, false, false)
  TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_chicken_sandwich'], 'add', 2)
  lib.notify(source, {
    id = 'hornys_burgers',
    title = 'Hornys Burgers',
    description = 'You have made a Chicken Sandwich',
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

----- | MAKE HUNK O HEN | -----
RegisterNetEvent('bd-hornysburger:server:makeHunksHen', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if not Player then return end
  if not exports['qb-inventory']:RemoveItem(src, 'hb_potatoes', 2, false) then
    lib.notify(source, {
      id = 'hornys_burgers',
      title = 'Hornys Burgers',
      description = 'You need potatoes to make Hunks O Hen',
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
  exports['qb-inventory']:AddItem(src, 'hb_hunks_o_hen', 2, false, false)
  TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hb_hunks_o_hen'], 'add', 2)
  lib.notify(source, {
    id = 'hornys_burgers',
    title = 'Hornys Burgers',
    description = 'You have cooked Hunks O Hen',
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
