require 'config'

-- Class variables
---@field MaxTruckSpeed double
---@field TruckSpeed double

if goodsTruckConfig.MaxTruckSpeed ~= false then
    local function OnSpawn(truck)
        truck:SetPropertyValue("MaxTruckSpeed", goodsTruckConfig.MaxTruckSpeed)
    end
    NotifyOnNewObject('/Game/Blueprints/Gameplay/Car/BP_GoodsTruck.BP_GoodsTruck_C', OnSpawn)
end