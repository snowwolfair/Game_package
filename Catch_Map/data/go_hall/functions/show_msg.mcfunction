#创建计数
scoreboard objectives add count dummy "Count"
scoreboard players add #count count 1
#显示加入游戏人数
execute as @p run tellraw @a[tag=game_player] [{"selector":"@s","color":"dark_blue"},{"text":"加入了游戏","color":"white"},{"text":",当前人数:","color":"light_purple"},{"score":{"name":"#count","objective": "count"},"color":"yellow"},{"text":"/","color":"white"},{"text":"20","color": "white"}]
