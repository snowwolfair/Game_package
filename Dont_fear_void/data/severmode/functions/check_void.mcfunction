# 把末地非创造/旁观玩家的Y坐标*100存储到hight_void计分板
execute in minecraft:the_end as @a[distance=0..,gamemode=!creative,gamemode=!spectator] store result score @s hight_void run data get entity @s Pos[1] 100
# 选择 posY < 0 的玩家；不使用 at @s，保留 tick 默认的世界出生点坐标
execute in minecraft:the_end as @a[distance=0..,gamemode=!creative,gamemode=!spectator] if score @s hight_void < #void hight_void run function severmode:fly_player
