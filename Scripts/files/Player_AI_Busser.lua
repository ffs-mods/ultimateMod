local configs = require 'configs'

local MaxWalkSpeed = 400.0

-- Class variables

if configs.iaEmployee.BusserFastWalkSpeed == true then
    local function OnSpawn(player)
        local CharacterMovement = player:GetPropertyValue("CharacterMovement")
        if CharacterMovement then
            CharacterMovement:SetPropertyValue("MaxWalkSpeed", MaxWalkSpeed)
        end
    end
    NotifyOnNewObject('/Game/Blueprints/Characters/Player/AI_Busser/BP_Player_AI_Busser.BP_Player_AI_Busser_C', OnSpawn)
end