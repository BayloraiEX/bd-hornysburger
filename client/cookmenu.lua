local QBCore = exports['qb-core']:GetCoreObject()

if Config.InventorySystem == 'ox' then
  exports.ox_target:addBoxZone({
    coords = vector4(1253.41, -355.43, 69.09, 3.52),
    size = vec3(1, 1, 1),
    rotation = 45,
    options = {
      {
        name = 'hornysburger_cookmenu',
        event = 'bd-hornysburger:client:OpenCookMenu',
        icon = 'fa-solid fa-fire-burner',
        label = 'Cook Menu',
        groups = {
          Config.Jobname
        },
      },
    }
  })
elseif Config.InventorySystem == 'qb' then
  exports['qb-target']:AddBoxZone("HornysBurgersCookMenu", vector3(1253.42, -355.41, 69.08), 1.45, 1.35, {
    name = "HornysBurgersCookMenu",
    heading = 347.27,
    debugPoly = false,
    minZ = 67.08,
    maxZ = 72.08,
  }, {
    options = {
      {
        type = "client",
        event = "bd-hornysburger:client:OpenCookMenu",
        icon = "fa-solid fa-fire-burner",
        label = "Cook Menu",
        job = "hornysburger",
      },
    },
    distance = 2.5
  })
end
----- | CREATING MENU | -----
lib.registerContext({
  id = 'hornys_cook_menu',
  title = 'Cook Menu',
  menu = 'hornys_cook_menu',
  options = {
    {
      title = 'Breakfast Section',
      description = 'All Our Breakfast Items',
      icon = 'egg',
      iconColor = 'DarkSalmon',
      menu = 'hornys_breakfast_menu'
    },
    {
      title = 'Lunch Section',
      description = 'All Our Lunch/Dinner Items',
      icon = 'burger',
      iconColor = 'DarkSalmon',
      menu = 'hornys_lunch_menu'
    },
  }
})
----- | REGISTERING MENU TO 'OpenCookMenu' | -----
RegisterNetEvent('bd-hornysburger:client:OpenCookMenu', function()
  lib.showContext('hornys_cook_menu')
end)
----- | CREATING MORE MENUS | -----
lib.registerContext({
  id = 'hornys_breakfast_menu',
  title = 'Breakfast Menu',
  menu = 'hornys_cook_menu',
  options = {
    {
      title = '2x Bacon Rolls',
      description = 'You need 2x Bacon',
      icon = 'bacon',
      iconColor = 'DarkSalmon',
      event = 'bd-hornysburger:client:makeBaconRoll'
    },
    {
      title = '2x Breakfast Plate',
      description = 'You need 2x Eggs',
      icon = 'utensils',
      iconColor = 'DarkSalmon',
      event = 'bd-hornysburger:client:makeBreakfast'
    },
    {
      title = '2x Eggs n Bacon',
      description = 'You need 2x Eggs',
      icon = 'bacon',
      iconColor = 'DarkSalmon',
      event = 'bd-hornysburger:client:makeEggsBacon'
    },
    {
      title = '2x Eggs Benedict',
      description = 'You need 2x Eggs',
      icon = 'utensils',
      iconColor = 'DarkSalmon',
      event = 'bd-hornysburger:client:makeEggsBenedict'
    },
    {
      title = '2x French Toast',
      description = 'You need 2x Bread',
      icon = 'utensils',
      iconColor = 'DarkSalmon',
      event = 'bd-hornysburger:client:makeFrenchToast'
    },
    {
      title = '2x Bacon French Toast',
      description = 'You need 2x Bread',
      icon = 'bacon',
      iconColor = 'DarkSalmon',
      event = 'bd-hornysburger:client:makeFrenchToastBacon'
    },
    {
      title = '2x Sausages',
      description = 'You need 2x Sausage',
      icon = 'utensils',
      iconColor = 'DarkSalmon',
      event = 'bd-hornysburger:client:makeSausages'
    },
  }
})
lib.registerContext({
  id = 'hornys_lunch_menu',
  title = 'Lunch Menu',
  options = {
    {
      title = '2x Chicken Burger',
      description = 'You need 2x Chicken',
      icon = 'burger',
      iconColor = 'DarkSalmon',
      event = 'bd-hornysburger:client:makeChickenBurger'
    },
    {
      title = '2x DBL Chicken Burger',
      description = 'You need 2x Chicken',
      icon = 'burger',
      iconColor = 'DarkSalmon',
      event = 'bd-hornysburger:client:makeDBLChickenBurger'
    },
    {
      title = '2x DBL Horn Burger',
      description = 'You need 4x Raw Patty',
      icon = 'burger',
      iconColor = 'DarkSalmon',
      event = 'bd-hornysburger:client:makeDBLHornBurger'
    },
    {
      title = '2x Horn Burger',
      description = 'You need 2x Raw Patty',
      icon = 'burger',
      iconColor = 'DarkSalmon',
      event = 'bd-hornysburger:client:makeHornBurger'
    },
    {
      title = '2x Bacon Horn Burger',
      description = 'You need 2x Raw Patty',
      icon = 'burger',
      iconColor = 'DarkSalmon',
      event = 'bd-hornysburger:client:makeHornBurgerBacon'
    },
    {
      title = '2x Pickle Horn Burger',
      description = 'You need 2x Pickles',
      icon = 'burger',
      iconColor = 'DarkSalmon',
      event = 'bd-hornysburger:client:makeHornBurgerPickle'
    },
    {
      title = '2x Horn Sandwich',
      description = 'You need 2x Bread',
      icon = 'bread-slice',
      iconColor = 'DarkSalmon',
      event = 'bd-hornysburger:client:makeHornSandwich'
    },
    {
      title = '2x Chicken Salad',
      description = 'You need 2x Raw Chicken Strips',
      icon = 'bread-slice',
      iconColor = 'DarkSalmon',
      event = 'bd-hornysburger:client:makeChickenSalad'
    },
    {
      title = '2x Chicken Sandwich',
      description = 'You need 2x Raw Chicken Strips',
      icon = 'bread-slice',
      iconColor = 'DarkSalmon',
      event = 'bd-hornysburger:client:makeChickenSandwich'
    },
    {
      title = '2x Hunk O Hen',
      description = 'You need 2x Potatoes',
      icon = 'utensils',
      iconColor = 'DarkSalmon',
      event = 'bd-hornysburger:client:makeHunksHen'
    },
  }
})
----- | CREATING PROGRESS CIRCLE | -----
-- BREAKFAST ITEMS --
RegisterNetEvent('bd-hornysburger:client:makeBaconRoll', function()
  if lib.progressCircle({
    duration = 1750,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
      move = true,
      car = true,
      combat = true,
    },
    anim = {
      dict = 'mini@repair',
      clip = 'fixing_a_player',
      scenario = 'mini@repair',
    },
  }) then
    TriggerServerEvent('bd-hornysburger:server:makeBaconRoll')
  else
  end
