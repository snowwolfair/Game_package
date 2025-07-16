#增加方块计数
scoreboard players add #oak_leaves block_count 1
#设置玩家对应的方块
scoreboard players operation @s block_count = #oak_leaves block_count
#设置随机选择器为方块对应数字
scoreboard players set @s random_select 2

#tag @s add sand_block_player