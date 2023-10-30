ServerEvents.recipes((event) => {
  const addShapedRecipe = (result, pattern, ingredients_list) => {
    event.shaped(result, pattern, ingredients_list);
  };

  const addShapelessRecipe = (result, ingredients) => {
    event.shapeless(result, ingredients);
  };

  const addIMCrusherRecipe = (energy, input, result, secondaries) => {
    event.custom({
      type: "immersiveengineering:crusher",
      energy: energy,
      input: input,
      result: result,
      secondaries: secondaries,
    });
  };

  const addIMHammerCrushRecipe = (conditions, input, result) => {
    event.custom({
      type: "immersiveengineering:hammer_crushing",
      conditions: conditions,
      input: input,
      result: result,
    });
  };

  const addSplashingRecipe = (conditions, ingredients, results) => {
    event.custom({
      type: "create:splashing",
      conditions: conditions,
      ingredients: ingredients,
      results: results,
    });
  };

  const removeById = (id) => {
    event.remove({ id: id });
  };

  addShapelessRecipe("minecraft:ender_pearl", "#endermanoverhaul:ender_pearls");


  addShapedRecipe(
    "createdieselgenerators:large_diesel_engine",
    ["BFB", "ADA", "SPS"],
    {
      S: "create:sturdy_sheet",
      A: "create:andesite_alloy",
      B: "create:brass_sheet",
      F: "create:fluid_pipe",
      D: "createdieselgenerators:diesel_engine",
      P: "create:precision_mechanism",
    }
  );

  addShapedRecipe(
    "origins:orb_of_origin",
    ["FWB", "WSW", "CWE"],
    {
      S: 'minecraft:nether_star',
      W: 'endermanoverhaul:ancient_pearl',
      B: 'minecraft:blaze_powder',
      F: 'minecraft:rotten_flesh',
      C: 'deeperdarker:warden_carapace',
      E: 'minecraft:ender_eye',
    }
  );

  addShapedRecipe("immersiveengineering:rockcutter", [" D ", "DSD", " D "], {
    D: "createaddition:diamond_grit",
    S: "immersiveengineering:sawblade",
  });

  addIMCrusherRecipe(
    6000,
    { tag: "minecraft:diamond_ores" },
    { count: 2, item: "createaddition:diamond_grit" },
    []
  );

  addIMCrusherRecipe(
    6000,
    { item: "spelunkery:rough_diamond_block" },
    { count: 12, item: "createaddition:diamond_grit" },
    []
  );

  addIMCrusherRecipe(
    6000,
    { item: "minecraft:diamond" },
    { count: 1, item: "createaddition:diamond_grit" },
    []
  );

  addIMCrusherRecipe(
    6000,
    { item: "spelunkery:rough_diamond" },
    { count: 1, item: "createaddition:diamond_grit" },
    [
      {
        chance: 0.3333334,
        conditions: [],
        output: { item: "createaddition:diamond_grit" },
      },
    ]
  );

  addIMHammerCrushRecipe(
    [],
    { tag: "minecraft:diamond_ores" },
    { item: "createaddition:diamond_grit" }
  );
  addIMHammerCrushRecipe(
    [],
    { item: "spelunkery:rough_diamond" },
    { item: "createaddition:diamond_grit" }
  );
  addIMHammerCrushRecipe(
    [],
    { item: "minecraft:diamond" },
    { item: "createaddition:diamond_grit" }
  );

  addSplashingRecipe(
    [],
    [{ item: "createaddition:diamond_grit" }],
    [
      {
        count: 8,
        item: "spelunkery:rough_diamond_shard",
      },
      {
        chance: 0.5,
        item: "spelunkery:rough_diamond_shard",
      },
    ]
  );

  event.stonecutting('createbigcannons:cast_iron_block','blocky_siege:block_of_cast_iron');
  event.stonecutting('2x blocky_siege:block_of_cast_iron_stairs','blocky_siege:block_of_cast_iron');
  event.stonecutting('3x blocky_siege:block_of_cast_iron_slab','blocky_siege:block_of_cast_iron');
  event.stonecutting('blocky_siege:block_of_cast_iron','createbigcannons:cast_iron_block');

  let input_rm_array = [
    "createaddition:zinc_sheet",
    "createaddition:gold_wire",
    "createaddition:spool",
    "createaddition:accumulator",
    "createaddition:capacitor",
    "galosphere:silver_ingot",
    "galosphere:silver_nugget",
    "galosphere:raw_silver",
    "acc_nocube:crushed_galo_silver_ore",
  ];

  input_rm_array.forEach((element) => {
    event.remove({
      input: element,
    });
  });

  removeById("createdieselgenerators:compacting/plant_oil");
  removeById(
    "createdieselgenerators:compat/farmers_delight/basin_fermenting/fermentable"
  );
  removeById("createaddition:crushing/diamond");
  removeById("immersiveengineering:crusher/ore_diamond");
  removeById("immersiveengineering:jei_bucket_seed_oil");
  removeById("immersiveengineering:jei_bucket_ethanol");

  let output_rm_array = [
    "createaddition:tesla_coil",
    "createaddition:barbed_wire",
    "createaddition:capacitor",
    "createaddition:connector",
    "createaddition:large_connector",
    "createaddition:electrum_ingot",
    "createaddition:electrum_nugget",
    "createaddition:electrum_sheet",
    "createaddition:zinc_sheet",
    "createaddition:copper_wire",
    "createaddition:iron_wire",
    "createaddition:gold_wire",
    "createaddition:electrum_wire",
    "createaddition:spool",
    "createaddition:festive_spool",
    "createaddition:copper_rod",
    "createaddition:iron_rod",
    "createaddition:gold_rod",
    "createaddition:brass_rod",
    "createaddition:electrum_rod",
    "createaddition:redstone_relay",
    "createdieselgenerators:biodiesel_bucket",
    "createdieselgenerators:plant_oil_bucket",
    "createaddition:seed_oil_bucket",
    "createaddition:bioethanol_bucket",
    "create:iron_sheet",
    "create:golden_sheet",
    "create:copper_sheet",
    "blocky_siege:block_of_cast_iron",
    'blocky_siege:cast_iron_ingot',
    'blocky_siege:cast_iron_nugget',
    'oriacs:diving_helmet',
    'origins:orb_of_origin'
  ];
  output_rm_array.forEach((element) => {
    event.remove({ output: element });
  });
  event.shaped("1x galosphere:silver_block", ["III", "I I", "III"], {
    I: "#forge:ingots/silver",
  });
});
