WorldgenEvents.remove((event) => {
  event.removeOres((props) => {
    // much like ADDING ores, this supports filtering by worldgen layer...
    props.worldgenLayer = "underground_ores";
    // ...and by biome
    props.biomes = "#minecraft:is_overworld";

    // Note tags may NOT be used here, unfortunately...
    props.blocks = ["galosphere:silver_ore", "galosphere:deepslate_silver_ore"];
  });

  // remove features by their id (first argument is a generation step)
  event.removeFeatureById("underground_ores", [
    "galosphere:ore_silver_middle",
    "galosphere:ore_silver_small",
  ]);
});
