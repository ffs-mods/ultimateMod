-- Flag to avoid loading the mod multiple times
local isLoaded = false

--
function StartMod(context)

    -- Check if the mod is already loaded
    if isLoaded == true then
        Log('UltimateMod already loaded')
        return
    end

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

    -- Print a message
    Log('UltimateMod is ready')

    -- Set isLoaded to true
    isLoaded = true

end
