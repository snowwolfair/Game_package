title @a title [{"text":"黄队获胜!","color":"yellow","bold":true}]
title @a subtitle [{"text":"游戏结束!","color":"white"}]

scoreboard players add @a[tag=in_play,team=yellow] gun_winner 1

advancement grant @a[tag=in_play,team=yellow,scores={gun_winner=1}] only gun_game:first_win
