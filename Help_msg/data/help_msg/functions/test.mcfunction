# 暂未调试的代码

execute as @s run say hello

advancement revoke @s only help_msg:help_sign

give @s written_book{pages:['{"text":"Hello","color":"dark_aqua"}','{"text":"World","color":"dark_aqua"}'],author:"Help",title:"Help"} 1

data get entity @s HandItems[0]

data modify storage help_msg:test test set from entity @s Inventory[{Slot:2b}].tag

data modify entity @e[type=minecraft:item_frame,limit=1] Item.tag.pages append value '{"text":"Hello","color":"dark_aqua"}'

data modify storage help_msg:test test set value 1

data modify storage help_msg:test test set from entity @e[type=minecraft:item_frame,limit=1] Item.tag.pages

tellraw @s [{"nbt": "test","storage": "help_msg:test","interpret": true}]

execute store result score @s helpmsg run data get entity @s UUID[3] 1

scoreboard players operation @s helpmsg = @s helpmsg

