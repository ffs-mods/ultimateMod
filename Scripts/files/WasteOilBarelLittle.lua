-- 
 local function GetItemHoldingTransform(context)
    local wasteOil = context:get()
    wasteOil:SetPropertyValue("WasteOil", 0)
end
RegisterHook('/Game/Blueprints/Gameplay/Restaurant/BP_WasteOilBarelLittle.BP_WasteOilBarelLittle_C:GetItemHoldingTransform', GetItemHoldingTransform)