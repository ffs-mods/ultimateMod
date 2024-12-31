require 'config'

-- Class variables
---@field MaxCarSpeed double
---@field CarSpeed double
---@field Patience double
---@field PatienceSpeed double

-- HasRunOutOfPatience
---@return boolean
if driveThruCarConfig.DisableRunOutOfPatience == true then
    local function HasRunOutOfPatience(context)
        return false
    end
    RegisterHook('/Game/Blueprints/Gameplay/DriveThru/BP_DriveThruCar.BP_DriveThruCar_C:HasRunOutOfPatience', HasRunOutOfPatience)
end


if driveThruCarConfig.MaxCarSpeed ~= false then
    local function GetMaxCarSpeed()
        return driveThruCarConfig.MaxCarSpeed
    end
    RegisterHook('/Game/Blueprints/Gameplay/DriveThru/BP_DriveThruCar.BP_DriveThruCar_C:GetMaxCarSpeed', OnSpawn)
end
