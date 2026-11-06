# 文件：room/check_helper.mcfunction　执行者：救援者（每秒由 second 调用）
# 求援者到期、死亡或下线后，对应号码就找不到在线求援者，救援者随即退出

# 记下这名救援者所属的号码
scoreboard players operation #room hm_tmp = @s hm_slot
# 先假设求援已经不在
scoreboard players set #alive hm_tmp 0
# 有同号码的在线求援者，说明求援还在
execute as @a[tag=hm_req] if score @s hm_slot = #room hm_tmp run scoreboard players set #alive hm_tmp 1
# 求援已经不在：退出救援
execute if score #alive hm_tmp matches 0 run function help_msg:room/release
