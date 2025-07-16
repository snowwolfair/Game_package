#创建计数
scoreboard objectives add count dummy "Count"
execute as @p if entity @s[tag=!game_player] run scoreboard players add #count count 1

#显示加入游戏人数
execute as @p if entity @s[tag=!game_player] run tellraw @a [{"selector":"@s","color":"dark_blue"},{"text":"加入了游戏","color":"white"},{"text":",当前人数:","color":"light_purple"},{"score":{"name":"#count","objective": "count"},"color":"yellow"},{"text":"/","color":"white"},{"text":"20","color": "white"}]

execute as @p if entity @s[tag=!game_player] run scoreboard players set @s count 1

execute as @p if entity @s[tag=game_player,scores={count=1..}] run tellraw @s [{"text":"你已经加入了游戏大厅，请不要重复加入","color":"dark_red"}]

