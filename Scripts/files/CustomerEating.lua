local configs = require 'configs'

-- Class variables

if configs.customer.FastEating == true then
    RegisterHook('/Game/Blueprints/Characters/Customer/Tasks/BTT_CustomerEating.BTT_CustomerEating_C:RandomEatingMode', function(context)
        local customerEating = context:get()
        customerEating:SetPropertyValue('EatingDuration', 1.0)
    end)
end