#传送tag=sand_A的盔甲架,沙子
execute as @a[tag=in_play,scores={random_select=1,block_count=1}] at @s run teleport @e[tag=sand_A] @s 

execute as @e[tag=sand_A] at @s run teleport @s ~ ~-1.48 ~
#被找到

execute as @a[tag=in_play,scores={random_select=1,block_count=1}] if score @s seek_score matches 1 run kill @e[tag=sand_A]
execute as @a[tag=in_play,scores={random_select=1,block_count=1}] if score @s seek_score matches 1 run function in_play:be_found

#传送tag=sand_B的盔甲架,沙子
execute as @a[tag=in_play,scores={random_select=1,block_count=2}] at @s run teleport @e[tag=sand_B] @s 

execute as @e[tag=sand_B] at @s run teleport @s ~ ~-1.48 ~

execute as @a[tag=in_play,scores={random_select=1,block_count=2}] if score @s seek_score matches 1 run kill @e[tag=sand_B]
execute as @a[tag=in_play,scores={random_select=1,block_count=2}] if score @s seek_score matches 1 run function in_play:be_found


#传送tag=sand_C的盔甲架,沙子
execute as @a[tag=in_play,scores={random_select=1,block_count=3}] at @s run teleport @e[tag=sand_C] @s 

execute as @e[tag=sand_C] at @s run teleport @s ~ ~-1.48 ~

execute as @a[tag=in_play,scores={random_select=1,block_count=3}] if score @s seek_score matches 1 run kill @e[tag=sand_C]
execute as @a[tag=in_play,scores={random_select=1,block_count=3}] if score @s seek_score matches 1 run function in_play:be_found


#传送tag=sand_D的盔甲架,沙子
execute as @a[tag=in_play,scores={random_select=1,block_count=4}] at @s run teleport @e[tag=sand_D] @s 

execute as @e[tag=sand_D] at @s run teleport @s ~ ~-1.48 ~

execute as @a[tag=in_play,scores={random_select=1,block_count=4}] if score @s seek_score matches 1 run kill @e[tag=sand_D]
execute as @a[tag=in_play,scores={random_select=1,block_count=4}] if score @s seek_score matches 1 run function in_play:be_found


#传送tag=sand_E的盔甲架,沙子
execute as @a[tag=in_play,scores={random_select=1,block_count=5}] at @s run teleport @e[tag=sand_E] @s 

execute as @e[tag=sand_E] at @s run teleport @s ~ ~-1.48 ~

execute as @a[tag=in_play,scores={random_select=1,block_count=5}] if score @s seek_score matches 1 run kill @e[tag=sand_E]
execute as @a[tag=in_play,scores={random_select=1,block_count=5}] if score @s seek_score matches 1 run function in_play:be_found

#设置结束条件
execute unless score #seek_time seek_scorece matches 0 run schedule function in_play:map/sand_city/rule/teleport/sand_teleport 1t
execute if score #hide_number Number_count matches 0 run schedule clear in_play:map/sand_city/rule/teleport/sand_teleport
