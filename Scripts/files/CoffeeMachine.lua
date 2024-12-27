require 'config'

-- Class variables
---@field CoffeeGrindingCount double
---@field CoffeeGrindingTime double
---@field CoffeeFillerFillingTime double
---@field MilkFlothingTime double
---@field CoffeeBeanPercentage double
---@field CoffeeGroundPercentage double


NotifyOnNewObject('/Game/Blueprints/Gameplay/CoffeeMachine/BP_CoffeeMachine.BP_CoffeeMachine_C', function(coffeeMachine)
    -- coffeeMachine:SetPropertyValue("CoffeeFillerFillingTime", 1.0)
    -- coffeeMachine:SetPropertyValue("MilkFlothingTime", 1.0)
end)

-- RemoveCoffeeFromContainer
RegisterHook('/Game/Blueprints/Gameplay/CoffeeMachine/BP_CoffeeMachine.BP_CoffeeMachine_C:RemoveCoffeeFromContainer', function(context)
    local coffeeMachine = context:get()
    coffeeMachine:SetPropertyValue("CoffeeBeanPercentage", 1.0)
end)

-- CoffeeGrindingUpdate
RegisterHook('/Game/Blueprints/Gameplay/CoffeeMachine/BP_CoffeeMachine.BP_CoffeeMachine_C:CoffeeGrindingUpdate', function(context)
    local coffeeMachine = context:get()
    coffeeMachine:SetPropertyValue("CoffeeGroundPercentage", 0.01)
end)

-- CoffeeFillingUpdate
RegisterHook('/Game/Blueprints/Gameplay/CoffeeMachine/BP_CoffeeMachine.BP_CoffeeMachine_C:CoffeeFillingUpdate', function(context)
    local coffeeMachine = context:get()
    coffeeMachine:SetPropertyValue("CoffeeGroundPercentage", 0.01)
    coffeeMachine:SetPropertyValue("CoffeeFillerFillingTime", 1.0)
end)

-- MilkFrothingUpdate
RegisterHook('/Game/Blueprints/Gameplay/CoffeeMachine/BP_CoffeeMachine.BP_CoffeeMachine_C:MilkFrothingUpdate', function(context)
    local coffeeMachine = context:get()
    coffeeMachine:SetPropertyValue("MilkFlothingTime", 1.0)
end)