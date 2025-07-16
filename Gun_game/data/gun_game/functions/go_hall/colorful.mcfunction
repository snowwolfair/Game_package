execute if score #change_time colorful_bossbar matches 0 run scoreboard players set #change_time colorful_bossbar 7
execute if score #change_time colorful_bossbar matches 0.. run scoreboard players remove #change_time colorful_bossbar 1

#execute if score #change_time colorful_bossbar matches 6 run say 1
#execute if score #change_time colorful_bossbar matches 5 run say 2
#execute if score #change_time colorful_bossbar matches 4 run say 3
#execute if score #change_time colorful_bossbar matches 3 run say 14
#execute if score #change_time colorful_bossbar matches 2 run say 5
#execute if score #change_time colorful_bossbar matches 1 run say 6

execute if score #change_time colorful_bossbar matches 6 run bossbar set hall color blue
execute if score #change_time colorful_bossbar matches 5 run bossbar set hall color green
execute if score #change_time colorful_bossbar matches 4 run bossbar set hall color red
execute if score #change_time colorful_bossbar matches 3 run bossbar set hall color pink
execute if score #change_time colorful_bossbar matches 2 run bossbar set hall color purple
execute if score #change_time colorful_bossbar matches 1 run bossbar set hall color yellow

execute if score #change_time colorful_bossbar matches 0.. run schedule function gun_game:go_hall/colorful 5s replace