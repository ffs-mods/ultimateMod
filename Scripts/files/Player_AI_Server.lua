require 'config'

-- Class variables

NotifyOnNewObject('/Game/Blueprints/Characters/Player/AI_Server/BP_Player_AI_Server.BP_Player_AI_Server_C', function(player)
    print("Player_AI_Server")
    local CharacterMovement = player:GetPropertyValue("CharacterMovement")
    if CharacterMovement then
        CharacterMovement:SetPropertyValue("MaxWalkSpeed", 2000.0)
    end
end)