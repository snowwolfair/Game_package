# 执行坐标为世界出生点：先传送回主世界，再落到出生点最高的方块上
execute in minecraft:overworld run tp @s ~ ~ ~
execute in minecraft:overworld run spreadplayers ~ ~ 0 1 false @s

effect give @s minecraft:slow_falling 5 0 true
scoreboard players reset @s hight_void

tellraw @s {"text":"小精灵成功地把你从虚空捞起来了","color":"aqua"}
