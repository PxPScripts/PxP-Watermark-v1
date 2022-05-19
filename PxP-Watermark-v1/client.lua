RegisterNetEvent("pixel:watermark")
AddEventHandler("pixel:watermark", function(player)
end)

    TriggerServerEvent('getPlayers', function(playerCount)
        while not NetworkIsSessionActive() do
            Citizen.Wait(1000)
        end
        print(playerCount)
        SendNUIMessage({action = "setPlayerId", id = GetPlayerServerId(PlayerId())})
        SendNUIMessage({action = "setPlayerCount", count = playerCount})
end)


RegisterNetEvent('pixel:playerLoaded')
AddEventHandler('pixel:playerLoaded', function()
TriggerServerEvent("getPlayers:check")
end)

-- Helst Blive Fjernet
--[[
RegisterNetEvent('getPlayers:done')
AddEventHandler('getPlayers:done', function(playerCount)
    print(playerCount)
    SendNUIMessage({action = "setPlayerId", id = GetPlayerServerId(PlayerId())})
    SendNUIMessage({action = "setPlayerCount", count = playerCount})
end)
]]


Citizen.CreateThread(function()
    while true do
        SendNUIMessage({action = "setPlayerCount", count = #GetActivePlayers()}) 
    Wait(600)
    end
end)
Citizen.CreateThread(function()
    while true do
        SendNUIMessage({action = "setPlayerId", id = GetPlayerServerId(PlayerId())}) 
    Wait(6000)
    end
end)