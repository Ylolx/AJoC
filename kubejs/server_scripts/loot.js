LootJS.modifiers((event) => {
  /*Tmp*/
  event
    .addEntityLootModifier("minecraft:warden")
    .removeLoot("deeperdarker:heart_of_the_deep");
  /**Permanent */
  event
    .addEntityLootModifier("minecraft:skeleton_horse")
    .removeLoot("endrem:undead_soul");
  event
    .addEntityLootModifier("minecraft:witch")
    .removeLoot("endrem:witch_pupil");
  event
    .addEntityLootModifier("deeperdarker:shattered")
    .randomChance(0.001)
    .addLoot("endrem:undead_soul");
  event
    .addBlockLootModifier("phantasm:fallen_star")
    .randomChance(0.01)
    .addLoot("origins:orb_of_origin");
  event
    .addLootTypeModifier(LootType.ENTITY)
    .randomChance(0.001)
    .addLoot("origins:orb_of_origin");
  event
    .addLootTableModifier("chests/igloo_chest")
    .removeLoot("endrem:cold_eye");
  event
    .addLootTableModifier("chests/pillager_outpost")
    .removeLoot("endrem:corrupted_eye");
  event
    .addEntityLootModifier("mutantmonsters:mutant_creeper")
    .addLoot(LootEntry.of("savage_and_ravage:creeper_spores", 9));
});
