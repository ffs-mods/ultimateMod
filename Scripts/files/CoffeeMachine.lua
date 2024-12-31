require 'config'

-- Class variables
---@field CoffeeGrindingCount double
---@field CoffeeGrindingTime double
---@field CoffeeFillerFillingTime double
---@field MilkFlothingTime double
---@field CoffeeBeanPercentage double
---@field CoffeeGroundPercentage double

-- RemoveCoffeeFromContainer
if coffeeMachineConfig.RemoveCoffeeFromContainer ~= false then
    local RemoveCoffeeFromContainer = function(context)
        local coffeeMachine = context:get()
        coffeeMachine:SetPropertyValue("CoffeeBeanPercentage", 1.0)
    end
    RegisterHook('/Game/Blueprints/Gameplay/CoffeeMachine/BP_CoffeeMachine.BP_CoffeeMachine_C:RemoveCoffeeFromContainer', RemoveCoffeeFromContainer)
end

-- CoffeeGrindingUpdate
if coffeeMachineConfig.CoffeeGrindingUpdate ~= false then
    local CoffeeGrindingUpdate = function(context)
        local coffeeMachine = context:get()
        coffeeMachine:SetPropertyValue("CoffeeGroundPercentage", coffeeMachineConfig.CoffeeGrindingUpdate)
    end
    RegisterHook('/Game/Blueprints/Gameplay/CoffeeMachine/BP_CoffeeMachine.BP_CoffeeMachine_C:CoffeeGrindingUpdate', CoffeeGrindingUpdate)
end

-- CoffeeFillingUpdate
if coffeeMachineConfig.CoffeeFillingTime ~= false then
    local CoffeeFillingUpdate = function(context)
        local coffeeMachine = context:get()
        coffeeMachine:SetPropertyValue("CoffeeFillerFillingTime", coffeeMachineConfig.CoffeeFillingTime)
    end
    RegisterHook('/Game/Blueprints/Gameplay/CoffeeMachine/BP_CoffeeMachine.BP_CoffeeMachine_C:CoffeeFillingUpdate', CoffeeFillingUpdate)
end

-- MilkFrothingUpdate
if coffeeMachineConfig.MilkFrothingUpdate ~= false then
    local MilkFrothingUpdate = function(context)
        local coffeeMachine = context:get()
        coffeeMachine:SetPropertyValue("MilkFlothingTime", coffeeMachineConfig.MilkFrothingUpdate)
    end
    RegisterHook('/Game/Blueprints/Gameplay/CoffeeMachine/BP_CoffeeMachine.BP_CoffeeMachine_C:MilkFrothingUpdate', MilkFrothingUpdate)
end
