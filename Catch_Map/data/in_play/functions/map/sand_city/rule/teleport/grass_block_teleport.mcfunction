#传送tag=grass_A的盔甲架,草方块
execute as @a[tag=in_play,scores={random_select=3,block_count=1}] at @s run teleport @e[tag=grass_A] @s 

execute as @e[tag=grass_A] at @s run teleport @s ~ ~-1.48 ~

execute as @a[tag=in_play,scores={random_select=3,block_count=1}] if score @s seek_score matches 1 run kill @e[tag=grass_A]
execute as @a[tag=in_play,scores={random_select=3,block_count=1}] if score @s seek_score matches 1 run function in_play:be_found

#传送tag=grass_B的盔甲架,草方块
execute as @a[tag=in_play,scores={random_select=3,block_count=2}] at @s run teleport @e[tag=grass_B] @s 

execute as @e[tag=grass_B] at @s run teleport @s ~ ~-1.48 ~

execute as @a[tag=in_play,scores={random_select=3,block_count=2}] if score @s seek_score matches 1 run kill @e[tag=grass_B]
execute as @a[tag=in_play,scores={random_select=3,block_count=2}] if score @s seek_score matches 1 run function in_play:be_found

#传送tag=grass_C的盔甲架,草方块
execute as @a[tag=in_play,scores={random_select=3,block_count=3}] at @s run teleport @e[tag=grass_C] @s 

execute as @e[tag=grass_C] at @s run teleport @s ~ ~-1.48 ~

execute as @a[tag=in_play,scores={random_select=3,block_count=3}] if score @s seek_score matches 1 run kill @e[tag=grass_C]
execute as @a[tag=in_play,scores={random_select=3,block_count=3}] if score @s seek_score matches 1 run function in_play:be_found

#传送tag=grass_D的盔甲架,草方块
execute as @a[tag=in_play,scores={random_select=3,block_count=4}] at @s run teleport @e[tag=grass_D] @s 

execute as @e[tag=grass_D] at @s run teleport @s ~ ~-1.48 ~

execute as @a[tag=in_play,scores={random_select=3,block_count=4}] if score @s seek_score matches 1 run kill @e[tag=grass_D]
execute as @a[tag=in_play,scores={random_select=3,block_count=4}] if score @s seek_score matches 1 run function in_play:be_found

#传送tag=grass_E的盔甲架,草方块
execute as @a[tag=in_play,scores={random_select=3,block_count=5}] at @s run teleport @e[tag=grass_E] @s 

execute as @e[tag=grass_E] at @s run teleport @s ~ ~-1.48 ~

execute as @a[tag=in_play,scores={random_select=3,block_count=5}] if score @s seek_score matches 1 run kill @e[tag=grass_E]
execute as @a[tag=in_play,scores={random_select=3,block_count=5}] if score @s seek_score matches 1 run function in_play:be_found

#设置结束条件
execute unless score #seek_time seek_scorece matches 0 run schedule function in_play:map/sand_city/rule/teleport/grass_block_teleport 1t
execute if score #hide_number Number_count matches 0 run schedule clear in_play:map/sand_city/rule/teleport/grass_block_teleport