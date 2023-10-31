tellraw @s [{"text":"[","color":"gold"},{"text":"ClearLag","color":"green"},{"text":"] "},{"text":"Menu: ","color":"yellow"},{"text":"(refresh)","color":"gray","clickEvent":{"action":"run_command","value":"/function clearlag:menu"}}]
tellraw @s {"text":"Configure messages","color":"aqua","clickEvent":{"action":"run_command","value":"/function clearlag:messages"}}
tellraw @s {"text":"Statistics","color":"gray","clickEvent":{"action":"run_command","value":"/function clearlag:other/information"}}
tellraw @s {"text":"Settings","color":"gold","clickEvent":{"action":"run_command","value":"/function clearlag:other/menu"}}
tellraw @s [{"text":"Time for every clear: ","color":"dark_aqua"},{"text":"[","color":"gray"},{"score":{"name":"#CL_Time","objective":"ClearLag"},"color":"gold","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #CL_Time ClearLag TIME"},"hoverEvent":{"action":"show_text","value":"In seconds"}},{"text":"] ","color":"gray"},{"text":"(apply)","color":"green","clickEvent":{"action":"run_command","value":"/function clearlag:other/system/apply"}}]

##Gamerule rollback##
gamerule sendCommandFeedback false
schedule function clearlag:other/system/gamerule 1t
