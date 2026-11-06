# 文件：signal/close.mcfunction　执行者：求援者（信号到期或死亡时调用）
# 只清理求援者本人，对应的救援者在同一次 second 检查的 room/check_helper 里自动退出
# 不改 hm_cd：死亡提前结束时，冷却仍要等到发出后 60 秒

# 告诉所有人这次求援已结束
tellraw @a ["",{"text":"[救援信号] ","color":"red","bold":true},{"selector":"@s","color":"gold"},{"text":" 的求援已结束","color":"gray"}]
# 去掉求援者标签
tag @s remove hm_req
# 归还按钮号码
scoreboard players set @s hm_slot 0
