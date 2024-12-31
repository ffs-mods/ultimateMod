require 'config'

-- Class variables

if fryerBasketConfig.Doneness ~= false then
    local function OnRep_Doneness(context)
        local fryerBasket = context:get()
        local currentDoneness = fryerBasket:GetPropertyValue("Doneness")
        if currentDoneness >= fryerBasketConfig.Doneness then
            fryerBasket:SetPropertyValue("Doneness", fryerBasketConfig.Doneness)
        end
    end
    RegisterHook('/Game/Blueprints/Gameplay/FastFood/BP_FryerBasket.BP_FryerBasket_C:OnRep_Doneness', OnRep_Doneness)
end