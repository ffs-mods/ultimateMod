--
local function OnRep_Doneness(context)
    local fryerBasket = context:get()
    local currentDoneness = fryerBasket:GetPropertyValue("Doneness")
    fryerBasket:SetPropertyValue("Doneness", 0.5)
    -- if currentDoneness >= 0.5 then
    --     fryerBasket:SetPropertyValue("Doneness", 0.5)
    -- end
end
RegisterHook('/Game/Blueprints/Gameplay/FastFood/BP_FryerBasket.BP_FryerBasket_C:OnRep_Doneness', OnRep_Doneness)