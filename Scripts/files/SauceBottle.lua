require 'config'

-- Class variables

if itemsConfig.infiniteSauce == true then
    local function GetItemHoldingTransform(context)
        local sauce = context:get()
        sauce:SetPropertyValue("SauceCount", 15)
    end
    RegisterHook('/Game/Blueprints/Gameplay/FastFood/BP_SauceBottle.BP_SauceBottle_C:GetItemHoldingTransform', GetItemHoldingTransform)
end
