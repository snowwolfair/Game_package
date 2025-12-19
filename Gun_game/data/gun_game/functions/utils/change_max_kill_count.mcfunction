# 获取当前值
scoreboard players operation #temp_Max_kill_count temp = #Max_kill_count gun_game_const

# 根据当前值设置下一个值
execute as @s if entity @s[tag=game_player] if score #temp_Max_kill_count temp matches 5 run scoreboard players set #Max_kill_count gun_game_const 20
execute as @s if entity @s[tag=game_player] if score #temp_Max_kill_count temp matches 20 run scoreboard players set #Max_kill_count gun_game_const 30
execute as @s if entity @s[tag=game_player] if score #temp_Max_kill_count temp matches 30 run scoreboard players set #Max_kill_count gun_game_const 5

setblock ~ ~1 ~ minecraft:oak_wall_sign{Text1: '{"clickEvent":{"action":"run_command","value":"/execute as @p if entity @s[tag=game_player] run function gun_game:utils/change_max_kill_count"},"text":"目标击杀数"}',Text2:'{"score":{"name":"#Max_kill_count","objective":"gun_game_const"},"color":"red"}',has_glowing_text:1b} replace
