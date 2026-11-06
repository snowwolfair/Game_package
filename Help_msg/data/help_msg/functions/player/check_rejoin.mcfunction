# 文件：player/check_rejoin.mcfunction　找出下线后又进服的玩家并清理
# 由 second、signal/use、join/request 在开头调用，保证用到玩家状态之前已经清理
# hm_leave 由游戏自动累加，这里只读它，不改它

# 没有基准值的玩家补上 0（加 0 不改变已有值），否则下一行的比较对他们总是不成立
scoreboard players add @a hm_lbase 0
# 退出次数比上次清理时多：下线后又进服了，清掉残留状态
execute as @a if score @s hm_leave > @s hm_lbase run function help_msg:player/rejoin
