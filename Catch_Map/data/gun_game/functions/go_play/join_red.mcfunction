team join red @s

#增加侧边栏计数
scoreboard players add #red_number Number_count 1
scoreboard players add Red_number Choice_team 1

tellraw @a[tag=game_player] [{"selector":"@a[team=red,scores={new=0}]"},{"text":"加入了","color":"green"},{"text":"红队","color":"red"}]

#设置new标识为1
scoreboard players set @a[team=red] new 1

spawnpoint @s 408 64 -156

#添加躲藏者者标签

#execute run tag @a[tag=!Hider] add Hider
#execute run tag @a[x=21,y=125,z=35,dx=2,dy=2,dz=5,tag=!Hider] add Hider



