local UEHelpers = require("UEHelpers")

require 'mod'
require 'console'

-- Add listener for new game state object
NotifyOnNewObject('/Game/Blueprints/GameMode/GameState/BP_BakeryGameState.BP_BakeryGameState_C', function(gameState)

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

end)

-- Register the console command
RegisterConsoleCommandHandler('ultimateMod', RegisterConsoleCommand)