#传送tag=leave_A的盔甲架,树叶
execute as @a[tag=in_play,scores={random_select=2,block_count=1}] at @s run teleport @e[tag=leave_A] @s 

execute as @e[tag=leave_A] at @s run teleport @s ~ ~-1.48 ~

execute as @a[tag=in_play,scores={random_select=2,block_count=1}] if score @s seek_score matches 1 run kill @e[tag=leave_A]
execute as @a[tag=in_play,scores={random_select=2,block_count=1}] if score @s seek_score matches 1 run function in_play:be_found

#传送tag=leave_B的盔甲架,树叶
execute as @a[tag=in_play,scores={random_select=2,block_count=2}] at @s run teleport @e[tag=leave_B] @s 

execute as @e[tag=leave_B] at @s run teleport @s ~ ~-1.48 ~

execute as @a[tag=in_play,scores={random_select=2,block_count=2}] if score @s seek_score matches 1 run kill @e[tag=leave_B]
execute as @a[tag=in_play,scores={random_select=2,block_count=2}] if score @s seek_score matches 1 run function in_play:be_found

#传送tag=leave_C的盔甲架,树叶
execute as @a[tag=in_play,scores={random_select=2,block_count=3}] at @s run teleport @e[tag=leave_C] @s 

execute as @e[tag=leave_C] at @s run teleport @s ~ ~-1.48 ~

execute as @a[tag=in_play,scores={random_select=2,block_count=3}] if score @s seek_score matches 1 run kill @e[tag=leave_C]
execute as @a[tag=in_play,scores={random_select=2,block_count=3}] if score @s seek_score matches 1 run function in_play:be_found

#传送tag=leave_D的盔甲架,树叶
execute as @a[tag=in_play,scores={random_select=2,block_count=4}] at @s run teleport @e[tag=leave_D] @s 

execute as @e[tag=leave_D] at @s run teleport @s ~ ~-1.48 ~

execute as @a[tag=in_play,scores={random_select=2,block_count=4}] if score @s seek_score matches 1 run kill @e[tag=leave_D]
execute as @a[tag=in_play,scores={random_select=2,block_count=4}] if score @s seek_score matches 1 run function in_play:be_found

#传送tag=leave_E的盔甲架,树叶
execute as @a[tag=in_play,scores={random_select=2,block_count=5}] at @s run teleport @e[tag=leave_E] @s 

execute as @e[tag=leave_E] at @s run teleport @s ~ ~-1.48 ~

execute as @a[tag=in_play,scores={random_select=2,block_count=5}] if score @s seek_score matches 1 run kill @e[tag=leave_E]
execute as @a[tag=in_play,scores={random_select=2,block_count=5}] if score @s seek_score matches 1 run function in_play:be_found

#设置结束条件
execute unless score #seek_time seek_scorece matches 0 run schedule function in_play:map/sand_city/rule/teleport/oak_leave_teleport 1t
execute if score #hide_number Number_count matches 0 run schedule clear in_play:map/sand_city/rule/teleport/oak_leave_teleport