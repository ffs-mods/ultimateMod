require 'config'

-- Class variables

--
local function getMaxItem(ItemStackTargetName, ItemStackClassName)

    local itemTargerName = ItemStackTargetName:match("([^.]+)$"):match("^(.-)_%d+$")
    if ItemStackClassName == nil then
        return nil
    end
    local stackClassName = ItemStackClassName:match("([^.]+)$"):match("([^.]+)$")

    -- print(string.format("%s, %s", itemTargerName, stackClassName))

    local maxItem = itemsConfig[itemTargerName]
    if type(maxItem) == "table" then
        return maxItem[stackClassName] or nil
    else
        return maxItem
    end
end

-- 
local function OnItemStackCountChanged(context)
    local ItemStackTarget = context:get()
    local ItemStackTargetCount = ItemStackTarget:GetPropertyValue("ItemStackCount")
    local ItemStackTargetName = ItemStackTarget:GetFullName()
    
    local ItemStackClass = ItemStackTarget:GetPropertyValue('ItemStackClass')
    local ItemStackClassName = ItemStackClass:GetFullName()

    local maxItem, isItem = getMaxItem(ItemStackTargetName, ItemStackClassName)
    if maxItem == nil then
        return
    end
    ItemStackTarget:SetPropertyValue("ItemStackCount", maxItem)
end
RegisterHook('/Game/Blueprints/Gameplay/Item/BP_ItemStack.BP_ItemStack_C:OnItemStackCountChanged', OnItemStackCountChanged)