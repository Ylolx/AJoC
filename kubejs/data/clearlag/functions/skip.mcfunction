scoreboard players operation #CL_TimeC ClearLag = #CL_Time ClearLag
execute unless score #CL_Time ClearLag matches 1 run tellraw @s [{"text":"[","color":"gold"},{"text":"ClearLag","color":"green"},{"text":"] "},{"text":"You have skipped this clear","color":"aqua"},{"text":"\n["},{"text":"ClearLag","color":"green"},{"text":"] "},{"text":"Next round is in ","color":"aqua"},{"score":{"name":"#CL_TimeC","objective":"ClearLag"},"color":"gold"},{"text":" seconds","color":"dark_aqua"}]
execute if score #CL_Time ClearLag matches 1 run tellraw @s [{"text":"[","color":"gold"},{"text":"ClearLag","color":"green"},{"text":"] "},{"text":"You have skipped this clear","color":"aqua"},{"text":"\n["},{"text":"ClearLag","color":"green"},{"text":"] "},{"text":"Next round is in ","color":"aqua"},{"score":{"name":"#CL_TimeC","objective":"ClearLag"},"color":"gold"},{"text":" second","color":"dark_aqua"}]

##Gamerule rollback##
gamerule sendCommandFeedback false
schedule function clearlag:other/system/gamerule 1t
