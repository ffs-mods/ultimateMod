require 'config'

-- Class variables

NotifyOnNewObject('/Game/Blueprints/Characters/Player/AI_Busser/BP_Player_AI_Busser.BP_Player_AI_Busser_C', function(player)
    print("Player_AI_Busser")
    local CharacterMovement = player:GetPropertyValue("CharacterMovement")
    if CharacterMovement then
        CharacterMovement:SetPropertyValue("MaxWalkSpeed", 2000.0)
    end
end)