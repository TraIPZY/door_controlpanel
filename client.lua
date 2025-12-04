CreateThread(function()
    exports.ox_target:addBoxZone({
        coords = Config.PanelCoords,
        size = vec3(1.0, 1.0, 1.0),
        rotation = 0,
        debug = false,
        options = {
            {
                name = "unlock_cells",
                icon = "fa-solid fa-unlock",
                label = "Déverrouiller toutes les cellules",
                onSelect = function()
                    TriggerServerEvent("door_controlpanel:unlockAll")
                end
            },
            {
                name = "lock_cells",
                icon = "fa-solid fa-lock",
                label = "Verrouiller toutes les cellules",
                onSelect = function()
                    TriggerServerEvent("door_controlpanel:lockAll")
                end
            }
        }
    })
end)

-- Recevoir notification du serveur
RegisterNetEvent("door_controlpanel:notify", function(msg, type)
    -- type = "success" ou "error"
    lib.notify({
        title = 'Système de portes',
        description = msg,
        type = type,
        position = 'top',
        duration = 5000
    })
end)
