# 文件：load.mcfunction　由 #minecraft:load 在加载和 /reload 时执行
# 这里只创建不存在的东西，不清空已有的编号和台词

# 永久身份编号；#next 是全服计数器
scoreboard objectives add hm_id dummy
# 求援期间借用的按钮号码 1 到 20，0 表示没有
scoreboard objectives add hm_slot dummy
# 信号和冷却的结束时刻（游戏时间 tick），两者都是 60 秒，共用一个分数
scoreboard objectives add hm_cd dummy
# 计算用的临时分数，只放 # 开头的假名
scoreboard objectives add hm_tmp dummy
# 「点击支援」按钮：/trigger hm_join set 号码，非 OP 也能用
scoreboard objectives add hm_join trigger
# 死亡次数（游戏自动累加，本数据包只读不写），用来在求援者死亡时结束求援
scoreboard objectives add hm_death deathCount
# 发出信号那一刻的死亡次数；之后 hm_death 比它大，说明求援者死过
scoreboard objectives add hm_dbase dummy
# 退出游戏次数（游戏自动累加，本数据包只读不写），玩家重新进服时用来清理残留状态
scoreboard objectives add hm_leave minecraft.custom:minecraft.leave_game
# 上次清理时的退出次数；hm_leave 比它大，说明玩家下线后又进服了
scoreboard objectives add hm_lbase dummy

# 1 秒 = 20 tick，换算剩余秒数时要用
scoreboard players set #20 hm_tmp 20
# 计数器不存在时设为 0；已存在则加 0，保持原值
scoreboard players add #next hm_id 0
# 上一次分配出去的按钮号码，用于轮流分配
scoreboard players add #last hm_slot 0

# 台词存档不存在时才初始化为空列表，重载不会清掉已保存的台词
execute unless data storage help_msg:data lines run data modify storage help_msg:data lines set value []

# 清掉旧版本留在 help_msg:test 里的数据
data remove storage help_msg:test test
data remove storage help_msg:test test1
data remove storage help_msg:test test2
data remove storage help_msg:test test3
data remove storage help_msg:test test4
data remove storage help_msg:test test5
data remove storage help_msg:test test6
data remove storage help_msg:test test7
data remove storage help_msg:test test8

# load 本身只在加载和 /reload 时执行一次；平时不计时，只有重载时恰好有人在求援，才把计时接上
execute if entity @a[tag=hm_req] run schedule function help_msg:second 1s replace

# 提示管理员加载成功；台词设置站的告示牌命令写在 line/set.mcfunction 的注释里
tellraw @a[gamemode=creative] ["",{"text":"[救援信号] ","color":"red","bold":true},{"text":"数据包已加载，使用 /function help_msg:give 领取信号弹","color":"gray"}]
