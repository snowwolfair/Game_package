#倒计时程序
execute if score #hide_time hide_scorece matches 0.. run scoreboard players remove #hide_time hide_scorece 1
execute store result bossbar hide_bossbar value run scoreboard players get #hide_time hide_scorece

#不等于0时循环该函数
execute unless score #hide_time hide_scorece matches 0 run schedule function in_play:hid_times/hid_time 1s replace

#标志位设置为1（后面有人被抓后重置为0）
scoreboard players set @a[tag=in_play,team=hide] seek_score 0
scoreboard players set @a[tag=in_play,team=seek] seek_score 0
#清除计划
execute if score #hide_time hide_scorece matches 0 run schedule clear in_play:hid_times/hid_time

#启用设置释放时间的
execute if score #hide_time hide_scorece matches 0 run function in_play:sek_times/before_sektime
