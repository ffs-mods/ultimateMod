local configs = require 'configs'

local WalkSpeed = 400.0

-- Class variables
---@field CustomerTable ABP_Customer_TableBase_C
---@field CustomerState ECustomerState::Type
---@field CustomerQueue ABP_CustomerQueue_C
---@field CustomerQueueNumber int32
---@field Patience double
---@field PatienceSpeed double
---@field Order ABP_Order_C
---@field OrderNumberOfPerson int32
---@field LeavingReason ECustomerLeavingReason::Type

-- Update speed
if configs.customer.FastWalkSpeed == true then
    local function OnSpawn(customer)
        local CharacterMovement = customer:GetPropertyValue("CharacterMovement")
        if CharacterMovement then
            CharacterMovement:SetPropertyValue("MaxWalkSpeed", WalkSpeed)
        end
    end
    NotifyOnNewObject('/Game/Blueprints/Characters/Customer/BP_Customer.BP_Customer_C', OnSpawn)
end

-- HasRunOutOfPatience
---@return boolean
if configs.customer.InfinitePatienceForTable == true then
    local function HasRunOutOfPatience(context)
        return false
    end
    RegisterHook('/Game/Blueprints/Characters/Customer/BP_Customer.BP_Customer_C:HasRunOutOfPatience', HasRunOutOfPatience)
end