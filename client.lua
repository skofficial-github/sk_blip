local blips = {}

RegisterNetEvent("myblip:add", function(data)
    if blips[data.source] then
        RemoveBlip(blips[data.source].main)
        RemoveBlip(blips[data.source].radius)
    end

    local main = AddBlipForCoord(data.coords.x, data.coords.y, data.coords.z)
    SetBlipSprite(main, 1)
    SetBlipScale(main, 1.0)
    SetBlipColour(main, 2)
    SetBlipAsShortRange(main, true) -- Minimap edge marker

    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(data.label)
    EndTextCommandSetBlipName(main)

    -- local radius = AddBlipForRadius(data.coords.x, data.coords.y, data.coords.z, 0.0)
    -- SetBlipColour(radius, 2)
    -- SetBlipAlpha(radius, 100)

    blips[data.source] = {
        main = main,
        -- radius = radius
    }
    -- print("[DEBUG] Create Blip for Player ID", data.source)
end)

RegisterNetEvent("myblip:remove", function(playerId)
    if blips[playerId] then
        RemoveBlip(blips[playerId].main)
        RemoveBlip(blips[playerId].radius)
        blips[playerId] = nil
        -- print("[DEBUG] Remove Blip of Player ID", playerId)
    end
end)

AddEventHandler('onClientResourceStart', function(res)
    if res == GetCurrentResourceName() then
        TriggerServerEvent("myblip:requestSync")
    end
end)

CreateThread(function()
    TriggerEvent('chat:addSuggestion', '/blip', 'Places the icon without an ad. (expires in 30 mins)', {
        { name = 'Business Name', help = 'Please enter your business name.' }
    })
    TriggerEvent('chat:addSuggestion', '/delblip', 'Removes the blip from the map.')
end)