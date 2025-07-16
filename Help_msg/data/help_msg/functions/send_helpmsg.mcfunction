execute as @s run tag @s add in_help

team add help

team join help @s

scoreboard objectives add helpmsg dummy

execute as @s run scoreboard players set @s helpmsg 0

tellraw @a[tag =! in_help] [{"text":"["},{"selector": "@s","color": "gold"},{"text":"]"},{"text":" 发送了求援信号","color": "red","clickEvent": {"action": "run_command","value": "/execute as @s run function help_msg:before_tp"},"hoverEvent": {"action": "show_text","value": [{"text":"点击支援"}]}}]
tellraw @s [{"text":"["},{"selector": "@s","color": "gold"},{"text":"]"},{"text":" 发送了求援信号","color": "red"}]
schedule function help_msg:time_count_onem 1t