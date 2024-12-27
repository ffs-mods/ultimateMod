require 'config'

-- Class variables
---@field MaxTruckSpeed double
---@field TruckSpeed double

NotifyOnNewObject('/Game/Blueprints/Gameplay/Car/BP_GoodsTruck.BP_GoodsTruck_C', function(truck)
    truck:SetPropertyValue("MaxTruckSpeed", goodsTruckConfig.MaxTruckSpeed)
end)