# 游戏进行中不能修改
execute if score #running gun_game_const matches 1 run tellraw @s {"text":"游戏正在进行中，不能修改参数","color":"red"}

# 获取当前值
scoreboard players operation #temp_Game_time_hold temp = #Game_time_hold gun_game_const

# 根据当前值设置下一个值
execute if score #running gun_game_const matches 0 if entity @s[tag=game_player] if score #temp_Game_time_hold temp matches 600 run scoreboard players set #Game_time_hold gun_game_const 900
execute if score #running gun_game_const matches 0 if entity @s[tag=game_player] if score #temp_Game_time_hold temp matches 900 run scoreboard players set #Game_time_hold gun_game_const 1200
execute if score #running gun_game_const matches 0 if entity @s[tag=game_player] if score #temp_Game_time_hold temp matches 1200 run scoreboard players set #Game_time_hold gun_game_const 600

# 刷新告示牌上的数值
data merge block ~ ~ ~ {Text2:'{"score":{"name":"#Game_time_hold","objective":"gun_game_const"},"color":"red"}'}

# 告示牌模板
# setblock ~ ~1 ~ minecraft:oak_wall_sign{Text1: '{"clickEvent":{"action":"run_command","value":"/function gun_game:utils/change_game_time"},"text":"游戏时间"}',Text2:'{"score":{"name":"#Game_time_hold","objective":"gun_game_const"},"color":"red"}',has_glowing_text:1b} replace
