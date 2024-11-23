local QBCore = exports['qb-core']:GetCoreObject()

if Config.TargetSystem == 'ox' then
  exports.ox_target:addBoxZone({
    coords = vector4(1246.27, -356.41, 69.13, 252.21),
    size = vec3(1, 1, 1),
    rotation = 45,
    options = {
      {
        name = 'hornys_drinks',
        event = 'bd-hornysburger:client:OpenDrinkMenu',
        icon = 'fa-solid fa-faucet-drip',
        label = 'Drink Menu',
        groups = {
          Config.Jobname
        },
      },
    }
  })
elseif Config.TargetSystem == 'qb' then
  exports['qb-target']:AddBoxZone("HornysBurgersDrinkMenu", vector3(1246.25, -356.48, 69.08), 1.45, 1.35, {
    name = "HornysBurgersDrinkMenu",
    heading = 347.27,
    debugPoly = false,
    minZ = 67.08,
    maxZ = 72.08,
  }, {
    options = {
      {
              type = "client",
              event = "bd-hornysburger:client:OpenDrinkMenu",
        icon = "fa-solid fa-faucet-drip",
        label = "Drink Menu",
        job = "hornysburger",
      },
    },
    distance = 2.5
  })
end
----- | CREATING MENU | -----
lib.registerContext({
  id = 'hornys_drink_menu',
  title = 'Drink Menu',
  options = {
    {
      title = '2x Ecola',
      description = 'You need 2x Carbonated Water',
      icon = 'faucet',
      iconColor = 'Red',
      event = 'bd-hornysburger:client:makeEcola'
    },
    {
      title = '2x Sprunk',
      description = 'You need 2x Carbonated Water',
      icon = 'faucet',
      iconColor = 'SpringGreen',
      event = 'bd-hornysburger:client:makeSprunk'
    },
    {
      title = '2x Orang-O-Tang',
      description = 'You need 2x Oranges',
      icon = 'faucet',
      iconColor = 'DarkOrange',
      event = 'bd-hornysburger:client:makeOrangTang'
    },
    {
      title = '2x Hercules',
      description = 'You need 2x Sugar Cubes',
      icon = 'faucet',
      iconColor = 'Goldenrod',
      event = 'bd-hornysburger:client:makeHercules'
    },
    {
      title = '2x Junk',
      description = 'You need 2x Sugar Cubes',
      icon = 'faucet',
      iconColor = 'Green',
      event = 'bd-hornysburger:client:makeJunkEnegry'
    },
    {
      title = '2x Raine',
      description = 'Grab a Raine Bottled Water',
      icon = 'bottle-water',
      iconColor = 'Aqua',
      event = 'bd-hornysburger:client:makeRaineWater'
    },
    {
      title = '2x Water',
      description = 'Grab a Bottled Water',
      icon = 'bottle-water',
      iconColor = 'Aqua',
      event = 'bd-hornysburger:client:makeWater'
    }
  }
})
----- | REGISTERING MENU TO 'OpenDrinkMenu' | -----
RegisterNetEvent('bd-hornysburger:client:OpenDrinkMenu', function()
  lib.showContext('hornys_drink_menu')
end)

RegisterNetEvent('bd-hornysburger:client:makeEcola', function()
  if lib.progressCircle({
    duration = 750,
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
    TriggerServerEvent('bd-hornysburger:server:makeEcola')
  else
  end
end)
RegisterNetEvent('bd-hornysburger:client:makeSprunk', function()
  if lib.progressCircle({
    duration = 750,
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
    TriggerServerEvent('bd-hornysburger:server:makeSprunk')
  else
  end
end)
RegisterNetEvent('bd-hornysburger:client:makeOrangTang', function()
  if lib.progressCircle({
    duration = 750,
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
    TriggerServerEvent('bd-hornysburger:server:makeOrangTang')
  else
  end
end)
RegisterNetEvent('bd-hornysburger:client:makeHercules', function()
  if lib.progressCircle({
    duration = 750,
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
    TriggerServerEvent('bd-hornysburger:server:makeHercules')
  else
  end
end)
RegisterNetEvent('bd-hornysburger:client:makeJunkEnegry', function()
  if lib.progressCircle({
    duration = 750,
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
    TriggerServerEvent('bd-hornysburger:server:makeJunkEnegry')
  else
  end
end)
RegisterNetEvent('bd-hornysburger:client:makeRaineWater', function()
  if lib.progressCircle({
    duration = 750,
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
    TriggerServerEvent('bd-hornysburger:server:makeRaineWater')
  else
  end
end)
RegisterNetEvent('bd-hornysburger:client:makeWater', function()
  if lib.progressCircle({
    duration = 750,
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
    TriggerServerEvent('bd-hornysburger:server:makeWater')
  else
  end
end)
