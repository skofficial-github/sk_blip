local QBCore = exports['qb-core']:GetCoreObject()
local blipList = {}

RegisterCommand("blip", function(source, args)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end

    if #args == 0 then
        TriggerClientEvent('QBCore:Notify', source, 'Please enter your business name.', 'error')
        return
    end

    local label = table.concat(args, " ")
    local ped = GetPlayerPed(source)
    local coords = GetEntityCoords(ped)

    -- Remove old blip if exists
    if blipList[source] then
        TriggerClientEvent("myblip:remove", -1, source)
    end

    blipList[source] = {
        coords = coords,
        label = label,
        time = os.time()
    }

    TriggerClientEvent("myblip:add", -1, {
        source = source,
        coords = coords,
        label = label
    })

    -- Remove after 30 minutes
    Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000) -- Check every second

        local currentTime = os.time()
        for source, data in pairs(blipList) do
            local timeLeft = 1800 - (currentTime - data.time) -- Time left in seconds (30 minutes = 1800 seconds)

            if timeLeft == 300 then -- Notify when 5 minutes (300 seconds) left
                TriggerClientEvent('QBCore:Notify', source, "Your business blip will expire in 5 minutes.", "warning")
            elseif timeLeft <= 0 then
                blipList[source] = nil
                TriggerClientEvent("myblip:remove", -1, source)
                TriggerClientEvent('QBCore:Notify', source, "Your business blip has expired.", "error")
            end
        end
    end
end)

    TriggerClientEvent('QBCore:Notify', source, "Places the icon without an ad. (expires in 30 mins)", "success")
end, false)

RegisterCommand("delblip", function(source)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end

    if blipList[source] then
        blipList[source] = nil
        TriggerClientEvent("myblip:remove", -1, source)
        TriggerClientEvent('QBCore:Notify', source, "Removes the blip from the map.", "primary")
    else
        TriggerClientEvent('QBCore:Notify', source, "You don't have any active shop blip.", "error")
    end
end, false)

RegisterNetEvent("myblip:requestSync", function()
    local src = source
    for player, data in pairs(blipList) do
        TriggerClientEvent("myblip:add", src, {
            source = player,
            coords = data.coords,
            label = data.label
        })
    end
end)