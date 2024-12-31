itemsConfig = {

    BP_CrateStack_C = {
        BP_Onion_C = 40, -- default: 40
        BP_IcebergLettuce_C = 4, -- default: 4
        BP_Tomato_C = 30, -- default: 30
    },

    BP_PickleStack_C = 14, -- default: 14

    -- BurgerBun
    BP_BurgerBunPacketStack_C = 4, -- default: 4
    BP_BurgerBunPacket_C = 12, -- default: 12

    -- Wrapping
    BP_WrapperStackBox_C = 2, -- default: 2
    BP_BurgerWrappingPaperStack_C = 10, -- default: 10

    -- Fries
    BP_FriesScoopBox_C = 2, -- default: 2
    BP_FriesScoopStackSmall_C = 10, 
    BP_FriesScoopStackMedium_C = 10, -- default: 10
    BP_FriesScoopStackLarge_C = 10, -- default: 10

    -- CoffeeCup
    BP_CoffeeCupBox_C = 2, -- default: 2
    BP_CoffeeCupStack_C = 10, -- default: 10

    -- IcecreamCup
    BP_IcecreamCupBox_C = 2, -- default: 2
    BP_IceCreamCupStack_C = 60, -- default: 60

    -- DrinkCup
    BP_DrinkCupBox_C = 2, -- default: 2
    BP_DrinkCupStack_C = 40, -- default: 40

    -- Coffee
    BP_CoffeeBox_C = 2, -- default: 2

    -- Cheese
    BP_CheeseBox_C = 4, -- default: 4

    -- Milk
    BP_MilkBox_C = 4, -- default: 4

    -- Fries
    BP_FriesNuggetsBox_C = 4, -- default: 4
  
    -- Patty
    BP_PattyBox_C = {
        BP_BeefPattyPacket_C = 2, -- default: 2
        BP_ChickenPattyPacket_C = 2, -- default: 2
    },

    -- PaperBag
    BP_PaperBagBox_C = 2, -- default: 2
    BP_DriveThruPaperBagStack_C = 10, -- default: 10

    BP_BurgerIngredientPan_C = {
        BP_PickleSlice_C = 88, -- default: 88
        BP_OnionSlice_C = 120, -- default: 120
        BP_LettuceLeaf_C = 30, -- default: 30
        BP_TomatoSlice_C = 30, -- default: 30
    },

    -- Nugget
    BP_NuggetBoxBox_C = 2, -- default: 2
    BP_NuggetBoxStack_C = 20, -- default: 20

    -- Fryer
    BP_FryerBasket_C = {
        BP_Nugget_C = 20, -- default: 20
        BP_Fry_C = 120, -- default: 120
    },

    BP_BurgerPattyPan_C = {
        BP_BeefPatty_C = 12 -- default: 12
    },

    -- Tools
    -- BP_BurgerIngredientPanStack_C = {
    --     BP_BurgerIngredientPan_C = 4
    -- },

    -- BP_BurgerPattyPanStack_C = {
    --     BP_BurgerPattyPan_C = 4
    -- }
}

-- IA helper
iaHelperConfig = {
    MaxWalkSpeed = false, -- default: 200.0
}

-- Customer
CustomerConfig = {
    MaxWalkSpeed = false, -- default: 200.0
    EatingDuration = false, -- default: Random
    DisableRunOutOfPatience = false, -- default: false
    PatienceSpeed = false, -- default: Value set by difficulty (0.0)
}

-- DriveThru
driveThruCarConfig = {
    MaxCarSpeed = false, -- default: 200.0
    DisableRunOutOfPatience = false, -- default: false
}

-- Truck
goodsTruckConfig = {
    MaxTruckSpeed = false, -- default: 200.0
}