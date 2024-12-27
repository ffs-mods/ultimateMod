require 'config'

-- Class variables

NotifyOnNewObject('/Game/Blueprints/Characters/Player/BP_Player_AI_Server.BP_Player_AI_Server_C', function(player)
    local CharacterMovement = player:GetPropertyValue("CharacterMovement")
    if CharacterMovement then
        CharacterMovement:SetPropertyValue("MaxWalkSpeed", 200.0)
    end
end)