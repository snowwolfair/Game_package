

execute as @s if entity @s[tag=game_player] run scoreboard players remove #count count 1

execute as @s run tag @s remove game_player

bossbar set hall players @a[tag=game_player]

#移除团队榜
scoreboard objectives setdisplay sidebar