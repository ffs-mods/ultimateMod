require 'config'

-- Class variables
---@field DrinkFillerFillingTime TArray<double>

if drinkMachineConfig.DrinkFillerFillingTime ~= false then
    local function OnSpawn(DrinkMachine)
        local DrinkFillerFillingTime = DrinkMachine:GetPropertyValue('DrinkFillerFillingTime')
        DrinkFillerFillingTime:ForEach(function(key, elem)
            local value = elem:get()
            if value > 0 then
                elem:set(drinkMachineConfig.DrinkFillerFillingTime)
            end
        end)
    end
    NotifyOnNewObject('/Game/Blueprints/Gameplay/DrinkMachine/BP_DrinkMachine.BP_DrinkMachine_C', OnSpawn)
end