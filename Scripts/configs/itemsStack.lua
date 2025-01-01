local config = require 'configs'

-- Default config
local itemsStackConfig = {}

-- Return default config if config.items is nil
if config.items == nil then
    return itemsStackConfig
end

local itemsConfig = config.items

-- Agredients stack
if itemsConfig.InfiniteCrateStackOnion == true then
    itemsStackConfig.BP_CrateStack_C.BP_Onion_C = 40 -- default: 40
end
if itemsConfig.InfiniteCrateStackIcebergLettuce == true then
    itemsStackConfig.BP_CrateStack_C.BP_IcebergLettuce_C = 4 -- default: 4   
end   
if itemsConfig.InfiniteCrateStackTomato == true then
    itemsStackConfig.BP_CrateStack_C.BP_Tomato_C = 30 -- default: 30
end
if itemsConfig.InfinitePickleStack == true then
    itemsStackConfig.BP_PickleStack_C = 14 -- default: 14
end

-- Agredients slice
if itemsConfig.InfinitePickleSlice == true then
    itemsStackConfig.BP_BurgerIngredientPan_C.BP_PickleSlice_C = 88 -- default: 88    
end
if itemsConfig.InfiniteOnionSlice == true then
    itemsStackConfig.BP_BurgerIngredientPan_C.BP_OnionSlice_C = 120 -- default: 120
end
if itemsConfig.InfiniteLettuceLeaf == true then
    itemsStackConfig.BP_BurgerIngredientPan_C.BP_LettuceLeaf_C = 30 -- default: 30
end
if itemsConfig.InfiniteTomatoSlice == true then
    itemsStackConfig.BP_BurgerIngredientPan_C.BP_TomatoSlice_C = 30 -- default: 30
end

-- Agredients for burger        
if itemsConfig.InfiniteBeefPatty == true then
    itemsStackConfig.BP_BurgerPattyPan_C.BP_BeefPatty_C = 12 -- default: 12
end
if itemsConfig.InfiniteChickenPattyPacket == true then
    itemsConfig.BP_PattyBox_C.BP_ChickenPattyPacket_C = 2 -- default: 2
end
if itemsConfig.InfiniteBeefPattyPacket == true then
    itemsStackConfig.BP_PattyBox_C.BP_BeefPattyPacket_C = 2 -- default: 2
end
if itemsConfig.InfiniteCheeseBox == true then
    itemsStackConfig.BP_CheeseBox_C = 4 -- default: 4
end

-- Burger
if itemsConfig.InfiniteBurgerBunPacketStack == true then
    itemsStackConfig.BP_BurgerBunPacketStack_C = 4 -- default: 4
end
if itemsConfig.InfiniteBurgerBunPacket == true then
    itemsStackConfig.BP_BurgerBunPacket_C = 12 -- default: 12
end

-- Burger Wrapper
if itemsConfig.InfiniteWrapperStackBox == true then
    itemsStackConfig.BP_WrapperStackBox_C = 2 -- default: 2
end
if itemsConfig.InfiniteBurgerWrappingPaperStack == true then
    itemsStackConfig.BP_BurgerWrappingPaperStack_C = 10 -- default: 10
end

-- Fry
if itemsConfig.InfiniteFriesScoopBox == true then
    itemsStackConfig.BP_FriesScoopBox_C = 2 -- default: 2
end
if itemsConfig.InfiniteFriesScoopStackSmall == true then
    itemsStackConfig.BP_FriesScoopStackSmall_C = 10 -- default: 10
end
if itemsConfig.InfiniteFriesScoopStackMedium == true then
    itemsStackConfig.BP_FriesScoopStackMedium_C = 10 -- default: 10
end
if itemsConfig.InfiniteFriesScoopStackLarge == true then
    itemsStackConfig.BP_FriesScoopStackLarge_C = 10 -- default: 10
end
if itemsConfig.InfiniteFry == true then
    itemsStackConfig.BP_FryerBasket_C.BP_Fry_C = 120 -- default: 120
end

-- Coffee 
if itemsConfig.InfiniteCoffeeCupBox == true then
    itemsStackConfig.BP_CoffeeCupBox_C = 2 -- default: 2
end
if itemsConfig.InfiniteCoffeeCupStack == true then
    itemsStackConfig.BP_CoffeeCupStack_C = 10 -- default: 10
end
if itemsConfig.InfiniteCoffeeBox == true then
    itemsStackConfig.BP_CoffeeBox_C = 2 -- default: 2
end
if itemsConfig.InfiniteMilkBox == true then
    itemsStackConfig.BP_MilkBox_C = 4 -- default: 4
end

-- Icecream
if itemsConfig.InfiniteIcecreamCupBox == true then
    itemsConfig.BP_IcecreamCupBox_C = 2 -- default: 2
end
if itemsConfig.InfiniteIceCreamCupStack == true then
    itemsConfig.BP_IceCreamCupStack_C = 60 -- default: 60
end

-- Drink
if itemsConfig.InfiniteDrinkCupBox == true then
    itemsConfig.BP_DrinkCupBox_C = 2 -- default: 2
end
if itemsConfig.InfiniteDrinkCupStack == true then
    itemsConfig.BP_DrinkCupStack_C = 40 -- default: 40
end

-- Nugget
if itemsConfig.InfiniteFriesNuggetsBox == true then
    itemsConfig.BP_FriesNuggetsBox_C = 4 -- default: 4
end
if itemsConfig.InfiniteNuggetBoxBox == true then
    itemsConfig.BP_NuggetBoxBox_C = 2 -- default: 2
end
if itemsConfig.InfiniteNuggetBoxStack == true then
    itemsConfig.BP_NuggetBoxStack_C = 20 -- default: 20
end
if itemsConfig.InfiniteNugget == true then
    itemsConfig.BP_FryerBasket_C.BP_Nugget_C = 120 -- default: 120
end

-- PaperBag
if itemsConfig.InfinitePaperBagBox == true then
    itemsConfig.BP_PaperBagBox_C = 2 -- default: 2
end
if itemsConfig.InfiniteDriveThruPaperBagStack == true then
    itemsConfig.BP_DriveThruPaperBagStack_C = 10 -- default: 10
end

return itemsStackConfig