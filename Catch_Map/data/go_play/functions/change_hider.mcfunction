#减少另一队计分板
scoreboard players remove Seeker_number Choice_team 1
scoreboard players remove #seek_number Number_count 1
#设置new标识为0
scoreboard players set @a[team=seek] new 0
#移除其他队伍
team leave @a[team=seek]
#移除其他队伍tag
#tag @a[x=21,y=125,z=42,dx=2,dy=2,dz=5,tag=Seeker] remove Seeker


#427 79 -228


