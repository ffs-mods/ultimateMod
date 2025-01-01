local configs = require 'configs'

local MaxCarSpeed = 400.0

-- Class variables
---@field MaxCarSpeed double
---@field CarSpeed double
---@field Patience double
---@field PatienceSpeed double

-- HasRunOutOfPatience
---@return boolean
if configs.customer.InfinitePatienceForDriveThru == true then
    local function HasRunOutOfPatience(context)
        return false
    end
    RegisterHook('/Game/Blueprints/Gameplay/DriveThru/BP_DriveThruCar.BP_DriveThruCar_C:HasRunOutOfPatience', HasRunOutOfPatience)
end


if configs.customer.FastCarSpeed == true then
    local function GetMaxCarSpeed()
        return MaxCarSpeed
    end
    RegisterHook('/Game/Blueprints/Gameplay/DriveThru/BP_DriveThruCar.BP_DriveThruCar_C:GetMaxCarSpeed', GetMaxCarSpeed)
end
