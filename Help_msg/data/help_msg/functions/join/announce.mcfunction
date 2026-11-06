# 文件：join/announce.mcfunction　执行者：刚加入救援的玩家

# 先记下这次救援的号码；下面查台词会改掉 #want，所以单独存到 #room
scoreboard players operation #room hm_tmp = @s hm_slot
# 编号只在第一次设置台词时分配；还没有编号说明没设置过台词，提示一下设置方法
execute unless score @s hm_id matches 1.. run tellraw @s ["",{"text":"[救援信号] ","color":"red","bold":true},{"text":"想换掉默认台词？在书与笔第 1 页写好并署名，拿在主手，到「救援台词设置站」右键告示牌","color":"gray"}]
# 先设成 0（没有人的编号是 0）；救援者没有编号时，下一行复制会失败，0 保证查到的是默认台词而不是上一个人的
scoreboard players set #want hm_tmp 0
# 用救援者自己的编号查找出场台词
scoreboard players operation #want hm_tmp = @s hm_id
# 结果放在 help_msg:tmp found.join
function help_msg:line/find
# 清掉可能残留的临时标签
tag @a remove hm_room
# 同号码的求援者属于这次救援
execute as @a[tag=hm_req] if score @s hm_slot = #room hm_tmp run tag @s add hm_room
# 同号码的救援者（包括自己）也属于这次救援
execute as @a[tag=hm_helper] if score @s hm_slot = #room hm_tmp run tag @s add hm_room
# 只在这次救援的成员中广播出场台词
tellraw @a[tag=hm_room] ["",{"text":"[救援信号] ","color":"red","bold":true},{"selector":"@s","color":"dark_aqua"},{"text":"：","color":"gray"},{"nbt":"found.join","storage":"help_msg:tmp","interpret":true}]
# 用完就去掉临时标签
tag @a remove hm_room
