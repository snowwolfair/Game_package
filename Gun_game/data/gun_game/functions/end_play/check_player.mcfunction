execute as @s if entity @s[tag=game_player,team=] run schedule function gun_game:end_play/eshow_msg 1t replace
execute as @s if entity @s[tag=game_player,team=] run schedule function gun_game:end_play/leave_gun_game 2t replace

execute if entity @s[tag=game_player,team=!] run tellraw @s [{"text": "你已经加入了队伍，请结束游戏后再离开","color": "red","underlined": true}]
execute if entity @s[tag=!game_player] run tellraw @s [{"text": "你不是玩家","color": "red","underlined": true}]