end)
RegisterNetEvent('bd-hornysburger:client:makeBreakfast', function()
  if lib.progressCircle({
    duration = 1750,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
      move = true,
      car = true,
      combat = true,
    },
    anim = {
      dict = 'mini@repair',
      clip = 'fixing_a_player',
      scenario = 'mini@repair',
    },
  }) then
    TriggerServerEvent('bd-hornysburger:server:makeBreakfast')
  else
  end
end)
RegisterNetEvent('bd-hornysburger:client:makeEggsBacon', function()
  if lib.progressCircle({
    duration = 1750,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
      move = true,
      car = true,
      combat = true,
    },
    anim = {
      dict = 'mini@repair',
      clip = 'fixing_a_player',
      scenario = 'mini@repair',
    },
  }) then
    TriggerServerEvent('bd-hornysburger:server:makeEggsBacon')
  else
  end
end)
RegisterNetEvent('bd-hornysburger:client:makeEggsBenedict', function()
  if lib.progressCircle({
    duration = 1750,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
      move = true,
      car = true,
      combat = true,
    },
    anim = {
      dict = 'mini@repair',
      clip = 'fixing_a_player',
      scenario = 'mini@repair',
    },
  }) then
    TriggerServerEvent('bd-hornysburger:server:makeEggsBenedict')
  else
  end
end)
RegisterNetEvent('bd-hornysburger:client:makeFrenchToast', function()
  if lib.progressCircle({
    duration = 1750,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
      move = true,
      car = true,
      combat = true,
    },
    anim = {
      dict = 'mini@repair',
      clip = 'fixing_a_player',
      scenario = 'mini@repair',
    },
  }) then
    TriggerServerEvent('bd-hornysburger:server:makeFrenchToast')
  else
  end
end)
RegisterNetEvent('bd-hornysburger:client:makeFrenchToastBacon', function()
  if lib.progressCircle({
    duration = 1750,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
      move = true,
      car = true,
      combat = true,
    },
    anim = {
      dict = 'mini@repair',
      clip = 'fixing_a_player',
      scenario = 'mini@repair',
    },
  }) then
    TriggerServerEvent('bd-hornysburger:server:makeFrenchToastBacon')
  else
  end
