local UEHelpers = require("UEHelpers")

--
local function StartMod(context)

    print('ModdedFF: Loading modded files')

    -- -- Gamemode
    require 'files/BakeryGameState_Ingame'

    -- -- Extra Ingredients
    require 'files/SauceBottle'

    -- -- Grill
    require 'files/BeefPatty'

    -- -- Oils
    require 'files/OilCan'
    require 'files/WasteOilBarelLittle'

    -- Fryer    
    require 'files/FryerBasket'
    require 'files/GasFryer'

    -- Items    
    require 'files/ItemStack'
    require 'files/ItemTemperatureUpdater'

    -- -- Customers (And DriveThru)
    require 'files/Customer'
    require 'files/DriveThruCar'
    require 'files/CustomerEating'

    -- -- Truck
    require 'files/GoodsTruck'

    -- -- IA
    require 'files/Player_AI_Server'
    require 'files/Player_AI_Busser'

    -- Machines
    require 'files/CoffeeMachine'
    require 'files/DrinkMachine'
    require 'files/IceCreamMachine'

end

-- RegisterHook('/Game/Blueprints/GameMode/GameState/BP_BakeryGameState_Ingame.BP_BakeryGameState_Ingame_C:LoadSaveData', function(context)
--     local gameState = context:get()
--     gameState:SetTotalDays(1)
--     gameState:SetRestaurantLevel(32)
--     gameState:SetRestaurantMoney(1000)
-- end)


RegisterKeyBind(Key.F1, StartMod)

NotifyOnNewObject('/Game/Blueprints/BP_BakeryGameInstance.BP_BakeryGameInstance_C', function(gameInstance)
    print('BakeryGameInstance found')
end)


NotifyOnNewObject('/Game/Blueprints/GameMode/BP_BakeryGameMode_Ingame.BP_BakeryGameMode_Ingame_C', function(gameMode)
    print('BakeryGameMode_Ingame found')
end)

NotifyOnNewObject('/Game/Blueprints/GameMode/BP_BakeryGameMode_Ingame.BP_BakeryGameMode_C', function(gameMode)
    print('BP_BakeryGameMode_C found')
end)

NotifyOnNewObject('/Game/Blueprints/GameMode/GameState/BP_BakeryGameState_Ingame.BP_BakeryGameState_Ingame_C', function(gameState)
    print('BakeryGameState_Ingame found')
end)

NotifyOnNewObject('/Game/Blueprints/GameMode/GameState/BP_BakeryGameState.BP_BakeryGameState_C', function(gameState)
    print('BakeryGameState found')
end)


NotifyOnNewObject('/Game/Blueprints/BP_BakeryGameInstance.BP_BakeryGame_C', function(gameInstance)
    print('BP_BakeryGame_C found')
end)

NotifyOnNewObject("/Game/Blueprints/BPL_Bakery.BPL_Bakery_C", function(CreatedObject)
    print('BPL_Bakery found')
end)

NotifyOnNewObject("/Script/Engine.PlayerController", function(CreatedObject)
    print('PlayerController found')
end)