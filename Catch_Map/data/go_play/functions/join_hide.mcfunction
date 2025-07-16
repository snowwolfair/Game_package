#如果更换阵营实施的函数
execute if entity @a[x=31,y=63,z=41,dx=1,dy=1,dz=1,team=seek] run function go_play:change_hider

#加入队伍
execute run team join hide @a[x=31,y=63,z=41,dx=1,dy=1,dz=1,team=!hide]
#增加侧边栏计数
scoreboard players add #hide_number Number_count 1
scoreboard players add Hider_number Choice_team 1
tellraw @a[tag=game_player] [{"selector":"@a[team=hide,scores={new=0}]"},{"text":"加入了","color":"wight"},{"text":"躲藏者","color":"green"},{"text":"团队！","color":"wight"}]
#设置new标识为1
scoreboard players set @a[team=hide] new 1

#添加躲藏者者标签

#execute run tag @a[tag=!Hider] add Hider
#execute run tag @a[x=21,y=125,z=35,dx=2,dy=2,dz=5,tag=!Hider] add Hider