end)
RegisterNetEvent('bd-hornysburger:client:makeSausages', function()
  if lib.progressCircle({
    duration = 1750,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
      move = true,
      car = true,
      combat = true,
    },
    anim = {
      dict = 'mini@repair',
      clip = 'fixing_a_player',
      scenario = 'mini@repair',
    },
  }) then
    TriggerServerEvent('bd-hornysburger:server:makeSausages')
  else
  end
end)
-- LUNCH ITEMS --
RegisterNetEvent('bd-hornysburger:client:makeChickenBurger', function()
  if lib.progressCircle({
    duration = 1750,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
      move = true,
      car = true,
      combat = true,
    },
    anim = {
      dict = 'mini@repair',
      clip = 'fixing_a_player',
      scenario = 'mini@repair',
    },
  }) then
    TriggerServerEvent('bd-hornysburger:server:makeChickenBurger')
  else
  end
end)
RegisterNetEvent('bd-hornysburger:client:makeDBLChickenBurger', function()
  if lib.progressCircle({
    duration = 1750,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
      move = true,
      car = true,
      combat = true,
    },
    anim = {
      dict = 'mini@repair',
      clip = 'fixing_a_player',
      scenario = 'mini@repair',
    },
  }) then
    TriggerServerEvent('bd-hornysburger:server:makeDBLChickenBurger')
  else
  end
end)
RegisterNetEvent('bd-hornysburger:client:makeDBLHornBurger', function()
  if lib.progressCircle({
    duration = 1750,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
      move = true,
      car = true,
      combat = true,
    },
    anim = {
      dict = 'mini@repair',
      clip = 'fixing_a_player',
      scenario = 'mini@repair',
    },
  }) then
    TriggerServerEvent('bd-hornysburger:server:makeDBLHornBurger')
  else
  end
end)
RegisterNetEvent('bd-hornysburger:client:makeHornBurger', function()
  if lib.progressCircle({
    duration = 1750,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
      move = true,
      car = true,
      combat = true,
    },
    anim = {
      dict = 'mini@repair',
      clip = 'fixing_a_player',
      scenario = 'mini@repair',
    },
  }) then
    TriggerServerEvent('bd-hornysburger:server:makeHornBurger')
  else
  end
end)
RegisterNetEvent('bd-hornysburger:client:makeHornBurgerBacon', function()
  if lib.progressCircle({
    duration = 1750,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
      move = true,
      car = true,
      combat = true,
    },
    anim = {
      dict = 'mini@repair',
      clip = 'fixing_a_player',
      scenario = 'mini@repair',
    },
  }) then
    TriggerServerEvent('bd-hornysburger:server:makeHornBurgerBacon')
  else
  end
end)
RegisterNetEvent('bd-hornysburger:client:makeHornBurgerPickle', function()
  if lib.progressCircle({
    duration = 1750,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
      move = true,
      car = true,
      combat = true,
    },
    anim = {
      dict = 'mini@repair',
      clip = 'fixing_a_player',
      scenario = 'mini@repair',
    },
  }) then
    TriggerServerEvent('bd-hornysburger:server:makeHornBurgerPickle')
  else
  end
end)
RegisterNetEvent('bd-hornysburger:client:makeHornSandwich', function()
  if lib.progressCircle({
    duration = 1750,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
      move = true,
      car = true,
      combat = true,
    },
    anim = {
      dict = 'mini@repair',
      clip = 'fixing_a_player',
      scenario = 'mini@repair',
    },
  }) then
    TriggerServerEvent('bd-hornysburger:server:makeHornSandwich')
  else
  end
end)
RegisterNetEvent('bd-hornysburger:client:makeChickenSalad', function()
  if lib.progressCircle({
    duration = 1750,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
      move = true,
      car = true,
      combat = true,
    },
    anim = {
      dict = 'mini@repair',
      clip = 'fixing_a_player',
      scenario = 'mini@repair',
    },
  }) then
    TriggerServerEvent('bd-hornysburger:server:makeChickenSalad')
  else
  end
end)
RegisterNetEvent('bd-hornysburger:client:makeChickenSandwich', function()
  if lib.progressCircle({
    duration = 1750,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
      move = true,
      car = true,
      combat = true,
    },
    anim = {
      dict = 'mini@repair',
      clip = 'fixing_a_player',
      scenario = 'mini@repair',
    },
  }) then
    TriggerServerEvent('bd-hornysburger:server:makeChickenSandwich')
  else
  end
end)
RegisterNetEvent('bd-hornysburger:client:makeHunksHen', function()
  if lib.progressCircle({
    duration = 2000,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
      move = true,
      car = true,
      combat = true,
    },
    anim = {
      dict = 'mini@repair',
      clip = 'fixing_a_player',
      scenario = 'mini@repair',
    },
  }) then
    TriggerServerEvent('bd-hornysburger:server:makeHunksHen')
  else
  end
end)
