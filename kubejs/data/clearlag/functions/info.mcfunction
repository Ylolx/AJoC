##Scoreboard##
scoreboard objectives add ClearLag dummy
scoreboard objectives add ClearLagDeath deathCount

##Teams##
team add CLnocollision "ClearLagNoCollision"
team modify CLnocollision collisionRule never

##Default settings and values##
execute unless score #CL_Gamerule ClearLag matches 0.. run scoreboard players set #CL_Gamerule ClearLag 1
execute unless score #CL_Time ClearLag matches 0.. run scoreboard players set #CL_Time ClearLag 1000
execute unless score #CL_TimeC ClearLag matches -1000.. run scoreboard players set #CL_TimeC ClearLag 1000
execute unless score #CLM_30_Minutes ClearLag matches 0.. run scoreboard players set #CLM_30_Minutes ClearLag 1
execute unless score #CLM_15_Minutes ClearLag matches 0.. run scoreboard players set #CLM_15_Minutes ClearLag 1
execute unless score #CLM_5_Minutes ClearLag matches 0.. run scoreboard players set #CLM_5_Minutes ClearLag 1
execute unless score #CLM_1_Minute ClearLag matches 0.. run scoreboard players set #CLM_1_Minute ClearLag 1
execute unless score #CLM_30_Secounds ClearLag matches 0.. run scoreboard players set #CLM_30_Secounds ClearLag 1
execute unless score #CLM_Clear ClearLag matches 0.. run scoreboard players set #CLM_Clear ClearLag 1
execute unless score #CL_EO ClearLag matches 0.. run scoreboard players set #CL_EO ClearLag 1
execute unless score #CL_PD ClearLag matches 0.. run scoreboard players set #CL_PD ClearLag 1
execute unless score #CL_IIW ClearLag matches 0.. run scoreboard players set #CL_IIW ClearLag 0
execute unless score #CL_AF ClearLag matches 0.. run scoreboard players set #CL_AF ClearLag 0
execute unless score #CL_FE ClearLag matches 0.. run scoreboard players set #CL_FE ClearLag 1
execute unless score #CL_DE ClearLag matches 0.. run scoreboard players set #CL_DE ClearLag 1
scoreboard players add #CL_Highest ClearLag 0
scoreboard players add #CL_Times ClearLag 0
scoreboard players add #CL_Total ClearLag 0
scoreboard players add #CL_Average ClearLag 0

##Check gamerule automatically##
execute store result score #CL_Gamerule ClearLag run gamerule sendCommandFeedback
# check for doImmediateRespawn in 3sec function

##Reload message##
tellraw @a [{"text":"[","color":"gold"},{"text":"ClearLag","color":"green"},{"text":"] "},{"text":"Loaded the ","color":"aqua"},{"text":"ClearLag","color":"green"},{"text":" datapack","color":"aqua"},{"text":"\n["},{"text":"ClearLag","color":"green"},{"text":"] "},{"text":"Click ","color":"aqua"},{"text":"here","underlined":"true","color":"green","clickEvent":{"action":"run_command","value":"/function clearlag:menu"}},{"text":" for the menu","color":"aqua"}]

##Run functions##
function clearlag:tick
function clearlag:xp
function clearlag:3sec
