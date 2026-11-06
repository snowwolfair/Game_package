#创建游戏时间计分板
scoreboard objectives add gun_game_play_time dummy "GungameTime"
scoreboard players set #GungameTimeCountdown gun_game_play_time 600

#设置游戏设置初始化常量（已有值时保留，/reload 不会重置）
scoreboard objectives add gun_game_const dummy "Const"
execute unless score #Max_kill_count gun_game_const matches -2147483648.. run scoreboard players set #Max_kill_count gun_game_const 5
execute unless score #Min_player_count gun_game_const matches -2147483648.. run scoreboard players set #Min_player_count gun_game_const 2
execute unless score #Game_time_hold gun_game_const matches -2147483648.. run scoreboard players set #Game_time_hold gun_game_const 600

#游戏状态：0 空闲，1 进行中
execute unless score #running gun_game_const matches -2147483648.. run scoreboard players set #running gun_game_const 0

#局号：每次开局加 1，玩家身上的 gg_round 记录他参加的是哪一局
execute unless score #round gun_game_const matches -2147483648.. run scoreboard players set #round gun_game_const 0
scoreboard objectives add gg_round dummy

#检测玩家重新进服
scoreboard objectives add gg_leave minecraft.custom:minecraft.leave_game

#临时计分板
scoreboard objectives add temp dummy
