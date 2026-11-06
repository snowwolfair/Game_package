# 文件：tick.mcfunction　由 #minecraft:tick 每 tick 执行
# 只放需要立即响应的点击处理；到期检查放在 help_msg:second，且只在有求援时运行
# 1.18 没有「玩家使用了 trigger」的事件，只能这样检查；平时只是遍历在线玩家比较一个分数，开销可以忽略

# 处理「点击支援」按钮的点击
execute as @a[scores={hm_join=1..}] run function help_msg:join/request
