execute as @e[type=experience_orb,limit=1,sort=random,tag=!global.ignore,tag=!global.ignore.kill] at @s if entity @e[type=experience_orb,tag=!global.ignore,distance=0.01..7] run tag @s add CL_Kill
execute at @e[type=experience_orb,tag=CL_Kill] run tag @e[type=experience_orb,limit=1,tag=CL,tag=!global.ignore,sort=nearest,distance=0.01..7] add CL_Merge
execute as @e[type=experience_orb,tag=CL_Kill] store result score data ClearLag run data get entity @s Value
execute as @e[type=experience_orb,tag=CL_Merge] store result score data2 ClearLag run data get entity @s Value
execute if entity @e[type=experience_orb,tag=CL_Merge] run scoreboard players operation data ClearLag += data2 ClearLag
execute store result entity @e[limit=1,type=experience_orb,tag=CL_Merge] Value int 1 run scoreboard players get data ClearLag
kill @e[type=experience_orb,tag=CL_Kill]
tag @e[type=experience_orb,tag=CL_Merge] remove CL_Merge

execute store result score XPCount ClearLag if entity @e[type=experience_orb,tag=!global.ignore]
execute if score XPCount ClearLag matches 10.. run schedule function clearlag:xp 4t
execute unless score XPCount ClearLag matches 10.. run schedule function clearlag:xp 4s
