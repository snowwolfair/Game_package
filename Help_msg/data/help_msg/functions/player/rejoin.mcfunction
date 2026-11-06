# 文件：player/rejoin.mcfunction　执行者：下线后又进服的玩家（由 player/check_rejoin 调用）
# 下线就算求援结束，残留的状态全部作废；冷却按游戏时间计算，不用处理

# 去掉求援者标签
tag @s remove hm_req
# 去掉救援者标签
tag @s remove hm_helper
# 去掉可能残留的临时标签
tag @s remove hm_match
tag @s remove hm_room
# 不再持有任何号码
scoreboard players set @s hm_slot 0
# 把基准更新为当前退出次数（不改 hm_leave 本身），下次下线再进服时才会再执行这里
scoreboard players operation @s hm_lbase = @s hm_leave
