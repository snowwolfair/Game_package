# 文件：signal/start.mcfunction　执行者：通过检查、要发出信号的玩家
# 号码在 1 到 20 之间轮流使用：一个号码要再过 19 次求援才会重复，
# 而信号只活 60 秒，所以点到旧消息时，那个号码几乎一定已经没人持有，会提示「已过期」

# 取上一次用过的号码的下一个
scoreboard players operation #pick hm_tmp = #last hm_slot
scoreboard players add #pick hm_tmp 1
# 超过 20 就回到 1
execute if score #pick hm_tmp matches 21.. run scoreboard players set #pick hm_tmp 1
# 无论这次成不成功都往前推，下次换下一个号码
scoreboard players operation #last hm_slot = #pick hm_tmp
# 先假设这个号码没人用
scoreboard players set #used hm_tmp 0
# 有在线求援者还拿着这个号码（60 秒内有 20 个求援才会发生），标记为已占用
execute as @a[tag=hm_req] if score @s hm_slot = #pick hm_tmp run scoreboard players set #used hm_tmp 1
# 被占用：不发信号，也不进入冷却
execute if score #used hm_tmp matches 1 run tellraw @s ["",{"text":"[救援信号] ","color":"red","bold":true},{"text":"当前求援的人太多，请稍后再试","color":"red"}]
# 号码空闲：正式发出信号
execute if score #used hm_tmp matches 0 run function help_msg:signal/open
