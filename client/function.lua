Razzway = {};
Razzway.open = {} or {};
Razzway.Function = {} or {};

function Razzway.Function:ResetPlayerOutfit()
    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
        TriggerEvent('skinchanger:loadSkin', skin)
    end)
end

function Razzway.Function:applySkinSpecific(vest)
	TriggerEvent('skinchanger:getSkin', function(skin)
		local uniformObject
		if skin.sex == 0 then
			uniformObject = vest.clothes["male"]
		else
			uniformObject = vest.clothes["female"]
		end
		if uniformObject then
			TriggerEvent('skinchanger:loadClothes', skin, uniformObject)
		end
	end)
end