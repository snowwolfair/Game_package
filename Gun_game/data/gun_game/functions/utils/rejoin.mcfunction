scoreboard players set @s gg_leave 0

#游戏中途下线、重进时本局已经结束，或者已经开了新一局：清理残留状态
execute if entity @s[tag=in_play] if score #running gun_game_const matches 0 run tag @s add gg_stale
execute if entity @s[tag=in_play] unless score @s gg_round = #round gun_game_const run tag @s add gg_stale

clear @s[tag=gg_stale]
gamemode survival @s[tag=gg_stale]
team leave @s[tag=gg_stale]
scoreboard players set @s[tag=gg_stale] new 0
scoreboard players set @s[tag=gg_stale] kill_count 0
scoreboard players set @s[tag=gg_stale] death_point 0
scoreboard players set @s[tag=gg_stale] red_kill_point 0
scoreboard players set @s[tag=gg_stale] yellow_kill_point 0
scoreboard players set @s[tag=gg_stale] count 0
execute if entity @s[tag=gg_stale,tag=game_player] run scoreboard players remove #count count 1
tag @s[tag=gg_stale] remove game_player
tag @s[tag=gg_stale] remove in_play
tag @s remove gg_stale

#在大厅里（含已选队未开局）下线，重进时游戏正在进行：移出队伍并退出大厅
#队伍人数在游戏期间不显示，结束时会清零，所以这里不扣
execute if entity @s[tag=game_player,tag=!in_play] if score #running gun_game_const matches 1 run tag @s add gg_hall_stale

execute if entity @s[tag=gg_hall_stale] run scoreboard players remove #count count 1
scoreboard players set @s[tag=gg_hall_stale] count 0
scoreboard players set @s[tag=gg_hall_stale] new 0
team leave @s[tag=gg_hall_stale]
tag @s[tag=gg_hall_stale] remove game_player
tellraw @s[tag=gg_hall_stale] {"text":"你下线期间游戏已经开始，已退出枪战大厅，请等本局结束后重新加入","color":"red"}
tag @s remove gg_hall_stale

#在大厅里下线，重进时没有游戏进行：保留在大厅和队伍里
#下线期间如果打完过一局，队伍人数已被清零，需要把他重新算进去
execute if entity @s[tag=game_player,tag=!in_play,team=red] if score #running gun_game_const matches 0 unless score @s gg_round = #round gun_game_const run scoreboard players add #red_number Number_count 1
execute if entity @s[tag=game_player,tag=!in_play,team=red] if score #running gun_game_const matches 0 unless score @s gg_round = #round gun_game_const run scoreboard players add Red_number Choice_team 1
execute if entity @s[tag=game_player,tag=!in_play,team=yellow] if score #running gun_game_const matches 0 unless score @s gg_round = #round gun_game_const run scoreboard players add #yellow_number Number_count 1
execute if entity @s[tag=game_player,tag=!in_play,team=yellow] if score #running gun_game_const matches 0 unless score @s gg_round = #round gun_game_const run scoreboard players add Yellow_number Choice_team 1
execute if entity @s[tag=game_player,tag=!in_play,team=!] if score #running gun_game_const matches 0 run scoreboard players operation @s gg_round = #round gun_game_const
#大厅可能已在他下线期间被清理，重新显示 bossbar 和侧边栏
execute if entity @s[tag=game_player,tag=!in_play] if score #running gun_game_const matches 0 at @s run function gun_game:go_hall/join_hall
