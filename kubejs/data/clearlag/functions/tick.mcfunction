##Messages time before clear##
execute if score #CLM_30_Minutes ClearLag matches 1 if score #CL_TimeC ClearLag matches 1800 run tellraw @a [{"text":"[","color":"gold"},{"text":"ClearLag","color":"green"},{"text":"] "},{"text":"Items will be removed in ","color":"aqua"},{"text":"30","color":"green"},{"text":" minutes","color":"dark_aqua"}]
execute if score #CLM_15_Minutes ClearLag matches 1 if score #CL_TimeC ClearLag matches 900 run tellraw @a [{"text":"[","color":"gold"},{"text":"ClearLag","color":"green"},{"text":"] "},{"text":"Items will be removed in ","color":"aqua"},{"text":"15","color":"green"},{"text":" minutes","color":"dark_aqua"}]
execute if score #CLM_5_Minutes ClearLag matches 1 if score #CL_TimeC ClearLag matches 300 run tellraw @a [{"text":"[","color":"gold"},{"text":"ClearLag","color":"green"},{"text":"] "},{"text":"Items will be removed in ","color":"aqua"},{"text":"5","color":"green"},{"text":" minutes","color":"dark_aqua"}]
execute if score #CLM_1_Minute ClearLag matches 1 if score #CL_TimeC ClearLag matches 60 run tellraw @a [{"text":"[","color":"gold"},{"text":"ClearLag","color":"green"},{"text":"] "},{"text":"Items will be removed in ","color":"aqua"},{"text":"1","color":"yellow"},{"text":" minute","color":"dark_aqua"}]
execute if score #CLM_30_Secounds ClearLag matches 1 if score #CL_TimeC ClearLag matches 30 run tellraw @a [{"text":"[","color":"gold"},{"text":"ClearLag","color":"green"},{"text":"] "},{"text":"Items will be removed in ","color":"aqua"},{"text":"30","color":"red"},{"text":" seconds","color":"dark_aqua"}]
execute if score #CL_TimeC ClearLag matches 0 run function clearlag:clear
execute if score #CL_TimeC ClearLag matches 0 run scoreboard players operation #CL_TimeC ClearLag = #CL_Time ClearLag

execute at @a[scores={ClearLagDeath=1..}] if score #CL_DE ClearLag matches 1 if score #CL_Respawn ClearLag matches 0 run tag @e[type=item,distance=..7] add global.ignore.kill
scoreboard players reset @a[scores={ClearLagDeath=1..}] ClearLagDeath

scoreboard players remove #CL_TimeC ClearLag 1
schedule function clearlag:tick 1s
