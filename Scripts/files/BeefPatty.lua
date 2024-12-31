require 'config'

-- Class variables

--
local function OnRep_MeatTopDoneness(context)
    local patty = context:get()
    local currentTopDoneness = patty:GetPropertyValue("MeatTopDoneness")    
    if currentTopDoneness >= 0.5 then
        patty:SetPropertyValue("MeatTopDoneness", 0.5)
    end
end
RegisterHook('/Game/Blueprints/Gameplay/FastFood/Burger/BP_BeefPatty.BP_BeefPatty_C:OnRep_MeatTopDoneness', OnRep_MeatTopDoneness)

--
local function OnRep_MeatBottomDoneness(context)
    local patty = context:get()
    local currentBottomDoneness = patty:GetPropertyValue("MeatBottomDoneness")
    if currentBottomDoneness >= 0.5 then
        patty:SetPropertyValue("MeatBottomDoneness", 0.5)
    end
end
RegisterHook('/Game/Blueprints/Gameplay/FastFood/Burger/BP_BeefPatty.BP_BeefPatty_C:OnRep_MeatBottomDoneness', OnRep_MeatBottomDoneness)
