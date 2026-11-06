# 文件：second.mcfunction　只在有求援时每秒执行一次
# 由 signal/open 启动；结尾只在还有在线求援者时预约下一次，最后一个求援结束后就停下

# 取当前游戏时间（tick），所有到期判断都和它比较，下线期间也照常流逝
execute store result score #now hm_tmp run time query gametime
# 下线后又进服的玩家：清掉下线前残留的状态
function help_msg:player/check_rejoin
# 信号到期（结束时刻不晚于现在）：结束求援
execute as @a[tag=hm_req] if score @s hm_cd <= #now hm_tmp run function help_msg:signal/close
# 求援者死亡（死亡次数比发出信号时多）：结束求援，免得救援者被传到重生点；hm_death 只读不改
execute as @a[tag=hm_req] if score @s hm_death > @s hm_dbase run function help_msg:signal/close
# 救援者对应的求援已经不在（到期、死亡、下线），让他退出救援
execute as @a[tag=hm_helper] run function help_msg:room/check_helper
# 还有在线求援者才继续；没有时救援者也已在上一行全部释放，循环到此停止
execute if entity @a[tag=hm_req] run schedule function help_msg:second 1s replace
