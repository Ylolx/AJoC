tellraw @s [{"text":"[","color":"gold"},{"text":"ClearLag","color":"green"},{"text":"] "},{"text":"Are you sure to remove the datapack? ","color":"aqua"},{"text":"YES","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function clearlag:uninstall/remove"}}]

##Gamerule rollback##
gamerule sendCommandFeedback false
schedule function clearlag:other/system/gamerule 1t
