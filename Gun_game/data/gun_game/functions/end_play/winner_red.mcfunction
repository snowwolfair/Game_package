title @a title [{"text":"红队获胜!","color":"red","bold":true}]
title @a subtitle [{"text":"游戏结束!","color":"white"}]

scoreboard players add @s gun_winner 1

execute if score @s gun_winner matches 1 run advancement grant @s only gun_game:first_win

