# 创建顶部倒计时
bossbar add minecraft:gun_game_play_time [{"text":"游戏时间:","color":"blue"},{"score":{"name":"#GungameTimehold","objective":"gun_game_play_time"},"color":"red"},{"text":"秒","color":"blue"}]

# 设置顶部倒计时颜色为绿色
bossbar set minecraft:gun_game_play_time color green

# 设置顶部倒计时值
execute store result bossbar minecraft:gun_game_play_time max run scoreboard players get #Game_time_hold gun_game_const
execute store result score #GungameTimeCountdown gun_game_play_time run scoreboard players get #Game_time_hold gun_game_const
execute store result bossbar minecraft:gun_game_play_time value run scoreboard players get #GungameTimeCountdown gun_game_play_time

# 使游戏中玩家可视
bossbar set minecraft:gun_game_play_time players @a[tag=in_play]
# 开始倒计时函数
schedule function gun_game:in_play/time_count/time_count_down 1t
