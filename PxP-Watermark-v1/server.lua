RegisterServerEvent("pixel:watermark")
AddEventHandler("pixel:watermark", function() TriggerClientEvent("pixel", source, GetPlayers())
end)

Citizen.CreateThread(function()
    Citizen.Wait(5000)
    print(
        "^0============================================================================================^7\n" ..
        "^0[^4PxP Resources^0]^7 :^0 ^0Thanks For Downloading PxP-Watermark-v1^7\n" ..
        "^0[^4Support^0]^7 :^0 ^0Full Support In Our Discord! - discord.gg/e3S4Svrewg^7\n" ..
        "^0[^4ToS^0]^7 :^0 ^0You Don't Have The Rights To Reupload Whiteout Linking The Normal Resource!^7\n" ..
        "^0[^4PxP^0]^7 :^0 ^0Resource By PxPScripts^7\n" ..
        "^0============================================================================================^7"
    )
end)