ESX = nil

CreateThread(function()
    while ESX == nil do
        TriggerEvent(Config.getESX, function(lol) ESX = lol end)
        Wait(10)
    end
    print(GetCurrentResourceName()..' ^3>>^7 ^5Create^7 by ^1Razzway')

    while true do
        local interval = 750

        for _,v in pairs(Config.interactionPos) do
            local myCoords, interactionPos = GetEntityCoords(PlayerPedId()), v.pos
            if #(myCoords-interactionPos) < 1.0 then
                interval = 0
                ESX.ShowHelpNotification("Appuyez sur ~INPUT_CONTEXT~ pour accéder au vestiaire")
                if IsControlJustReleased(0, 54) then
                    Razzway.open:PrisonerMenu()
                end
            elseif #(myCoords-interactionPos) < 5.0 then
                interval = 0
                DrawMarker(Config.Marker.Type, interactionPos, 0, 0, 0, Config.Marker.Rotation, nil, nil, Config.Marker.Size[1], Config.Marker.Size[2], Config.Marker.Size[3], Config.Marker.Color[1], Config.Marker.Color[2], Config.Marker.Color[3], 170, 0, 1, 0, 0, nil, nil, 0)
            end
        end
        Wait(interval)

    end
end)