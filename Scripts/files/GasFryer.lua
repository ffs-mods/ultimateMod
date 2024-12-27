-- 
 local function OnRep_CleanOil1(context)
    local fryer = context:get()
    local currentCleanOil1 = fryer:GetPropertyValue("CleanOil1")
    fryer:SetPropertyValue("CleanOil1", 1)
end
RegisterHook('/Game/Blueprints/Gameplay/Restaurant/BP_GasFryer.BP_GasFryer_C:OnRep_CleanOil1', OnRep_CleanOil1)

local function OnRep_CleanOil2(context)
    local fryer = context:get()
    local currentCleanOil2 = fryer:GetPropertyValue("CleanOil2")
    fryer:SetPropertyValue("CleanOil2", 1)
end
RegisterHook('/Game/Blueprints/Gameplay/Restaurant/BP_GasFryer.BP_GasFryer_C:OnRep_CleanOil2', OnRep_CleanOil2)

--
local function OnRep_WasteOil1(context)
    local fryer = context:get()
    local currentWasteOil1 = fryer:GetPropertyValue("WasteOil1")
    fryer:SetPropertyValue("WasteOil1", 0)
end
RegisterHook('/Game/Blueprints/Gameplay/Restaurant/BP_GasFryer.BP_GasFryer_C:OnRep_WasteOil1', OnRep_WasteOil1)

--
local function OnRep_WasteOil2(context)
    local fryer = context:get()
    local currentWasteOil2 = fryer:GetPropertyValue("WasteOil2")
    fryer:SetPropertyValue("WasteOil2", 0)
end
RegisterHook('/Game/Blueprints/Gameplay/Restaurant/BP_GasFryer.BP_GasFryer_C:OnRep_WasteOil2', OnRep_WasteOil2)
