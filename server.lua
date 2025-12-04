RegisterNetEvent("door_controlpanel:unlockAll", function()
    for _, doorID in ipairs(Config.CellDoors) do
        exports.ox_doorlock:setDoorState(doorID, 0) -- 0 = unlocked
    end
    print("[door_controlpanel] Toutes les cellules ont été déverrouillées.")

    TriggerClientEvent("door_controlpanel:notify", -1, "Toutes les cellules sont déverrouillées !", "success")
end)

RegisterNetEvent("door_controlpanel:lockAll", function()
    for _, doorID in ipairs(Config.CellDoors) do
        exports.ox_doorlock:setDoorState(doorID, 1) -- 1 = locked
    end
    print("[door_controlpanel] Toutes les cellules ont été verrouillées.")

    TriggerClientEvent("door_controlpanel:notify", -1, "Toutes les cellules sont verrouillées !", "error")
end)
