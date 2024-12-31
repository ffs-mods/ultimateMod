require 'config'

-- Class variables

if itemsConfig.freezeTemperature == true then
    local function UpdateTemperatures(context)
        local ItemTemperatureUpdater = context:get()
        local item = ItemTemperatureUpdater:GetFullName()

        local UpdatePerTick = ItemTemperatureUpdater:GetPropertyValue("UpdatePerTick")
        if UpdatePerTick == nil or UpdatePerTick == 0 then
            return
        end

        ItemTemperatureUpdater:SetPropertyValue("UpdatePerTick", 0)
    end
    RegisterHook('/Game/Blueprints/Gameplay/Item/BP_ItemTemperatureUpdater.BP_ItemTemperatureUpdater_C:UpdateTemperatures', UpdateTemperatures)
end
