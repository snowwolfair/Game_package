#倒计时程序
execute if score #seek_time seek_scorece matches 0.. run scoreboard players remove #seek_time seek_scorece 1
execute store result bossbar seek_bossbar value run scoreboard players get #seek_time seek_scorece

#躲藏者被击杀
execute as @a[scores={seek_score=0}] at @s if score @s seek_score matches 1 run function in_play:be_found

#不等于0时循环该函数
execute unless score #seek_time seek_scorece matches 0 run schedule function in_play:sek_times/sek_time 1s replace

#躲藏者全部被找到执行下一步
execute if score #hide_number Number_count matches 0 run schedule clear in_play:sek_times/sek_time

#结束游戏
execute if score #seek_time seek_scorece matches 0 run function end_play:winner/hider_win
execute if score #hide_number Number_count matches 0 run function end_play:winner/seeker_win
