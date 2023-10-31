##Items in water##
execute if score #CL_IIW ClearLag matches 1.. as @e[type=item] at @s if block ~ ~ ~ water run tag @s add CL_NoClear

##PlayerDistance##
execute if score #CL_PD ClearLag matches 1.. at @a run tag @e[type=item,distance=..20] add CL_NoClear

##ExperienceOrbs##
execute if score #CL_EO ClearLag matches 1.. run kill @e[type=experience_orb,tag=!global.ignore,tag=!global.ignore.kill]

##Filter and remove items##
tag @e[type=item,nbt={Item:{id:"minecraft:ancient_debris"}}] add CL_NoClear
tag @e[type=item,nbt={Item:{id:"minecraft:netherite_scrap"}}] add CL_NoClear
tag @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot"}}] add CL_NoClear
tag @e[type=item,nbt={Item:{id:"minecraft:netherite_block"}}] add CL_NoClear
tag @e[type=item,nbt={Item:{id:"minecraft:netherite_helmet"}}] add CL_NoClear
tag @e[type=item,nbt={Item:{id:"minecraft:netherite_chestplate"}}] add CL_NoClear
tag @e[type=item,nbt={Item:{id:"minecraft:netherite_leggings"}}] add CL_NoClear
tag @e[type=item,nbt={Item:{id:"minecraft:netherite_boots"}}] add CL_NoClear
tag @e[type=item,nbt={Item:{id:"minecraft:netherite_sword"}}] add CL_NoClear
tag @e[type=item,nbt={Item:{id:"minecraft:netherite_pickaxe"}}] add CL_NoClear
tag @e[type=item,nbt={Item:{id:"minecraft:netherite_axe"}}] add CL_NoClear
tag @e[type=item,nbt={Item:{id:"minecraft:netherite_shovel"}}] add CL_NoClear
tag @e[type=item,nbt={Item:{id:"minecraft:netherite_hoe"}}] add CL_NoClear
tag @e[type=item,nbt={Item:{id:"minecraft:diamond"}}] add CL_NoClear
tag @e[type=item,nbt={Item:{id:"minecraft:diamond_block"}}] add CL_NoClear
tag @e[type=item,nbt={Item:{id:"minecraft:diamond_helmet"}}] add CL_NoClear
tag @e[type=item,nbt={Item:{id:"minecraft:diamond_chestplate"}}] add CL_NoClear
tag @e[type=item,nbt={Item:{id:"minecraft:diamond_leggings"}}] add CL_NoClear
tag @e[type=item,nbt={Item:{id:"minecraft:diamond_boots"}}] add CL_NoClear
tag @e[type=item,nbt={Item:{id:"minecraft:diamond_sword"}}] add CL_NoClear
tag @e[type=item,nbt={Item:{id:"minecraft:diamond_pickaxe"}}] add CL_NoClear
tag @e[type=item,nbt={Item:{id:"minecraft:diamond_axe"}}] add CL_NoClear
tag @e[type=item,nbt={Item:{id:"minecraft:diamond_shovel"}}] add CL_NoClear
tag @e[type=item,nbt={Item:{id:"minecraft:elytra"}}] add CL_NoClear
tag @e[type=item,nbt={Item:{id:"minecraft:shulker_box"}}] add CL_NoClear
tag @e[type=item,nbt={Item:{id:"minecraft:beacon"}}] add CL_NoClear
tag @e[type=item,nbt={Item:{id:"minecraft:emerald_block"}}] add CL_NoClear
tag @e[type=item,nbt={Item:{id:"minecraft:iron_block"}}] add CL_NoClear
tag @e[type=item,nbt={Item:{id:"minecraft:gold_block"}}] add CL_NoClear
tag @e[type=item,nbt={Item:{id:"minecraft:totem_of_undying"}}] add CL_NoClear
tag @e[type=item,nbt={Item:{id:"minecraft:golden_apple"}}] add CL_NoClear
tag @e[type=item,nbt={Item:{id:"minecraft:enchanted_golden_apple"}}] add CL_NoClear
execute store result score #CL_Count ClearLag run kill @e[type=item,tag=!CL_NoClear,tag=!global.ignore,tag=!global.ignore.kill]

##Clear Message##
execute if score #CLM_Clear ClearLag matches 1 if score #CL_Count ClearLag matches 0 run tellraw @a [{"text":"[","color":"gold"},{"text":"ClearLag","color":"green"},{"text":"] "},{"text":"No","color":"blue"},{"text":" items were removed!","color":"aqua"}]
execute if score #CLM_Clear ClearLag matches 1 if score #CL_Count ClearLag matches 1 run tellraw @a [{"text":"[","color":"gold"},{"text":"ClearLag","color":"green"},{"text":"] "},{"score":{"name":"#CL_Count","objective":"ClearLag"},"color":"blue"},{"text":" item was removed!","color":"aqua"}]
execute if score #CLM_Clear ClearLag matches 1 if score #CL_Count ClearLag matches 2.. run tellraw @a [{"text":"[","color":"gold"},{"text":"ClearLag","color":"green"},{"text":"] "},{"score":{"name":"#CL_Count","objective":"ClearLag"},"color":"blue"},{"text":" items were removed!","color":"aqua"}]

##Stats##
scoreboard players add #CL_Times ClearLag 1
scoreboard players operation #CL_Total ClearLag += #CL_Count ClearLag

execute if score #CL_Count ClearLag > #CL_Highest ClearLag run scoreboard players operation #CL_Highest ClearLag = #CL_Count ClearLag

scoreboard players operation #CL_Average ClearLag = #CL_Total ClearLag
scoreboard players operation #CL_Average ClearLag /= #CL_Times ClearLag

##Remove NoClear tag from items##
tag @e[type=item, tag=CL_NoClear] remove CL_NoClear
