# 暂未调试的代码


# 增加调试信息
say here is begin

# 设置UUID
# 该函数用于设置玩家的UUID到存储中
scoreboard objectives add tempnum dummy
scoreboard players add #numcut tempnum 0
scoreboard players add @s tempnum 0

# 如果玩家的tempnum分数为0，则执行赋予特定序号操作
execute as @s if score @s tempnum matches 0 run function help_msg:in_col 


# 初始化uuid相关的分数板
scoreboard objectives add temptouuid dummy
scoreboard objectives add uuid dummy

scoreboard players add @s temptouuid 0
scoreboard players add @s uuid 0


# 从玩家实体中获取UUID的第3个字节作为唯一标识（可能有误，因为不同的登录来源的同一个人的uuid可能不同）
execute store result score @s uuid run data get entity @s UUID[3] 1

# 将UUID的第3个字节存储到帮助消息测试存储中
execute as @s if score @s tempnum matches 1 run data modify storage help_msg:test test append from entity @s UUID[3]

# 
execute store result score @s temptouuid run data get storage help_msg:test test[2] 1

execute as @s if score @s tempnum matches 2 if score @s temptouuid < @s uuid run data modify storage help_msg:test test append from entity @s UUID[3]
execute as @s if score @s tempnum matches 2 if score @s temptouuid > @s uuid run data modify storage help_msg:test test append from entity @s UUID[3]

execute store result score @s temptouuid run data get storage help_msg:test test[3] 1

execute as @s if score @s tempnum matches 3 if score @s temptouuid < @s uuid run data modify storage help_msg:test test append from entity @s UUID[3]
execute as @s if score @s tempnum matches 3 if score @s temptouuid > @s uuid run data modify storage help_msg:test test append from entity @s UUID[3]

execute store result score @s temptouuid run data get storage help_msg:test test[4] 1

execute as @s if score @s tempnum matches 4 if score @s temptouuid < @s uuid run data modify storage help_msg:test test append from entity @s UUID[3]
execute as @s if score @s tempnum matches 4 if score @s temptouuid > @s uuid run data modify storage help_msg:test test append from entity @s UUID[3]

execute store result score @s temptouuid run data get storage help_msg:test test[5] 1

execute as @s if score @s tempnum matches 5 if score @s temptouuid < @s uuid run data modify storage help_msg:test test append from entity @s UUID[3]
execute as @s if score @s tempnum matches 5 if score @s temptouuid > @s uuid run data modify storage help_msg:test test append from entity @s UUID[3]

