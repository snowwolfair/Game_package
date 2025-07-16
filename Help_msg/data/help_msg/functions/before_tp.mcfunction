execute as @s if score @p[tag=in_help] helpmsg matches 1.. run function help_msg:tp_to_help
execute as @s unless entity @a[tag=!in_help] run tellraw @s [{"text": "救援信号已过期"}]