local QBCore = exports['qb-core']:GetCoreObject()

if Config.InventorySystem == 'ox' then
  exports.ox_target:addBoxZone({
    coords = vector4(1254.15, -352.81, 69.1, 72.07),
    size = vec3(1, 1, 1),
    rotation = 45,
    options = {
      {
        name = 'hornys_fryer',
        event = 'bd-hornysburger:client:OpenFryerMenu',
        icon = 'fa-solid fa-fire-burner',
        label = 'Fryer',
        groups = {
          Config.Jobname
        },
      },
    }
  })
elseif Config.InventorySystem == 'qb' then
  exports['qb-target']:AddBoxZone("HornysBurgersFryerMenu", vector3(1254.29, -352.8, 69.08), 1.45, 1.35, {
    name = "HornysBurgersFryerMenu",
    heading = 347.27,
    debugPoly = false,
    minZ = 67.08,
    maxZ = 72.08,
  }, {
    options = {
      {
              type = "client",
              event = "bd-hornysburger:client:OpenFryerMenu",
        icon = "fa-solid fa-fire-burner",
        label = "Fryer Menu",
        job = "hornysburger",
      },
    },
    distance = 2.5
  })
end
lib.registerContext({
  id = 'hornys_fryer_menu',
  title = 'Fryer Menu',
  options = {
    {
      title = '2x Hashbrowns',
      description = '2x Potatoes',
      icon = 'fire',
      iconColor = 'DarkSalmon',
      event = 'bd-hornysburger:client:makeHashbrowns'
    },
    {
      title = '2x Chicken Fillets',
      description = '2x Raw Chicken Strips',
      icon = 'fire',
      iconColor = 'DarkSalmon',
      event = 'bd-hornysburger:client:makeChickenFillets'
    },
    {
      title = '2x Chicken Hornstars',
      description = '2x Raw Chicken Strips',
      icon = 'fire',
      iconColor = 'DarkSalmon',
      event = 'bd-hornysburger:client:makeHornstars'
    }
  }
})
----- | REGISTERING MENU TO 'OpenFryerMenu' | -----
RegisterNetEvent('bd-hornysburger:client:OpenFryerMenu', function()
  lib.showContext('hornys_fryer_menu')
end)

RegisterNetEvent('bd-hornysburger:client:makeHashbrowns', function()
  if lib.progressCircle({
    duration = 1250,
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
    TriggerServerEvent('bd-hornysburger:server:makeHashbrowns')
  else
  end
end)
RegisterNetEvent('bd-hornysburger:client:makeChickenFillets', function()
  if lib.progressCircle({
    duration = 1250,
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
    TriggerServerEvent('bd-hornysburger:server:makeChickenFillets')
  else
  end
end)
RegisterNetEvent('bd-hornysburger:client:makeHornstars', function()
  if lib.progressCircle({
    duration = 1250,
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
    TriggerServerEvent('bd-hornysburger:server:makeHornstars')
  else
  end
end)