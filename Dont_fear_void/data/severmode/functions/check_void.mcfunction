# 把玩家的Y坐标存储到hight_void计分板
execute as @a[nbt={Dimension:"minecraft:the_end"}] store result score @s hight_void run data get entity @s Pos[1] 100
# 选择 posY < -6400 的玩家（因为 -64 * 100 = -6400）
execute as @a if score @s hight_void < #void hight_void run function severmode:fly_player


