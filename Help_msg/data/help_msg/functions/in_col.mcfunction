# 增加临时序号
scoreboard players add @s tempnum 1

# 比较玩家的临时序号与当前最大序号，如果玩家的临时序号大于当前最大序号，则将当前最大序号设置为玩家的临时序号
execute as @s if score @s tempnum > #numcut tempnum run scoreboard players operation #numcut tempnum = @s tempnum

# 如果玩家的临时序号小于等于当前最大序号，则将临时序号设置为当前最大序号
execute as @s if score @s tempnum <= #numcut tempnum run scoreboard players operation @s tempnum = #numcut tempnum

# 增加当前最大序号
scoreboard players add #numcut tempnum 1