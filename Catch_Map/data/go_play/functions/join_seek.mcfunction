#如果更换阵营实施的函数
execute if entity @a[x=32,y=63,z=45,dx=1,dy=1,dz=1,team=hide] run function go_play:change_seeker
#execute if entity @a[x=,y=,z=,dx=1,dy=1,dz=1,team=hide] run function go_play:change_seeker
execute if entity @a[team=!seek,scores={seek_score=1}] run function go_play:change_seeker
#加入队伍
execute run team join seek @a[x=32,y=63,z=45,dx=1,dy=1,dz=1,team=!seek]

#增加侧边栏计数
scoreboard players add #seek_number Number_count 1
scoreboard players add Seeker_number Choice_team 1

#显示加入消息
execute if entity @a[team=seek,scores={new=0}] run tellraw @a[tag=game_player] [{"selector":"@a[team=seek,scores={new=0}]"},{"text":"加入了","color":"wight"},{"text":"寻找者","color":"red"},{"text":"团队！","color":"wight"}]

#设置new标识为1
scoreboard players set @a[team=seek] new 1

#添加寻找者标签

#execute run tag @a[x=21,y=125,z=42,dx=2,dy=2,dz=5,tag=!Seeker] add Seeker

