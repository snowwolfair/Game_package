#个人击杀榜计数
# execute as @a[tag=in_play,team=red] if score @s red_kill_point matches 1 run scoreboard players add @s kill_count 1
#团队击杀榜计数
execute as @a[tag=in_play,team=red] if score @s red_kill_point matches 1 run scoreboard players add Red_Team Team_kill_count 1
#击杀后给与积分
execute as @a[tag=in_play,team=red] if score @s red_kill_point matches 1 run give @s minecraft:diamond{display:{Name:'{"text":"积分"}',Lore:['{"text":"军事演习唯一指定通用品，需要在军需官处换成货币","color":"purple"}']},Unbreakable:true} 1
#将击杀分数清零，准备下一次计数
execute as @a[tag=in_play,team=red] if score @s red_kill_point matches 1.. run scoreboard players set @s red_kill_point 0


#如果未达成条件循环
execute unless score Red_Team Team_kill_count matches 5.. run schedule function gun_game:in_play/red_kill 1t replace
#如果达成条件清除函数计划
execute if score Yellow_Team Team_kill_count matches 5.. run schedule clear gun_game:in_play/red_kill