team join yellow @s

#增加侧边栏计数
scoreboard players add #yellow_number Number_count 1
scoreboard players add Yellow_number Choice_team 1

#显示加入消息
tellraw @a[tag=game_player] [{"selector":"@a[team=yellow,scores={new=0}]"},{"text":"加入了","color":"green"},{"text":"黄队","color":"yellow"}]

#设置new标识为1
scoreboard players set @a[team=yellow] new 1

spawnpoint @s 442 61 -310

#添加寻找者标签

#execute run tag @a[x=21,y=125,z=42,dx=2,dy=2,dz=5,tag=!Seeker] add Seeker

