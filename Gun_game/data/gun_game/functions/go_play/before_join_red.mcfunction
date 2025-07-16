#如果更换阵营实施的函数
execute as @p at @s if entity @s[tag=game_player,team=yellow] run function gun_game:go_play/change_red 

#加入队伍
execute as @p at @s if entity @s[tag=game_player,team=!red] run function gun_game:go_play/join_red


# if block ~ ~-1 ~ minecraft:red_concrete