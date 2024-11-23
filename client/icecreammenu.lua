local QBCore = exports['qb-core']:GetCoreObject()

if Config.TargetSystem == 'ox' then
  exports.ox_target:addBoxZone({
    coords = vector4(1246.06, -357.51, 69.18, 343.1),
    size = vec3(1, 1, 1),
    rotation = 45,
    options = {
      {
        name = 'hornys_icecream',
        event = 'bd-hornysburger:client:OpenIcecreamMenu',
        icon = 'fa-solidd fa-ice-cream',
        label = 'Icecream Machine',
        groups = {
          Config.Jobname
        },
      },
    }
  })
elseif Config.TargetSystem == 'qb' then
  exports['qb-target']:AddBoxZone("HornysBurgersIcecreamMenu", vector3(1246.06, -357.46, 69.08), 1.45, 1.35, {
    name = "HornysBurgersIcecreamMenu",
    heading = 347.27,
    debugPoly = false,
    minZ = 67.08,
    maxZ = 72.08,
  }, {
    options = {
      {
        type = "client",
        event = "bd-hornysburger:client:OpenIcecreamMenu",
        icon = "fa-solid fa-ice-cream",
        label = "Icecream Menu",
        job = "hornysburger",
      },
    },
    distance = 2.5
  })
end
----- | CREATING MENU | -----
lib.registerContext({
  id = 'hornys_icecream_menu',
  title = 'Icecream Menu',
  options = {
    {
      title = '1x Cherry Float',
      description = '1x Cherry | 1x Icecream Mix',
      icon = 'ice-cream',
      iconColor = 'Crimson',
      event = 'bd-hornysburger:client:makeCherryFloat'
    },
    {
      title = '1x Cherry Popper',
      description = '1x Cherry | 1x Icecream Mix',
      icon = 'ice-cream',
      iconColor = 'Crimson',
      event = 'bd-hornysburger:client:makeCherryPopper'
    },
    {
      title = '1x Icecream Cake',
      description = '3x Icecream Mix',
      icon = 'ice-cream',
      iconColor = 'LightSkyBlue',
      event = 'bd-hornysburger:client:makeIcecreamCake'
    },
    {
      title = '1x Icecream Cone',
      description = '1x Icecream Mix',
      icon = 'faucet',
      iconColor = 'LightSkyBlue',
      event = 'bd-hornysburger:client:makeIcecreamCone'
    },
    {
      title = '1x Icecream Nuggets',
      description = '2x Icecream Mix',
      icon = 'faucet',
      iconColor = 'LightSkyBlue',
      event = 'bd-hornysburger:client:makeIcecreamNuggets'
    },
  }
})
----- | REGISTERING MENU TO 'OpenDrinkMenu' | -----
RegisterNetEvent('bd-hornysburger:client:OpenIcecreamMenu', function()
  lib.showContext('hornys_icecream_menu')
end)

RegisterNetEvent('bd-hornysburger:client:makeCherryFloat', function()
  if lib.progressCircle({
    duration = 1000,
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
    TriggerServerEvent('bd-hornysburger:server:makeCherryFloat')
  else
  end
end)
RegisterNetEvent('bd-hornysburger:client:makeCherryPopper', function()
  if lib.progressCircle({
    duration = 1000,
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
    TriggerServerEvent('bd-hornysburger:server:makeCherryPopper')
  else
  end
end)
RegisterNetEvent('bd-hornysburger:client:makeIcecreamCake', function()
  if lib.progressCircle({
    duration = 1000,
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
    TriggerServerEvent('bd-hornysburger:server:makeIcecreamCake')
  else
  end
end)
RegisterNetEvent('bd-hornysburger:client:makeIcecreamCone', function()
  if lib.progressCircle({
    duration = 1000,
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
    TriggerServerEvent('bd-hornysburger:server:makeIcecreamCone')
  else
  end
end)
RegisterNetEvent('bd-hornysburger:client:makeIcecreamNuggets', function()
  if lib.progressCircle({
    duration = 1000,
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
    TriggerServerEvent('bd-hornysburger:server:makeIcecreamNuggets')
  else
  end
end)
