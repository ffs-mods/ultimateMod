local UEHelpers = require("UEHelpers")

return {

    commandesKeys = {
        FrezeTime = Key.F1,
    },

    -- Items stack config
    items = {
        -- Agredients stack
        InfiniteCrateStackOnion = false, -- 
        InfiniteCrateStackIcebergLettuce = false, -- 
        InfiniteCrateStackTomato = false, --
        InfinitePickleStack = false, -- 

        -- Agredients slice
        InfinitePickleSlice = false, --
        InfiniteOnionSlice = false, --
        InfiniteLettuceLeaf = false, --
        InfiniteTomatoSlice = false, --

        -- Agredients for burger        
        InfiniteBeefPatty = false, --
        InfiniteBeefPattyPacket = false, --        
        InfiniteCheeseBox = false, --
        InfiniteChickenPattyPacket = false, --

        -- Burger
        InfiniteBurgerBunPacketStack = false, --
        InfiniteBurgerBunPacket = false, --

        -- Burger Wrapper
        InfiniteWrapperStackBox = false, --
        InfiniteBurgerWrappingPaperStack = false, --

        -- Fry
        InfiniteFriesScoopBox = false, --
        InfiniteFriesScoopStackSmall = false, --
        InfiniteFriesScoopStackMedium = false, --
        InfiniteFriesScoopStackLarge = false, --
        InfiniteFry = false, --

        -- Coffee 
        InfiniteCoffeeCupBox = false, --
        InfiniteCoffeeCupStack = false, --
        InfiniteCoffeeBox = false, --
        InfiniteMilkBox = false, --

        -- Icecream
        InfiniteIcecreamCupBox = false, --
        InfiniteIceCreamCupStack = false, --

        -- Drink
        InfiniteDrinkCupBox = false, --
        InfiniteDrinkCupStack = false, --

        -- Nugget
        InfiniteFriesNuggetsBox = false, --
        InfiniteNuggetBoxBox = false, --
        InfiniteNuggetBoxStack = false, --
        InfiniteNugget = false, --

        -- PaperBag
        InfinitePaperBagBox = false, --
        InfiniteDriveThruPaperBagStack = false, --
    },

    -- SauceBottle config
    sauceBottle = {
        InfiniteSauce = false, -- 
    },

    oilCan = {
        InfiniteOil = false, -- 
    },

    wasteOilBarelLittle = {
        AutoEmptying = false, --
    },

    -- Customer config
    customer = {
        InfinitePatienceForTable = false, --
        FastWalkSpeed = false, --
        FastEating = false, --
        InfinitePatienceForDriveThru = false, --
        FastCarSpeed = false, --
    },

    iaEmployee = {
        BusserFastWalkSpeed = false, --
        ServerFastWalkSpeed = false, --
    },

    -- Truck config
    goodsTruck = {
        FastTruckSpeed = false, --
    },

    -- DrinkMachine config
    drinkMachine = {
        FastDrinkFillerFilling = false, --
        DisabledTemperature = false, --
    },

    -- CoffeeMachine config
    coffeeMachine = {
        InfiniteCoffeeFromContainer = false, --
        InfiniteGrindingCoffeeFromContainer = false, --
        FastMilkFrothing = false, --
        FastCoffeeGrinding = false, --
        FastCoffeeFilling = false, --
        DisabledTemperature = false, --
    },

    -- IceCreamMachine config
    iceCreamMachine = {
        FastIceCreamFilling = false, --
        DisabledTemperature = false, --
    },

    -- Fryer config
    fryer = {
        FastFryerFilling = false, --
        FastFryerCooking = false, --
        FastFryerEmptying = false, --
    },

    -- GasFryer config
    gasFryer = {
        LimiteDoneness = false, --
        OilContaminationPrevention = false, --
        OilConsumptionPrevention = false, --
    },

    -- BeefPatty (grill) config
    beefPatty = {
        LimiteDoneness = false, --
    },

}