#离开游戏减少计数
execute if entity @s[tag=game_player] run scoreboard players remove #count count 1
scoreboard players set @s count 0

tag @s remove game_player

bossbar set hall players @a[tag=game_player]

#所有人都离开后清理大厅
execute unless entity @a[tag=game_player] run function gun_game:end_play/clean

function gun_game:end_play/eshow_msg

# setblock ~ ~1 ~ minecraft:oak_wall_sign{Text1: '{"clickEvent":{"action":"run_command","value":"/function gun_game:end_play/check_player"},"text":"leave game"}'}
