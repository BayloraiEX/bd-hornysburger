--[[
  ____              _                 _                       
 | __ )  __ _ _   _| | ___  _ __ __ _(_)                      
 |  _ \ / _` | | | | |/ _ \| '__/ _` | |                      
 | |_) | (_| | |_| | | (_) | | | (_| | |                      
 |____/ \__,_|\__, |_|\___/|_|  \__,_|_|                  _   
 |  _ \  _____|___/___| | ___  _ __  _ __ ___   ___ _ __ | |_ 
 | | | |/ _ \ \ / / _ \ |/ _ \| '_ \| '_ ` _ \ / _ \ '_ \| __|
 | |_| |  __/\ V /  __/ | (_) | |_) | | | | | |  __/ | | | |_ 
 |____/ \___| \_/ \___|_|\___/| .__/|_| |_| |_|\___|_| |_|\__|
                              |_|                             
--]]                           

Config = {}
Config.InventorySystem = 'qb' -- Supports both 'ox' & 'qb' ( OX RELEASE THAT STILL SUPPORTS QBCORE )
Config.TargetSystem = 'ox' -- Supports both 'qb' & 'ox' ( OX RELEASE THAT STILL SUPPORTS QBCORE )
Config.Jobname = 'hornysburger'
----- | PED STUFF | -----
Config.hornysBurgerGaragePed = {
    {
        hornysGaragePedModel = 'mp_m_waremech_01',
        hornysGaragePedLocation = vec4(1247.36, -350.52, 68.09, 347.06),
        hornysGarageRenderDistance = 20,
    }
}

----- | VEHICLE STUFF | -----
Config.VehicleSpawn = vector4(1249.99, -341.62, 69.08, 79.45)
Config.Vehicle = 'hornysvan' -- Custom Vehicle

----- | SHOP ITEMS | -----
Config.Items = {
    { name = 'hb_bun', amount = 50, price = 1 },
    { name = 'hb_bread', amount = 50, price = 1 },
    { name = 'hb_wraps', amount = 50, price = 1 },
    { name = 'hb_cheddar', amount = 50, price = 1 },
    { name = 'hb_gratedcheese', amount = 50, price = 1 },
    { name = 'hb_lettuce', amount = 50, price = 1 },
    { name = 'hb_pickle', amount = 50, price = 1 },
    { name = 'hb_potatoes', amount = 50, price = 1 },
    { name = 'hb_tomato', amount = 50, price = 1 },
    { name = 'hb_oranges', amount = 50, price = 1 },
    { name = 'hb_cherrys', amount = 50, price = 1 },
    { name = 'hb_eggs', amount = 50, price = 1 },
    { name = 'hb_bacon', amount = 50, price = 1 },
    { name = 'hb_chicken_strips_raw', amount = 50, price = 1 },
    { name = 'hb_chicken', amount = 50, price = 1 },
    { name = 'hb_patty_raw', amount = 50, price = 1 },
    { name = 'hb_sausage', amount = 50, price = 1 },
    { name = 'hb_icecream_mix', amount = 50, price = 1 },
    { name = 'hb_carbonated_water', amount = 50, price = 1 },
    { name = 'hb_sugar_cubes', amount = 50, price = 1 }
}
