# 文件：signal/use.mcfunction　执行者：对方块使用了救援信号弹的玩家（进度 help_sign 的奖励）
# hm_cd 存的是结束时刻（游戏时间）：信号和冷却都在发出后 60 秒结束，下线期间照常流逝

# 先撤销进度，否则同一个玩家下次使用信号弹时不会再触发
advancement revoke @s only help_msg:help_sign
# 取当前游戏时间
execute store result score #now hm_tmp run time query gametime
# 没在计时时没人清理重新进服的玩家，在这里先清一次，免得下线前的状态残留
function help_msg:player/check_rejoin
# 信号刚好到期、每秒检查还没轮到：先把它结束掉，免得状态残留
execute if entity @s[tag=hm_req] if score @s hm_cd <= #now hm_tmp run function help_msg:signal/close
# 冷却中：剩余 tick = 结束时刻 - 现在
execute if score @s hm_cd > #now hm_tmp run scoreboard players operation #sec hm_tmp = @s hm_cd
execute if score @s hm_cd > #now hm_tmp run scoreboard players operation #sec hm_tmp -= #now hm_tmp
# 加 19 再除以 20，向上取整成秒，避免显示「还需 0 秒」
execute if score @s hm_cd > #now hm_tmp run scoreboard players add #sec hm_tmp 19
execute if score @s hm_cd > #now hm_tmp run scoreboard players operation #sec hm_tmp /= #20 hm_tmp
# 告诉玩家还要等多少秒；1.18 没有 return，所以后面的分支都要再加上 unless 条件
execute if score @s hm_cd > #now hm_tmp run tellraw @s ["",{"text":"[救援信号] ","color":"red","bold":true},{"text":"信号弹冷却中，还需 ","color":"red"},{"score":{"name":"#sec","objective":"hm_tmp"},"color":"yellow"},{"text":" 秒","color":"red"}]
# 正在救援别人时不能发信号
execute unless score @s hm_cd > #now hm_tmp if entity @s[tag=hm_helper] run tellraw @s ["",{"text":"[救援信号] ","color":"red","bold":true},{"text":"你正在救援中，无法发出信号","color":"red"}]
# 不在冷却、也不在救援中，才去分配按钮号码（冷却和信号等长，所以不必再单独检查是否正在求援）
execute unless score @s hm_cd > #now hm_tmp unless entity @s[tag=hm_helper] run function help_msg:signal/start
