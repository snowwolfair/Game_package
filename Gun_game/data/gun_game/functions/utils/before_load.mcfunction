#创建游戏时间计分板
scoreboard objectives add gun_game_play_time dummy "GungameTime"
scoreboard players set #GungameTimeCountdown gun_game_play_time 600

#设置游戏设置初始化常量
scoreboard objectives add gun_game_const dummy "Const"
scoreboard players set #Max_kill_count gun_game_const 5
scoreboard players set #Min_player_count gun_game_const 2
scoreboard players set #Game_time_hold gun_game_const 600