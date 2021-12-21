TriggerEvent(Config.getESX, function(ok) ESX = ok end)

RegisterServerEvent('esx_prisoneroutfit:put-Tenue')
AddEventHandler('esx_prisoneroutfit:put-Tenue', function()
    local _src = source
    TriggerClientEvent('esx:showNotification', _src, _Trad.lang.PUT_MESSAGE)
end)

RegisterServerEvent('esx_prisoneroutfit:reset-Tenue')
AddEventHandler('esx_prisoneroutfit:reset-Tenue', function()
    local _src = source
    TriggerClientEvent('esx:showNotification', _src, _Trad.lang.RESET_MESSAGE)
end)