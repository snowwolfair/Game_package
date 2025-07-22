# 给释放求援信号的玩家添加标签
execute as @s run tag @s add in_help

team add help

# 给释放求援信号的玩家添加队伍
team join help @s

scoreboard objectives add helpmsg dummy

# 设置玩家的求援信号计数器
execute as @s run scoreboard players set @s helpmsg 0

# 发送求援信号
tellraw @a[tag =! in_help] [{"text":"["},{"selector": "@s","color": "gold"},{"text":"]"},{"text":" 发送了求援信号","color": "red","clickEvent": {"action": "run_command","value": "/execute as @s run function help_msg:before_tp"},"hoverEvent": {"action": "show_text","value": [{"text":"点击支援"}]}}]
tellraw @s [{"text":"["},{"selector": "@s","color": "gold"},{"text":"]"},{"text":" 发送了求援信号","color": "red"}]

# 发送求援信号后，开始计时
schedule function help_msg:time_count_onem 1t