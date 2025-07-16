#减少游戏人物计数
scoreboard players remove #count count 1
#显示离开信息
execute as @p run tellraw @a[tag=game_player] [{"selector":"@s","color":"dark_blue"},{"text":"离开了游戏","color":"white"},{"text":",当前人数:","color":"light_purple"},{"score":{"name":"#count","objective": "count"},"color":"yellow"},{"text":"/","color":"white"},{"text":"20","color": "white"}]
#移除游戏玩家tag
tag @p remove game_player
#将大厅欢迎重载
bossbar set hall players @a[tag=game_player]