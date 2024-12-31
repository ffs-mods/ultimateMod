require 'config'

-- Class variables
---@field DrinkFillerFillingTime TArray<double>

NotifyOnNewObject('/Game/Blueprints/Gameplay/DrinkMachine/BP_DrinkMachine.BP_DrinkMachine_C', function(DrinkMachine)
    local DrinkFillerFillingTime = DrinkMachine:GetPropertyValue('DrinkFillerFillingTime')
    DrinkFillerFillingTime:ForEach(function(key, elem)
        local value = elem:get()
        if value > 0 then
            elem:set(1.0)
        end
    end)
end)