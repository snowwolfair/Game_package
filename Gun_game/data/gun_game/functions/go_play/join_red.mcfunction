team join red @s

#增加侧边栏计数
scoreboard players add #red_number Number_count 1
scoreboard players add Red_number Choice_team 1
#记录入队时的局号，用于重进时判断队伍人数是否已被重置
scoreboard players operation @s gg_round = #round gun_game_const

tellraw @a[tag=game_player] [{"selector":"@s"},{"text":"加入了","color":"green"},{"text":"红队","color":"red"}]

#设置new标识为1
scoreboard players set @a[team=red] new 1

#添加躲藏者者标签

#execute run tag @a[tag=!Hider] add Hider
#execute run tag @a[x=21,y=125,z=35,dx=2,dy=2,dz=5,tag=!Hider] add Hider



