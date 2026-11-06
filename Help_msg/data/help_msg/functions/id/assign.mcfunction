# 文件：id/assign.mcfunction　执行者：第一次右键台词设置站、还没有 hm_id 的玩家（由 line/set 调用）
# 编号一旦分配就不再改变，出场台词按它存档；只有设置台词时才需要编号，所以不在进服时分配

# 全服计数器加 1，保证每个人领到的编号都不同
scoreboard players add #next hm_id 1
# 把计数器的当前值复制给本人，成为他的永久编号
scoreboard players operation @s hm_id = #next hm_id
