#设置随机选择器
execute if entity @a[tag=in_play,tag=loop1] run schedule function in_play:map/sand_city/block_select 1t

#根据随机选择器的结果生成对应
execute if entity @a[tag=in_play,tag=loop1] run schedule function in_play:map/sand_city/block_create 5t

#选择完成后移除选择标示
tag @a[tag=in_play,tag=loop1] remove loop1

#运行对应地图
function in_play:map/sand_city/sandcity