team join yellow @s

#增加侧边栏计数
scoreboard players add #yellow_number Number_count 1
scoreboard players add Yellow_number Choice_team 1
#记录入队时的局号，用于重进时判断队伍人数是否已被重置
scoreboard players operation @s gg_round = #round gun_game_const

#显示加入消息
tellraw @a[tag=game_player] [{"selector":"@s"},{"text":"加入了","color":"green"},{"text":"黄队","color":"yellow"}]

#设置new标识为1
scoreboard players set @a[team=yellow] new 1

#添加寻找者标签

#execute run tag @a[x=21,y=125,z=42,dx=2,dy=2,dz=5,tag=!Seeker] add Seeker

