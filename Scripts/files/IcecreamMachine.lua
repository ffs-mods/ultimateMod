require 'config'

-- Class variables
---@field DynamicIceCreamMatFrame1 double
---@field DynamicIceCreamMatFrame2 double

if icecreamMachineConfig.IceCreamMatFrame ~= false then
    NotifyOnNewObject('/Game/Blueprints/Gameplay/IcecreamMachine/BP_IcecreamMachine.BP_IcecreamMachine_C', function(icecreamMachine)
        icecreamMachine:SetPropertyValue("DynamicIceCreamMatFrame1", icecreamMachineConfig.IceCreamMatFrame)
        icecreamMachine:SetPropertyValue("DynamicIceCreamMatFrame2", icecreamMachineConfig.IceCreamMatFrame)
    end)

    RegisterHook('/Game/Blueprints/Gameplay/IcecreamMachine/BP_IcecreamMachine.BP_IcecreamMachine_C:PlaceCup1', function(context)
        local icecreamCup = context:get()
        icecreamCup:SetPropertyValue("DynamicIceCreamMatFrame1", icecreamMachineConfig.IceCreamMatFrame)
    end)

    RegisterHook('/Game/Blueprints/Gameplay/IcecreamMachine/BP_IcecreamMachine.BP_IcecreamMachine_C:PlaceCup2', function(context)
        local icecreamCup = context:get()
        icecreamCup:SetPropertyValue("DynamicIceCreamMatFrame2", icecreamMachineConfig.IceCreamMatFrame)
    end)
end
