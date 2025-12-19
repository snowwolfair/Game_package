# 获取当前值
scoreboard players operation #temp_Game_time_hold temp = #Game_time_hold gun_game_const

# 根据当前值设置下一个值
execute as @s if entity @s[tag=game_player] if score #temp_Game_time_hold temp matches 600 run scoreboard players set #Game_time_hold gun_game_const 900
execute as @s if entity @s[tag=game_player] if score #temp_Game_time_hold temp matches 900 run scoreboard players set #Game_time_hold gun_game_const 1200
execute as @s if entity @s[tag=game_player] if score #temp_Game_time_hold temp matches 1200 run scoreboard players set #Game_time_hold gun_game_const 600

setblock ~ ~1 ~ minecraft:oak_wall_sign{Text1: '{"clickEvent":{"action":"run_command","value":"/execute as @p if entity @s[tag=game_player] run function gun_game:utils/change_game_time"},"text":"游戏时间"}',Text2:'{"score":{"name":"#Game_time_hold","objective":"gun_game_const"},"color":"red"}',has_glowing_text:1b} replace