local configs = require 'configs'

local currentGameTime = 0
local isFrozen = false

-- Class variables
---@field bIsRestaurantRunning boolean
---@field RestaurantMoney double
---@field RestaurantPopularity double
---@field GameTime double
---@field GameTimeMultiplier double
---@field MaxGameTime double

-- 
local function UpdateGameTime(context)
    local gameState = context:get()
    if isFrozen then
        gameState:UpdateGameTime_OnMulticast(currentGameTime)
    else 
        local gameTime = gameState:GetPropertyValue("GameTime")
        currentGameTime = gameTime
    end
end
RegisterHook('/Game/Blueprints/GameMode/GameState/BP_BakeryGameState_Ingame.BP_BakeryGameState_Ingame_C:UpdateGameTime', UpdateGameTime)

--
local function ResetEndOfDayData(context)
    local gameState = context:get()
    isFrozen = false
    currentGameTime = 0
end
RegisterHook('/Game/Blueprints/GameMode/GameState/BP_BakeryGameState_Ingame.BP_BakeryGameState_Ingame_C:ResetEndOfDayData', ResetEndOfDayData)

--
local function FreezeTime()
    if isFrozen == false then
        isFrozen = true
    else
        isFrozen = false
    end
end
RegisterKeyBind(configs.commandesKeys.FrezeTime, FreezeTime)