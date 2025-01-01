local configs = require 'configs'

local maxDoneness = 0.5

-- Class variables

if configs.gasFryer.LimiteDoneness == true then
    local function OnRep_Doneness(context)
        local fryerBasket = context:get()
        local currentDoneness = fryerBasket:GetPropertyValue("Doneness")
        if currentDoneness >= maxDoneness then
            fryerBasket:SetPropertyValue("Doneness", maxDoneness)
        end
    end
    RegisterHook('/Game/Blueprints/Gameplay/FastFood/BP_FryerBasket.BP_FryerBasket_C:OnRep_Doneness', OnRep_Doneness)
end