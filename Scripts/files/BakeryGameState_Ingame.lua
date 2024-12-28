require 'config'

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
    local getTime = gameState:GetPropertyValue("GameTime")
    gameState:UpdateGameTime_OnMulticast(getTime)
end
RegisterHook('/Game/Blueprints/GameMode/GameState/BP_BakeryGameState_Ingame.BP_BakeryGameState_Ingame_C:UpdateGameTime', UpdateGameTime)

--
local function ResetEndOfDayData(context)
    local gameState = context:get()
    -- gameState:SetPropertyValue("GameTimeMultiplier", 10.0) -- default: 60.0
    -- gameState:SetPropertyValue("MaxGameTime", 10.0) -- default: 43200
end
RegisterHook('/Game/Blueprints/GameMode/GameState/BP_BakeryGameState_Ingame.BP_BakeryGameState_Ingame_C:ResetEndOfDayData', ResetEndOfDayData)

