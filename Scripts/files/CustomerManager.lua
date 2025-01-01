local configs = require 'configs'

--
if configs.customer.FastSpawningForTable == true then
    RegisterHook("/Game/Blueprints/Gameplay/CustomerQueue/BP_CustomerManager.BP_CustomerManager_C:GenerateSpawnCooldown", function(context)
        print('ModdedFF: GenerateSpawnCooldown')
        return 0.0
    end)
end

if configs.customer.FastSpawningDriveThru == true then
    RegisterHook("/Game/Blueprints/Gameplay/CustomerQueue/BP_CustomerManager.BP_CustomerManager_C:GenerateDriveThruSpawnCooldown", function(context)
        print('ModdedFF: GenerateDriveThruSpawnCooldown')
        return 0.0
    end)
end
