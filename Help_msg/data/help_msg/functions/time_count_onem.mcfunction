# 救援信号计时函数
# 目前仅限制未60秒内
# 或许可以设置为40分钟
execute as @p[tag=in_help] if score @s helpmsg matches 0.. run scoreboard players add @s helpmsg 1

# 每分钟更新一次玩家的求援信号计数器
schedule function help_msg:time_count_onem 60s

# 如果计数器达到60，则重置为0，并撤销相关的成就
execute as @p[tag=in_help] if score @s helpmsg matches 40 run scoreboard players set @s helpmsg 0
execute as @p[tag=in_help] if score @s helpmsg matches 0 run advancement revoke @s only help_msg:help_sign

# 如果计数器为0，则移除玩家的求援信号标签和队伍
execute as @p[tag=in_help] if score @s helpmsg matches 0 run team remove help
execute as @p[tag=in_help] if score @s helpmsg matches 0 run tag @s remove in_help

# 如果计数器为0，则清除计时函数
execute as @p[tag=in_help] if score @s helpmsg matches 0 run schedule clear help_msg:time_count_onem


