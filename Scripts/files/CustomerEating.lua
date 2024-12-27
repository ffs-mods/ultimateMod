require 'config'

-- Class variables

--
RegisterHook('/Game/Blueprints/Characters/Customer/Tasks/BTT_CustomerEating.BTT_CustomerEating_C:RandomEatingMode', function(context)
    local customerEating = context:get()
    -- customerEating:SetPropertyValue('EatingDuration', 1)
    print('RandomEatingMode hook called')
end)

NotifyOnNewObject('/Game/Blueprints/Characters/Customer/Tasks/BTT_CustomerEating.BTT_CustomerEating_C', function(customerEating)
    local eatingDuration = customerEating:GetPropertyValue('EatingDuration')
    print('CustomerEating object created')
    print(string.format('EatingDuration: %s', eatingDuration))
end)