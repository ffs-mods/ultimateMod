local UEHelpers = require("UEHelpers")

--
local function StartMod(context)

    print('ModdedFF: Loading modded files')

    -- -- Gamemode
    require 'files/BakeryGameState_Ingame'
    require 'files/CustomerManager'

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

-- Flag to avoid loading the mod multiple times
local isLoaded = false

-- Add listener for new game state object
NotifyOnNewObject('/Game/Blueprints/GameMode/GameState/BP_BakeryGameState.BP_BakeryGameState_C', function(gameState)

    -- Check if the mod is already loaded
    if isLoaded == true then
        return
    end

    -- Find the game state object
    local BakeryGameStateIngame = FindFirstOf('BP_BakeryGameState_Ingame_C')
    if BakeryGameStateIngame == nil then
        return
    end

    -- Check if the game is running (check value of bIsRestaurantRunning)
    local bIsRestaurantRunning = BakeryGameStateIngame:GetPropertyValue('bIsRestaurantRunning')
    if bIsRestaurantRunning ~= false then
        return
    end

    -- Load the mod
    StartMod()

    -- Update the flag
    isLoaded = true

end)