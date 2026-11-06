schedule function gun_game:in_play/begin_play 1t replace

execute as @a[tag=in_play] if score @s death_point matches 1 run give @s minecraft:coal{display:{Name:'{"text":"死亡积分"}',Lore:['{"text":"别灰心，带着他换来的东西重返战场吧","color":"purple"}']},Unbreakable:1b} 1
execute as @a[tag=in_play] if score @s death_point matches 1 run scoreboard players set @s death_point 0

#一方在线玩家全部下线：1 红队无人，2 黄队无人，3 两队都无人
scoreboard players set #forfeit gun_game_const 0
execute unless entity @a[tag=in_play,team=red] run scoreboard players add #forfeit gun_game_const 1
execute unless entity @a[tag=in_play,team=yellow] run scoreboard players add #forfeit gun_game_const 2
execute if score #forfeit gun_game_const matches 1 run tellraw @a[tag=in_play] {"text":"红队玩家已全部离线，黄队获胜","color":"yellow"}
execute if score #forfeit gun_game_const matches 2 run tellraw @a[tag=in_play] {"text":"黄队玩家已全部离线，红队获胜","color":"red"}
execute if score #forfeit gun_game_const matches 1.. if score #running gun_game_const matches 1 run function gun_game:end_play/ending_game

execute if score #running gun_game_const matches 1 if score Red_Team Team_kill_count >= #Max_kill_count gun_game_const run function gun_game:end_play/ending_game
execute if score #running gun_game_const matches 1 if score Yellow_Team Team_kill_count >= #Max_kill_count gun_game_const run function gun_game:end_play/ending_game

