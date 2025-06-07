local format = string.format

RegisterCommand("enginesound", function(source, args, rawCommand)
    if not Config.HasPermission(source) then
        Config.Notify(source, 'You do not have permission to use this command!', 'error')
        return
    end
    TriggerClientEvent("ZLabs:EngineSounds:OpenMenu", source)
end, false)

RegisterServerEvent("ZLabs:EngineSounds:ChangeEngineSound", function(data)
    local src = source

    if not Config.HasPermission(src) then
        -- this is to prevent again any potential exploiters triggering your events
        return Config.BanPlayer(src)
    end

    if type(data) ~= "table" then
        lib.print.error(format("[changeEngineSound] %s [%s] sent invalid data to the server.", GetPlayerName(src), src))
        return
    end

    local entity = NetworkGetEntityFromNetworkId(data.net)
    if not DoesEntityExist(entity) then return end
    Entity(entity).state['vehdata:sound'] = data.sound

    lib.print.debug(format("%s [%s] has changed their engine sound to %s", GetPlayerName(src), src, data.label))
end)

lib.callback.register("ZLabs:EngineSounds:GetPerms", function(source)
    return Config.HasPermission(source)
end)
