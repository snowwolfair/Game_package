# 救援信号传送函数
tp @s @p[tag = in_help]

# 将救援者加入救援队伍
team join help @s

# 发送自定义救援信息（暂未实现）
execute as @s if score @s tempnum matches 1 run tellraw @a[team=help] [{"text":"["},{"selector":"@s","color":"dark_aqua"},{"text":"] "},{"nbt": "test1","storage": "help_msg:test","interpret": true}]

execute as @s if score @s tempnum matches 2 run tellraw @a[team=help] [{"text":"["},{"selector":"@s","color":"dark_aqua"},{"text":"] "},{"nbt": "test2","storage": "help_msg:test","interpret": true}]

execute as @s if score @s tempnum matches 3 run tellraw @a[team=help] [{"text":"["},{"selector":"@s","color":"dark_aqua"},{"text":"] "},{"nbt": "test3","storage": "help_msg:test","interpret": true}]

execute as @s if score @s tempnum matches 4 run tellraw @a[team=help] [{"text":"["},{"selector":"@s","color":"dark_aqua"},{"text":"] "},{"nbt": "test4","storage": "help_msg:test","interpret": true}]

execute as @s if score @s tempnum matches 5 run tellraw @a[team=help] [{"text":"["},{"selector":"@s","color":"dark_aqua"},{"text":"] "},{"nbt": "test5","storage": "help_msg:test","interpret": true}]

execute as @s if score @s tempnum matches 6 run tellraw @a[team=help] [{"text":"["},{"selector":"@s","color":"dark_aqua"},{"text":"] "},{"nbt": "test6","storage": "help_msg:test","interpret": true}]

execute as @s if score @s tempnum matches 7 run tellraw @a[team=help] [{"text":"["},{"selector":"@s","color":"dark_aqua"},{"text":"] "},{"nbt": "test7","storage": "help_msg:test","interpret": true}]

execute as @s if score @s tempnum matches 8 run tellraw @a[team=help] [{"text":"["},{"selector":"@s","color":"dark_aqua"},{"text":"] "},{"nbt": "test8","storage": "help_msg:test","interpret": true}]




