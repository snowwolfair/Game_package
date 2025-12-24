#离开游戏减少计数
execute as @s if entity @s[tag=game_player] run scoreboard players remove #count count 1

execute as @s run tag @s remove game_player

bossbar set hall players @a[tag=game_player]

#移除团队榜
scoreboard objectives setdisplay sidebar

execute as @s unless entity @s[tag=game_player] run function gun_game:end_play/clean


execute as @s run function gun_game:end_play/eshow_msg

# setblock ~ ~1 ~ minecraft:oak_wall_sign{Text1: '{"clickEvent":{"action":"run_command","value":"/execute as @p if entity @s[tag=game_player] run function gun_game:end_play/leave_gun_game"},"text":"leave game"}'}