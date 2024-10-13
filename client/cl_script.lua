local tables = {}

RegisterNetEvent("vrp-garages:initializeGarages", function(data)
    tables['garages'] = data
end)

RegisterNetEvent("vrp-garages:sendUIMessage", function (...)
    SendNuiMessage(...)
end)

RegisterNuiCallback("vrp-garages:setFocus", function(data)
    SetNuiFocus(data[1], data[2])
end)

RegisterNuiCallback("vrp-garages:spawnVehicle", function(data)
    local ped = PlayerPedId()

    local vehicle = GetHashKey(data['spawnCode'])

    local x, y, z = table['unpack'](GetEntityCoords(ped))

    RequestModel(vehicle)

    while not HasModelLoaded(vehicle) do
        Wait(500)
    end

    local vehicle = CreateVehicle(vehicle, x, y, z, 0.0, true, true)

    SetPedIntoVehicle(ped, vehicle, -1)

    SetVehicleOnGroundProperly(vehicle)

    SetVehicleFuelLevel(vehicle, 100.0)

    SetVehicleDirtLevel(vehicle, 0.0)

    SetVehicleFixed(vehicle)
end)

Citizen['CreateThread'](function()
    while true do
        local ped = PlayerPedId()

        local sleep = 500

        if tables['garages'] then
            for i = 0, #tables['garages'] do
                local garage = tables['garages'][i]
                
                if garage then
                    local type = tables['garages'][i][1]

                    local coords = tables['garages'][i][2]

                    local distance = #(GetEntityCoords(ped) - coords)

                    if distance < 5 then
                        if cfg['marker'] then
                            DrawMarker(cfg['markerBlip'], coords['x'], coords['y'], coords['z'] - 1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 3.0, 3.0, 1.0, 255, 255, 255, 100, false, false, 2, false, nil, nil, false)
                        end

                        if IsControlJustPressed(0, 38) and distance < 1.5 then
                            TriggerServerEvent("vrp-garages:open", type)
                        end

                        sleep = 5
                    end
                end
            end
        end

        Citizen['Wait'](sleep)
    end
end)