#如果更换阵营实施的函数
execute as @p at @s if entity @s[tag=game_player,team=red] if block ~ ~-1 ~ minecraft:yellow_concrete run function gun_game:go_play/change_yellow

#加入队伍
execute as @p at @s if entity @s[tag=game_player,team=!yellow] if block ~ ~-1 ~ minecraft:yellow_concrete run function gun_game:go_play/join_yellow

#  if block ~ ~-1 ~ minecraft:yellow_concrete