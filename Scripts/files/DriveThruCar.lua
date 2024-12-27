-- 
local function UpdatePatience(context)
    local customer = context:get()
    customer:SetPropertyValue("UpdatePatienceTime", 0.0)
    customer:SetPropertyValue("Patience", 1.0)
    customer:SetPropertyValue("PatienceSpeed", 0.0)
end
RegisterHook('/Game/Blueprints/Gameplay/DriveThru/BP_DriveThruCar.BP_DriveThruCar_C:UpdatePatience', UpdatePatience)