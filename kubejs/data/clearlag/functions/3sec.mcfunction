execute if score #CL_FE ClearLag matches 1 store result score BatCount ClearLag if entity @e[type=bat,tag=!global.ignore]
execute if score #CL_FE ClearLag matches 1 if score BatCount ClearLag matches 15.. as @e[type=bat,tag=!global.ignore,tag=!global.ignore.kill] at @s unless entity @a[distance=..26] run kill @s
execute if score #CL_FE ClearLag matches 1 if score BatCount ClearLag matches 15.. as @e[type=bat,tag=!global.ignore] at @s unless entity @a[distance=..12] run data merge entity @s {NoAI:1b}
execute if score #CL_FE ClearLag matches 1 if score BatCount ClearLag matches ..50 as @e[type=bat,tag=!global.ignore] at @s if entity @a[distance=..12] run data merge entity @s {NoAI:0b}

execute if score #CL_FE ClearLag matches 1 as @e[type=#clearlag:farm_animals,tag=!global.ignore] at @s unless entity @a[distance=..20] run data merge entity @s {NoAI:1b}
execute if score #CL_FE ClearLag matches 1 as @e[type=#clearlag:farm_animals,tag=!global.ignore] at @s unless entity @a[distance=..20] run tag @s add CL_freezed
execute if score #CL_FE ClearLag matches 1 as @e[type=#clearlag:farm_animals,tag=!global.ignore,tag=CL_freezed] at @s if entity @a[distance=..20] run data merge entity @s {NoAI:0b}
execute if score #CL_FE ClearLag matches 1 as @e[type=#clearlag:farm_animals,tag=!global.ignore,tag=CL_freezed] at @s if entity @a[distance=..20] run tag @s remove CL_freezed

kill @e[type=#arrows,nbt={pickup:2b},tag=!global.ignore,tag=!global.ignore.kill]
kill @e[type=trident,nbt={pickup:0b},tag=!global.ignore,tag=!global.ignore.kill]
execute if score #CL_AF ClearLag matches 1 as @e[type=armor_stand,tag=!global.ignore,tag=!CL_ArmorFix] run data merge entity @s {NoGravity:1b}
execute if score #CL_AF ClearLag matches 1 run tag @e[type=armor_stand,tag=!global.ignore,tag=!CL_ArmorFix] add CL_ArmorFix

execute if score #CL_FE ClearLag matches 0 as @e[type=bat,tag=!global.ignore] run data merge entity @s {NoAI:0b}
execute if score #CL_AF ClearLag matches 0 as @e[type=armor_stand,tag=CL_ArmorFix] run data merge entity @s {NoGravity:0b}
execute if score #CL_AF ClearLag matches 0 as @e[type=armor_stand,tag=CL_ArmorFix] run tag @s remove CL_ArmorFix

execute as @e[type=item,tag=!global.ignore] store result score @s ClearLag run data get entity @s Age
execute as @e[type=item,scores={ClearLag=1..1400},tag=!CL] run data merge entity @s {Age:1500}
execute as @e[type=item,scores={ClearLag=1..1400},tag=!CL] run tag @s add CL
execute as @e[type=experience_orb,tag=!CL,tag=!global.ignore] store result score @s ClearLag run data get entity @s Age
execute as @e[type=experience_orb,scores={ClearLag=1..2500},tag=!CL] run data merge entity @s {Age:2500}
execute as @e[type=experience_orb,tag=!CL] run tag @s add CL

execute if score #CL_FE ClearLag matches 1 as @e[type=egg,tag=!global.ignore,tag=!global.ignore.kill] at @s unless entity @a[distance=..30] run kill @s
execute if score #CL_FE ClearLag matches 1 as @e[type=snowball,tag=!global.ignore,tag=!global.ignore.kill] at @s unless entity @a[distance=..30] run kill @s
execute if score #CL_FE ClearLag matches 1 as @e[type=fireball,tag=!global.ignore,tag=!global.ignore.kill] at @s unless entity @a[distance=..50] run kill @s
execute if score #CL_FE ClearLag matches 1 as @e[type=small_fireball,tag=!global.ignore,tag=!global.ignore.kill] at @s unless entity @a[distance=..30] run kill @s
execute if score #CL_FE ClearLag matches 1 as @e[type=wither_skull,tag=!global.ignore,tag=!global.ignore.kill] at @s unless entity @a[distance=..40] run kill @s
execute if score #CL_FE ClearLag matches 1 as @e[type=falling_block,tag=!global.ignore,tag=!global.ignore.kill] at @s unless entity @a[distance=..60] run kill @s

execute store result score #CL_Respawn ClearLag run gamerule doImmediateRespawn
team join CLnocollision @e[type=#clearlag:farm_animals,team=,tag=!global.ignore]

schedule function clearlag:3sec 3s
