local configs = require 'configs'

local MaxWalkSpeed = 400.0

-- Class variables

if configs.iaEmployee.ServerFastWalkSpeed == true then
    local function OnSpawn(player)
        local CharacterMovement = player:GetPropertyValue("CharacterMovement")
        if CharacterMovement then
            CharacterMovement:SetPropertyValue("MaxWalkSpeed", MaxWalkSpeed)
        end
    end
    NotifyOnNewObject('/Game/Blueprints/Characters/Player/AI_Server/BP_Player_AI_Server.BP_Player_AI_Server_C', OnSpawn)
end