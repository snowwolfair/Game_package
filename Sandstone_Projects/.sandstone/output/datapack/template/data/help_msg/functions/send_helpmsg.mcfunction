tag @s add in_help
team add help
team join help @s
scoreboard players operation @s help_menber = anon_kZZpDK67_0 sandstone
scoreboard players add anon_kZZpDK67_0 sandstone 1
scoreboard players set @s helpmsg 0
tellraw @a[tag=!help] ["[",{"selector":"@s","color":"gold"},"]",{"text":" 发送了求援信号","color":"red","clickEvent":{"action":"run_command","value":"/execute as @s run function help_msg:before_tp"},"hoverEvent":{"action":"show_text","contents":["点击支援"]}}]
tellraw @s ["[",{"selector":"@s","color":"gold"},"]",{"text":" 发送了求援信号","color":"red"}]
execute if score @s help_msg matches 1 run say hahahah