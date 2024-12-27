require 'config'

-- Class variables
---@field MaxCarSpeed double
---@field CarSpeed double
---@field Patience double
---@field PatienceSpeed double

-- 
local function UpdatePatience(context)
    local customer = context:get()
    customer:SetPropertyValue("Patience", 1.0)
    customer:SetPropertyValue("PatienceSpeed", 0.0)
end
RegisterHook('/Game/Blueprints/Gameplay/DriveThru/BP_DriveThruCar.BP_DriveThruCar_C:UpdatePatience', UpdatePatience)

NotifyOnNewObject('/Game/Blueprints/Gameplay/DriveThru/BP_DriveThruCar.BP_DriveThruCar_C', function(DriveThruCar)
    print('DriveThruCar object created')
    DrinkMachine:SetPropertyValue("MaxCarSpeed", 200.0)
end)
