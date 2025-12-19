schedule function gun_game:in_play/time_count/time_count_down 1s

# 顶部倒计时同步
bossbar set minecraft:gun_game_play_time name [{"text":"游戏时间:","color":"blue"},{"score":{"name":"#GungameTimehold","objective":"gun_game_play_time"},"color":"red"},{"text":"秒 ","color":"blue"},{"text":"红队:","color":"red" },{"score":{"name":"Red_Team","objective":"Team_kill_count"},"color":"red"},{"text": " / "},{"text":" 黄队:","color":"yellow" },{"score":{"name":"Yellow_Team","objective":"Team_kill_count"},"color":"yellow"}]

execute store result bossbar minecraft:gun_game_play_time value run scoreboard players get #GungameTimeCountdown gun_game_play_time
scoreboard players remove #GungameTimeCountdown gun_game_play_time 1

# 倒计时结束
execute if score #GungameTimeCountdown gun_game_play_time matches 0 run schedule clear gun_game:in_play/time_count/time_count_down
execute if score #GungameTimeCountdown gun_game_play_time matches 0 run schedule function gun_game:end_play/ending_game 1t replace