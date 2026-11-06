scoreboard players set #start_ok temp 1

#游戏已经在进行中
execute if score #running gun_game_const matches 1 run tellraw @s {"text":"游戏正在进行中！","color":"red"}
execute if score #running gun_game_const matches 1 run scoreboard players set #start_ok temp 0

#还有玩家未选择队伍
execute if score #start_ok temp matches 1 if entity @a[tag=game_player,team=,limit=1] run tellraw @a[tag=game_player] {"text":"还有玩家未选择队伍！","color":"red"}
execute if score #start_ok temp matches 1 if entity @a[tag=game_player,team=,limit=1] run scoreboard players set #start_ok temp 0

#两队都至少有1人
execute store result score #red_online temp if entity @a[tag=game_player,team=red]
execute store result score #yellow_online temp if entity @a[tag=game_player,team=yellow]
execute if score #start_ok temp matches 1 if score #red_online temp matches 0 run tellraw @a[tag=game_player] {"text":"红队还没有玩家！","color":"red"}
execute if score #start_ok temp matches 1 if score #yellow_online temp matches 0 run tellraw @a[tag=game_player] {"text":"黄队还没有玩家！","color":"red"}
execute if score #start_ok temp matches 1 if score #red_online temp matches 0 run scoreboard players set #start_ok temp 0
execute if score #start_ok temp matches 1 if score #yellow_online temp matches 0 run scoreboard players set #start_ok temp 0

#总人数不少于最少人数
scoreboard players operation #total_online temp = #red_online temp
scoreboard players operation #total_online temp += #yellow_online temp
execute if score #start_ok temp matches 1 if score #total_online temp < #Min_player_count gun_game_const run tellraw @a[tag=game_player] [{"text":"人数不足，至少需要","color":"red"},{"score":{"name":"#Min_player_count","objective":"gun_game_const"},"color":"yellow"},{"text":"人才能开始","color":"red"}]
execute if score #start_ok temp matches 1 if score #total_online temp < #Min_player_count gun_game_const run scoreboard players set #start_ok temp 0

#记录大厅位置，结束后把重生点设到这里
execute if score #start_ok temp matches 1 run kill @e[type=marker,tag=gg_hall_spawn]
execute if score #start_ok temp matches 1 run summon marker ~ ~ ~ {Tags:["gg_hall_spawn"]}

execute if score #start_ok temp matches 1 run schedule function gun_game:in_play/before_play 1t replace
