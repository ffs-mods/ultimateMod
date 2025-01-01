local configs = require 'configs'

-- Class variables
---@field DrinkFillerFillingTime TArray<double>

if configs.drinkMachine.FastDrinkFilling == true then
    local function OnSpawn(DrinkMachine)
        local DrinkFillerFillingTime = DrinkMachine:GetPropertyValue('DrinkFillerFillingTime')
        DrinkFillerFillingTime:ForEach(function(key, elem)
            local value = elem:get()
            if value > 0 then
                elem:set(1.0)
            end
        end)
    end
    NotifyOnNewObject('/Game/Blueprints/Gameplay/DrinkMachine/BP_DrinkMachine.BP_DrinkMachine_C', OnSpawn)
end