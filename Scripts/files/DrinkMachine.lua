require 'config'

-- Class variables
---@field DrinkFillerFillingTime TArray<double>

---@param DrinkTag FGameplayTag
---@return double
RegisterHook('/Game/Blueprints/Gameplay/DrinkMachine/BP_DrinkMachine.BP_DrinkMachine_C:GetFillerFillingTime', function(context, DrinkTag)
    -- Retourner une valeur arbitraire
    return 1.0
end)