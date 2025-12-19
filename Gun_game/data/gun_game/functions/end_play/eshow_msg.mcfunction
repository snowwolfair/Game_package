#显示游戏人数
execute as @p run tellraw @a [{"selector":"@s","color":"dark_blue"},{"text":"离开了游戏","color":"white"},{"text":",当前人数:","color":"light_purple"},{"score":{"name":"#count","objective": "count"},"color":"yellow"},{"text":"/","color":"white"},{"text":"20","color": "white"}]
