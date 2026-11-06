#游戏进行中不能加入
execute if score #running gun_game_const matches 1 run tellraw @s {"text":"游戏正在进行中，请等待本局结束","color":"red"}

#如果更换阵营实施的函数
execute if score #running gun_game_const matches 0 as @s[tag=game_player,team=red] at @s if block ~ ~-1 ~ minecraft:yellow_concrete run function gun_game:go_play/change_yellow

#加入队伍
execute if score #running gun_game_const matches 0 as @s[tag=game_player,team=!yellow] at @s if block ~ ~-1 ~ minecraft:yellow_concrete run function gun_game:go_play/join_yellow
