ItemEvents.modification((event) => {
  const addRepairMaterial = (item, material) => {
    event.modify(item, (item) => {
      item.tier = (tier) => {
        tier.repairIngredient = material;
      };
    });
  };
  //!Does not work for the moment
  addRepairMaterial("coral_spear", "cataclysm:crystallized_coral");
  addRepairMaterial("coral_bardiche", "cataclysm:crystallized_coral");
});
