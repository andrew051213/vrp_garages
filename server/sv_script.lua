local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")

local data = {
    garages = {},
    vehicles = {}
}

AddEventHandler("onResourceStart", function(resource)
    if resource == GetCurrentResourceName() then
        for k, v in pairs(cfg['vehicles']) do
            data['vehicles'][v['type']] = data['vehicles'][v['type']] or {}

            v['spawnCode'] = k

            table['insert'](data['vehicles'][v['type']], v)
        end

        for k, v in pairs(cfg['garages']) do
            data['garages'][k] = v
        end

        Citizen['SetTimeout'](1000, function()
            TriggerClientEvent("vrp-garages:initializeGarages", -1, cfg['garages'], cfg['garage_types'])
        end)
    end
end)

RegisterServerEvent("vrp-garages:open", function(type)
    local player = source

    local user_id = vRP['getUserId']{player}

    if not user_id then
        return
    end

    local vehicles = data['vehicles'][type]

    if not vehicles then
        return
    end

    TriggerClientEvent("vrp-garages:sendUIMessage", player, json['encode']({
        type = "openGarage",
        data = {
            vehicles = vehicles,
            type = type
        }
    }))
end)