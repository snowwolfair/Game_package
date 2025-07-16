say hh
scoreboard objectives add tempnum dummy
scoreboard players add #numcut tempnum 0
scoreboard players add @s tempnum 0

execute as @s if score @s tempnum matches 0 run function help_msg:in_col 

scoreboard objectives add temptouuid dummy
scoreboard objectives add uuid dummy

scoreboard players add @s temptouuid 0
scoreboard players add @s uuid 0



execute store result score @s uuid run data get entity @s UUID[3] 1

execute as @s if score @s tempnum matches 1 run data modify storage help_msg:test test append from entity @s UUID[3]

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

function help_msg:set_help_msg