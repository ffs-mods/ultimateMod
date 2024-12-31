require 'config'

-- Class variables

if CustomerConfig.EatingDuration ~= false then
    RegisterHook('/Game/Blueprints/Characters/Customer/Tasks/BTT_CustomerEating.BTT_CustomerEating_C:RandomEatingMode', function(context)
        local customerEating = context:get()
        customerEating:SetPropertyValue('EatingDuration', customerConfig.EatingDuration)
    end)
end