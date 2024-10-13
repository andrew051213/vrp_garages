local tables = {}

RegisterNetEvent("vrp-garages:initializeGarages", function(garages, garage_types)
    tables['garages'] = garages
    tables['garage_types'] = garage_types
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
    Citizen['Wait'](1000)
    
    if not tables['garages'] or not tables['garage_types'] then
        return
    end

    for i = 1, #tables['garages'] do
        local garage = tables['garages'][i]

        if garage then
            local garageType = garage[1]
            local coords = garage[2]

            if type(coords) ~= "vector3" then
                goto skip_garage
            end

            local garageTypeConfig = tables['garage_types'][garageType]

            if garageTypeConfig and garageTypeConfig['_config'] then
                local blip = AddBlipForCoord(coords['x'], coords['y'], coords['z'])

                SetBlipSprite(blip, garageTypeConfig['_config']['blipid'])
                SetBlipDisplay(blip, 4)
                SetBlipScale(blip, 0.7)
                SetBlipColour(blip, garageTypeConfig['_config']['blipcolor'] or 3)
                SetBlipAsShortRange(blip, true)
                BeginTextCommandSetBlipName("STRING")
                AddTextComponentString(garageTypeConfig['_config']['text'] or "Garage")
                EndTextCommandSetBlipName(blip)
            end
        end
        
        ::skip_garage::
    end
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