# 文件：join/accept.mcfunction　执行者：救援者；对应的求援者带有 hm_match 标签

# 标记为救援者，之后收不到新的求援，也不能使用信号弹
tag @s add hm_helper
# 记下所属求援的号码，用来广播台词，并在求援结束时自动退出
scoreboard players operation @s hm_slot = #want hm_tmp
# 以求援者的位置和维度为准传送，可以跨维度
execute at @a[tag=hm_match,limit=1] run tp @s ~ ~ ~
# 告诉救援者自己支援的是谁，号码被重复使用时也能马上发现
tellraw @s ["",{"text":"[救援信号] ","color":"red","bold":true},{"text":"你正在支援 ","color":"green"},{"selector":"@a[tag=hm_match]","color":"gold"}]
# 向这次救援的成员广播出场台词
function help_msg:join/announce
