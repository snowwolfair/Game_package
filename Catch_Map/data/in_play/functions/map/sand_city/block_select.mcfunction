#随机选择器
execute if entity @r[team=hide,tag=in_play,scores={random_select=0}] as @r[team=hide,tag=in_play,scores={random_select=0}] at @s run function in_play:map/sand_city/random_block/loop_sand
execute if entity @r[team=hide,tag=in_play,scores={random_select=0}] as @r[team=hide,tag=in_play,scores={random_select=0}] at @s run function in_play:map/sand_city/random_block/loop_oak_leaves
execute if entity @r[team=hide,tag=in_play,scores={random_select=0}] as @r[team=hide,tag=in_play,scores={random_select=0}] at @s run function in_play:map/sand_city/random_block/loop_grass_block
#重复函数直到所有躲藏者选完方块
execute if entity @a[team=hide,tag=in_play,scores={random_select=0}] run function in_play:map/sand_city/block_select
