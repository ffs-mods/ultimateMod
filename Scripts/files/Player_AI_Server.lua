require 'config'

-- Class variables

if iaHelperConfig.MaxWalkSpeed ~= false then
    local function OnSpawn(player)
        local CharacterMovement = player:GetPropertyValue("CharacterMovement")
        if CharacterMovement then
            CharacterMovement:SetPropertyValue("MaxWalkSpeed", iaHelperConfig.MaxWalkSpeed)
        end
    end
    NotifyOnNewObject('/Game/Blueprints/Characters/Player/AI_Server/BP_Player_AI_Server.BP_Player_AI_Server_C', OnSpawn)
end