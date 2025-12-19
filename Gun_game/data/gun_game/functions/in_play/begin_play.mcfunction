schedule function gun_game:in_play/begin_play 1t replace

execute as @a[tag=in_play] if score @s death_point matches 1 run give @s minecraft:coal{display:{Name:'{"text":"死亡积分"}',Lore:['{"text":"别灰心，带着他换来的东西重返战场吧","color":"purple"}']},Unbreakable:1b} 1
execute as @a[tag=in_play] if score @s death_point matches 1 run scoreboard players set @s death_point 0

execute if score Red_Team Team_kill_count >= #Max_kill_count gun_game_const run function gun_game:end_play/ending_game
execute if score Yellow_Team Team_kill_count >= #Max_kill_count gun_game_const run function gun_game:end_play/ending_game

