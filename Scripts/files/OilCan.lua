require 'config'

-- Class variables

--
local function GetItemPutSound(context)
    local oilCan = context:get()
    oilCan:SetPropertyValue("OilPercentage", 1)
end
RegisterHook('/Game/Blueprints/Gameplay/FastFood/BP_OilCan.BP_OilCan_C:GetItemPutSound', GetItemPutSound)