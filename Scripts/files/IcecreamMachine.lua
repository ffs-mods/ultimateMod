require 'config'

-- Class variables
---@field DynamicIceCreamMatFrame1 double
---@field DynamicIceCreamMatFrame2 double

NotifyOnNewObject('/Game/Blueprints/Gameplay/IcecreamMachine/BP_IcecreamMachine.BP_IcecreamMachine_C', function(icecreamMachine)
    icecreamMachine:SetPropertyValue("DynamicIceCreamMatFrame1", 10)
    icecreamMachine:SetPropertyValue("DynamicIceCreamMatFrame2", 10)
end)


RegisterHook('/Game/Blueprints/Gameplay/IcecreamMachine/BP_IcecreamMachine.BP_IcecreamMachine_C:PlaceCup1', function(context)
    local icecreamCup = context:get()
    icecreamCup:SetPropertyValue("DynamicIceCreamMatFrame1", 1)
end)

RegisterHook('/Game/Blueprints/Gameplay/IcecreamMachine/BP_IcecreamMachine.BP_IcecreamMachine_C:PlaceCup2', function(context)
    local icecreamCup = context:get()
    icecreamCup:SetPropertyValue("DynamicIceCreamMatFrame2", 1)
end)
