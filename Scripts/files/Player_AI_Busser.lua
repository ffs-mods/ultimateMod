require 'config'

-- Class variables

if iaHelperConfig.MaxWalkSpeed ~= false then
    local function OnSpawn(context)
        local CharacterMovement = player:GetPropertyValue("CharacterMovement")
        if CharacterMovement then
            CharacterMovement:SetPropertyValue("MaxWalkSpeed", iaHelperConfig.MaxWalkSpeed)
        end
    end
    NotifyOnNewObject('/Game/Blueprints/Characters/Player/AI_Busser/BP_Player_AI_Busser.BP_Player_AI_Busser_C', OnSpawn)
end