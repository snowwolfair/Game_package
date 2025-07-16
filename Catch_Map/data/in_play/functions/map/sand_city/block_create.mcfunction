#根据random_select的不同值选择不同方块
execute if entity @a[tag=in_play,scores={random_select=1}] run schedule function in_play:map/sand_city/rule/block_sand 1t replace
execute if entity @a[tag=in_play,scores={random_select=2}] run schedule function in_play:map/sand_city/rule/block_oak_leaves 1t replace
execute if entity @a[tag=in_play,scores={random_select=3}] run schedule function in_play:map/sand_city/rule/block_grass_block 1t replace
effect give @a[team=hide,tag=in_play] minecraft:invisibility 1000000 1 true