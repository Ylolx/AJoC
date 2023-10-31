tellraw @s [{"text":"[","color":"gold"},{"text":"ClearLag","color":"green"},{"text":"]"},{"text":" Statistics: ","color":"gray"},{"text":"(refresh)","color":"gray","clickEvent":{"action":"run_command","value":"/function clearlag:other/information"}}]
tellraw @s [{"text":"Total: ","color":"aqua"},{"score":{"name":"#CL_Total","objective":"ClearLag"},"color":"gold"},{"text":" items","color":"dark_aqua"}]
tellraw @s [{"text":"Highest: ","color":"aqua"},{"score":{"name":"#CL_Highest","objective":"ClearLag"},"color":"gold"},{"text":" items","color":"dark_aqua"}]
tellraw @s [{"text":"Average: ","color":"aqua"},{"score":{"name":"#CL_Average","objective":"ClearLag"},"color":"gold"},{"text":" items","color":"dark_aqua"}]
tellraw @s [{"text":"Count: ","color":"aqua"},{"score":{"name":"#CL_Times","objective":"ClearLag"},"color":"gold"},{"text":" times","color":"dark_aqua"}]

##Gamerule rollback##
gamerule sendCommandFeedback false
schedule function clearlag:other/system/gamerule 1t
