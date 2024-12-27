require 'config'

-- Class variables
---@field DrinkFillerFillingTime TArray<double>

---@return double
RegisterHook('/Game/Blueprints/Gameplay/DrinkMachine/BP_DrinkMachine.BP_DrinkMachine_C:GetFillerFillingTime', function(context)
    return 1.0
end)