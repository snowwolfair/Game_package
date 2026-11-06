# 文件：signal/open.mcfunction　执行者：发出信号的玩家，#pick 是空闲号码，#now 是当前游戏时间

# 把号码给求援者，按钮和救援者都用它找到这个人
scoreboard players operation @s hm_slot = #pick hm_tmp
# 标记为求援者
tag @s add hm_req
# 结束时刻 = 现在
scoreboard players operation @s hm_cd = #now hm_tmp
# 再加 60 秒（1200 tick）；信号在这时过期，冷却也在这时结束
scoreboard players add @s hm_cd 1200
# 记下发出信号这一刻的死亡次数作为基准（只读 hm_death，不改它）；先设 0，从没死过的人 hm_death 为空时复制会失败
scoreboard players set @s hm_dbase 0
scoreboard players operation @s hm_dbase = @s hm_death
# 为能收到求援的人开启「点击支援」（trigger 默认关闭，用过一次也会关闭）
scoreboard players enable @a[tag=!hm_req,tag=!hm_helper] hm_join
# 向可以接收求援的人发送带按钮的消息（文字固定，不可自定义）
function help_msg:signal/broadcast
# 开始每秒检查；已经在运行时 replace 只是把下一次推迟到 1 秒后，不会叠出两条
schedule function help_msg:second 1s replace
# 告诉求援者信号已发出
tellraw @s ["",{"text":"[救援信号] ","color":"red","bold":true},{"text":"求援信号已发出，60 秒内有效","color":"green"}]
