# 文件：uninstall.mcfunction　卸载前由管理员执行：/function help_msg:uninstall
# 保留 hm_id 和 storage help_msg:data：编号和消息是一一对应的，只删其中一个会让重装后的人读到别人的消息
# 要连编号和消息一起清掉，请改用 help_msg:uninstall_all

# 停止每秒一次的检查循环，否则禁用前它还会继续执行
schedule clear help_msg:second
# 去掉所有在线玩家身上的状态标签
tag @a remove hm_req
tag @a remove hm_helper
tag @a remove hm_match
tag @a remove hm_room
# 删除按钮号码
scoreboard objectives remove hm_slot
# 删除信号和冷却的结束时刻
scoreboard objectives remove hm_cd
# 删除临时分数
scoreboard objectives remove hm_tmp
# 删除「点击支援」触发器
scoreboard objectives remove hm_join
# 删除死亡检测
scoreboard objectives remove hm_death
# 删除退出检测
scoreboard objectives remove hm_leave
# 删除死亡和退出的基准值
scoreboard objectives remove hm_dbase
scoreboard objectives remove hm_lbase
# 清掉计算用的临时数据
data remove storage help_msg:tmp list
data remove storage help_msg:tmp new
data remove storage help_msg:tmp entry
data remove storage help_msg:tmp found
data remove storage help_msg:tmp page
# 提示执行者，并说明接下来要禁用数据包
tellraw @s ["",{"text":"[救援信号] ","color":"red","bold":true},{"text":"已卸载（保留了编号和个人消息），请执行 /datapack disable 禁用本数据包","color":"gray"}]
