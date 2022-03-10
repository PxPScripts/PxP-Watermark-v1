RegisterServerEvent("pixel:watermark")
AddEventHandler("pixel:watermark", function() TriggerClientEvent("pixel", source, GetPlayers())
end)