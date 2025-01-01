local configs = require 'configs'

local CoffeeGrindingUpdate = 1.0
local CoffeeFillingTime = 1.0
local MilkFrothingUpdate = 1.0

-- Class variables
---@field CoffeeGrindingCount double
---@field CoffeeGrindingTime double
---@field CoffeeFillerFillingTime double
---@field MilkFlothingTime double
---@field CoffeeBeanPercentage double
---@field CoffeeGroundPercentage double

-- RemoveCoffeeFromContainer
if configs.coffeeMachine.InfiniteRemoveCoffeeFromContainer == true then
    local RemoveCoffeeFromContainer = function(context)
        local coffeeMachine = context:get()
        coffeeMachine:SetPropertyValue("CoffeeBeanPercentage", 1.0)
    end
    RegisterHook('/Game/Blueprints/Gameplay/CoffeeMachine/BP_CoffeeMachine.BP_CoffeeMachine_C:RemoveCoffeeFromContainer', RemoveCoffeeFromContainer)
end

-- CoffeeGrindingUpdate
if configs.coffeeMachine.InfiniteGrindingCoffeeFromContainer == true then
    local CoffeeGrindingUpdate = function(context)
        local coffeeMachine = context:get()
        coffeeMachine:SetPropertyValue("CoffeeGroundPercentage", CoffeeGrindingUpdate)
    end
    RegisterHook('/Game/Blueprints/Gameplay/CoffeeMachine/BP_CoffeeMachine.BP_CoffeeMachine_C:CoffeeGrindingUpdate', CoffeeGrindingUpdate)
end

-- CoffeeFillingUpdate
if configs.coffeeMachine.FastCoffeeFilling == true then
    local CoffeeFillingUpdate = function(context)
        local coffeeMachine = context:get()
        coffeeMachine:SetPropertyValue("CoffeeFillerFillingTime", CoffeeFillingTime)
    end
    RegisterHook('/Game/Blueprints/Gameplay/CoffeeMachine/BP_CoffeeMachine.BP_CoffeeMachine_C:CoffeeFillingUpdate', CoffeeFillingUpdate)
end

-- MilkFrothingUpdate
if configs.coffeeMachine.FastMilkFrothing == true then
    local MilkFrothingUpdate = function(context)
        local coffeeMachine = context:get()
        coffeeMachine:SetPropertyValue("MilkFlothingTime", MilkFrothingUpdate)
    end
    RegisterHook('/Game/Blueprints/Gameplay/CoffeeMachine/BP_CoffeeMachine.BP_CoffeeMachine_C:MilkFrothingUpdate', MilkFrothingUpdate)
end
