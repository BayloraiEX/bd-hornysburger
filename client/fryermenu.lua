local QBCore = exports['qb-core']:GetCoreObject()

if Config.TargetSystem == 'ox' then
  exports.ox_target:addBoxZone({
    coords = vector4(1254.15, -352.81, 69.1, 72.07),
    size = vec3(1, 1, 1),
    rotation = 45,
    options = {
      {
        name = 'hornysburger_fryermenu',
        event = 'bd-hornysburger:client:OpenFryerMenu',
        icon = 'fa-solid fa-fire-burner',
        label = 'Fryer Menu',
        groups = {
          Config.Jobname
        },
      },
    }
  })
elseif Config.TargetSystem == 'qb' then
  exports['qb-target']:AddBoxZone("HornysBurgersFryerMenu", vector3(1253.42, -355.41, 69.08), 1.45, 1.35, {
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
        job = Config.Jobname,
      },
    },
    distance = 2.5
  })
end
----- | CREATING MENU | -----
lib.registerContext({
  id = 'hornys_fryer_menu',
  title = 'Fryer Menu',
  options = {
    {
      title = '2x Hashbrowns',
      description = 'You need 2x Potatoes',
      icon = 'fire',
      iconColor = 'DarkSalmon',
      event = 'bd-hornysburger:client:makeHashBrowns'
    },
    {
      title = '2x Chicken Fillets',
      description = 'You need 2x Raw Chicken Strips',
      icon = 'fire',
      iconColor = 'DarkSalmon',
      event = 'bd-hornysburger:client:makeChickenStrips'
    },
    {
      title = '2x Chicken Hornstars',
      description = 'You need 2x Raw Chicken Stips',
      icon = 'fire',
      iconColor = 'DarkSalmon',
      event = 'bd-hornysburger:client:makeHornStars'
    },
  }
})
----- | REGISTERING MENU TO 'OpenCookMenu' | -----
RegisterNetEvent('bd-hornysburger:client:OpenFryerMenu', function()
  lib.showContext('hornys_fryer_menu')
end)
----- | CREATING PROGRESS CIRCLE | -----
-- BREAKFAST ITEMS --
RegisterNetEvent('bd-hornysburger:client:makeHashBrowns', function()
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
    TriggerServerEvent('bd-hornysburger:server:makeHashBrowns')
  else
  end
end)
RegisterNetEvent('bd-hornysburger:client:makeChickenStrips', function()
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
    TriggerServerEvent('bd-hornysburger:server:makeChickenStrips')
  else
  end
end)
RegisterNetEvent('bd-hornysburger:client:makeHornStars', function()
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
    TriggerServerEvent('bd-hornysburger:server:makeHornStars')
  else
  end
end)
