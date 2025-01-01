local configs = require 'configs'

local MaxWalkSpeed = 600.0

-- Class variables
---@field MaxTruckSpeed double
---@field TruckSpeed double

if configs.goodsTruck.FastTruckSpeed == true then
    local function OnSpawn(truck)
        truck:SetPropertyValue("MaxTruckSpeed", MaxWalkSpeed)
    end
    NotifyOnNewObject('/Game/Blueprints/Gameplay/Car/BP_GoodsTruck.BP_GoodsTruck_C', OnSpawn)
end