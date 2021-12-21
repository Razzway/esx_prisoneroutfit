local tCivil = false
local tPrison = true

function Razzway.open:PrisonerMenu()
    local mainMenu = RageUI.CreateMenu(_Trad.lang.MENU_TITLE, _Trad.lang.MENU_SUBTITLE)

    RageUI.Visible(mainMenu, not RageUI.Visible(mainMenu))

    while mainMenu do
        Wait(1)

        RageUI.IsVisible(mainMenu, function()
            RageUI.Separator(('← ~b~%s~s~ →'):format(_Trad.lang.POLICE_GAV))
            RageUI.Button(_Trad.lang.CHANGE_TO_CIVIL, nil, {RightLabel = '→'}, tCivil, {
                onSelected = function()
                    tCivil = false
                    tPrison = true
                    Razzway.Function:ResetPlayerOutfit()
                    TriggerServerEvent('esx_prisoneroutfit:reset-Tenue')
                end
            })
            for k,v in pairs(Config.Outfit) do
                RageUI.Button(_Trad.lang.CHANGE_TO_PRISONER, nil, {RightLabel = '→'}, tPrison, {
                    onSelected = function()
                        tCivil = true
                        tPrison = false
                        Razzway.Function:applySkinSpecific(v)
                        TriggerServerEvent('esx_prisoneroutfit:put-Tenue')
                    end
                })
            end
        end)

        if not RageUI.Visible(mainMenu) then
            mainMenu = RMenu:DeleteType('mainMenu', true)
        end

    end
end