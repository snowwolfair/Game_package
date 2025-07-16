scoreboard players add @s backround_seconds 1

execute if score @s backround_seconds matches 60 run scoreboard players add @s backround_minutes 1
execute if score @s backround_seconds matches 60 run scoreboard players set @s backround_seconds 0

execute if score @s backround_minutes matches 60 run scoreboard players add @s backround_hours 1
execute if score @s backround_minutes matches 60 run scoreboard players set @s backround_minutes 0

scoreboard players operation @s hours = @s backround_hours
scoreboard players operation @s minutes = @s backround_minutes
scoreboard players operation @s seconds = @s backround_seconds

title @s actionbar [{"text": "您已在线","color": "white","bold": true},{"score":{"name": "@s","objective":"hours"},"color": "yellow"},{"text": "时","color": "white","bold": true},{"score":{"name": "@s","objective":"minutes"},"color": "yellow"},{"text": "分","color": "white","bold": true},{"score":{"name": "@s","objective":"seconds"},"color": "yellow"},{"text": "秒","color": "white","bold": true}]
#{"text": "当前金币: 20","color": "gold","bold": true},{"text": " || ","color": "dark_blue","strikethrough": true},