scoreboard players add #uid uuid 1 
tellraw @s [{"text": "你是今天第","color":"dark_blue"},{"score":{"name": "#uid","objective": "uuid"}},{"text": "个进入服务器"}]