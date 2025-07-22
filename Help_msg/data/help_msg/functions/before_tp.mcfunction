# 传送至求援信号位置
# 使用@p在多个救援时处理不好
# 需要进行逻辑修复
execute as @s if score @p[tag=in_help] helpmsg matches 1.. run function help_msg:tp_to_help

# 如果没有其他玩家在求援状态，则发送提示
execute as @s unless entity @a[tag=!in_help] run tellraw @s [{"text": "救援信号已过期"}]