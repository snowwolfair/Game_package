title @a title [{"text":"红队获胜!","color":"red","bold":true}]
title @a subtitle [{"text":"游戏结束!","color":"white"}]

scoreboard players add @a[tag=in_play,team=red] gun_winner 1

advancement grant @a[tag=in_play,team=red,scores={gun_winner=1}] only gun_game:first_win


