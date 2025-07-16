execute if entity @s[tag=game_player,team=!] run schedule function gun_game:in_play/before_play 1t replace
execute if entity @s[tag=game_player,team=] run tellraw @s [{"text": "请选择队伍","color": "red","underlined": true}]
execute if entity @s[tag=!game_player] run tellraw @s [{"text":"你不是玩家","color": "red","underlined": true}]