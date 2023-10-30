ServerEvents.tags("item", (event) => {
  const addTag = (tagName, item) => {
    try {
      event.add(tagName, item);
      return true;
    } catch (error) {
      return false;
    }
  };

  const removeTag = (tagName, item) => {
    try {
      event.remove(tagName, item);
      return true;
    } catch (error) {
      return false;
    }
  };
  /*Galosphere */
  removeTag("forge:ingots/silver", "galosphere:silver_ingot");
  removeTag("forge:nuggets/silver", "galosphere:silver_nugget");
  /*createaddition */
  removeTag("forge:wires", "createaddition:copper_wire");
  removeTag("forge:wires/copper", "createaddition:copper_wire");
  removeTag("forge:ingots/electrum", "createaddition:electrum_ingot");
  removeTag("forge:nuggets/electrum", "createaddition:electrum_nugget");
  removeTag("forge:plates/electrum", "createaddition:electrum_sheet");
  removeTag("forge:wires/electrum", "createaddition:electrum_wire");
  removeTag("forge:rods/iron", "createaddition:iron_rod");
  /*Create */
  removeTag("forge:plates/iron", "create:iron_sheet");
  removeTag("forge:plates/copper", "create:copper_sheet");
  removeTag("forge:plates/gold", "create:golden_sheet");

  const listRmPlate = [
    "createaddition:electrum_sheet",
    "createaddition:zinc_sheet",
    "create:iron_sheet",
    "create:copper_sheet",
    "create:golden_sheet",
  ];

  listRmPlate.forEach((element) => {
    removeTag("forge:plates", element);
  });

  const listRmRodsAllMetal = [
    "createaddition:copper_rod",
    "createaddition:iron_rod",
    "createaddition:gold_rod",
    "createaddition:brass_rod",
    "createaddition:electrum_rod",
  ];

  listRmRodsAllMetal.forEach((element) => {
    removeTag("forge:rods/all_metal", element);
  });

  addTag("minecraft:redstone_ores", "#spelunkery:redstone_ores");
  addTag("forge:ores/gold", "#spelunkery:gold_ores");
  addTag("forge:ores/iron", "#spelunkery:iron_ores");
  addTag("minecraft:coal_ores", "#spelunkery:coal_ores");
  addTag("minecraft:copper_ores", "#spelunkery:copper_ores");
  addTag("minecraft:lapis_ores", "#spelunkery:lapis_ores");
  addTag("minecraft:diamond_ores", "#spelunkery:diamond_ores");
  addTag('endermanoverhaul:ender_pearls', 'bygonenether:warped_ender_pearl');
  addTag('forge:block/cast_iron', 'createbigcannons:cast_iron_block');
  addTag('forge:block/cast_iron', 'blocky_siege:block_of_cast_iron');
});
