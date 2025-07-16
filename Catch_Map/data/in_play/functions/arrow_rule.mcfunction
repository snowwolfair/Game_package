execute as @e[type=arrow] run data modify entity @s life set value 1000
execute as @e[type=arrow] run data modify entity @s pickup set value 2
schedule function in_play:arrow_rule 201t replace