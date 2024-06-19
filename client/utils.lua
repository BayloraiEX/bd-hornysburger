local QBCore = exports['qb-core']:GetCoreObject()
PlayerJob = {}

----- | CREATING BLIP | -----
CreateThread(function()
    HornysBurgerBlip = AddBlipForCoord(1247.19, -355.98, 74.84)
    SetBlipDisplay(HornysBurgerBlip, 4)
    SetBlipScale(HornysBurgerBlip, 0.52)
    SetBlipSprite(HornysBurgerBlip, 542)
    SetBlipColour(HornysBurgerBlip, 5)
    SetBlipAsShortRange(HornysBurgerBlip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Hornys Burgers")
    EndTextCommandSetBlipName(HornysBurgerBlip)
end)

----- | CREATING MODEL SPAWN | -----
local function FetchModel(model)
    RequestModel(GetHashKey(model))
    while not HasModelLoaded(model) do 
        Wait(100)
    end
  end

local LocalNPCs = {}

local function GetLocalNPC(index)
    return LocalNPCs[index]
end

local function CreateLocalNPC(index)
    if (LocalNPCs[index]) then 
        DestroyLocalNPC(index)
    end
      
    LocalNPCs[index] = {}
    local cfg = Config.hornysBurgerGaragePed[index]
  
    FetchModel(cfg.hornysGaragePedModel)

    ------| CREATING PED |------
    local hornysBurgerGaragePed = CreatePed(1, cfg.hornysGaragePedModel, cfg.hornysGaragePedLocation, false, true)
        FreezeEntityPosition(hornysBurgerGaragePed, true)
        SetEntityInvincible(hornysBurgerGaragePed, true)
        SetBlockingOfNonTemporaryEvents(hornysBurgerGaragePed, true)
        ----- | CREATING TARGET FOR PED | -----
        exports['qb-target']:AddTargetEntity(hornysBurgerGaragePed, { 
            options = {
            { 
                type = "client",
                event = "bd-hornysburger:client:jobGarage",
                icon = "fa-solid fa-warehouse",
                label = "Garage",
                job = "hornysburger"
            },
            { 
                type = "client",
                event = "bd-hornysburger:client:storeGarage",
                icon = "fa-solid fa-square-parking",
                label = "Store Vehicle",
                job = "hornysburger"
            },
            }, 
            distance = 1.5, 
        })
    LocalNPCs[index].hornysBurgerGaragePed = hornysBurgerGaragePed
end

local function DestroyLocalNPC(index)
    if (LocalNPCs[index]) then 
        DeleteEntity(LocalNPCs[index].hornysBurgerGaragePed)
        LocalNPCs[index] = nill
    end 
end

-----| CHECKS TO SEE IF PLAYER IS CERTAIN DISTANCE FROM THE PED |-----
Citizen.CreateThread(function()
    while true do
        local wait = 1000
        local ped = PlayerPedId() 
        local pcoords = GetEntityCoords(ped)
        for i=1, 1 do 
            local cfg = Config.hornysBurgerGaragePed[i]
            local coords = vector3(cfg.hornysGaragePedLocation)
            local dist = #(pcoords - coords)
            local weedProccessPed = GetLocalNPC(i)
            if dist < cfg.hornysGarageRenderDistance then 
                if (GetLocalNPC(i) == nill) then 
                  CreateLocalNPC(i)
                end 
            else 
                DestroyLocalNPC(i)
            end 
        end
      Wait(wait)
    end
end)

CreateThread(function()
    DecorRegister("t_vehicle", 1)
end)
