local configs = require 'configs'

-- Class variables

if configs.oilCan.InfiniteOil == true then
    local function GetItemPutSound(context)
        local oilCan = context:get()
        oilCan:SetPropertyValue("OilPercentage", 1.0)
    end
    RegisterHook('/Game/Blueprints/Gameplay/FastFood/BP_OilCan.BP_OilCan_C:GetItemPutSound', GetItemPutSound)
end
