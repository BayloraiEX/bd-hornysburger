local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("bd-hornysburger:server:billPlayer", function(playerId, amount)
    local biller = QBCore.Functions.GetPlayer(source)
    local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
    local amount = tonumber(amount)
    if biller.PlayerData.job.name == 'hornysburger' then
        if billed ~= nil then
            if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                if amount and amount > 0 then
                billed.Functions.RemoveMoney('bank', amount)
                lib.notify(source, {
                    id = 'hornys_burgers',
                    title = 'Hornys Burgers',
                    description = 'You charged a customer.',
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
                lib.notify(billed.PlayerData.source, {
                    id = 'hornys_burgers',
                    title = 'Hornys Burgers',
                    description = 'You have been charged $'..amount..' for your order.',
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
			exports['qb-banking']:AddMoney('hornysburger', amount, 'Sale')
                else
                    lib.notify(source, {
                        id = 'hornys_burgers',
                        title = 'Hornys Burgers',
                        description = 'Must be a valid amount above 0.',
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
                end
            else
                lib.notify(source, {
                    id = 'hornys_burgers',
                    title = 'Hornys Burgers',
                    description = 'You cannot bill yourself',
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
            end
        else
            lib.notify(source, {
              id = 'hornys_burgers',
              title = 'Hornys Burgers',
              description = 'Player not online',
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
        end
    end
end)
