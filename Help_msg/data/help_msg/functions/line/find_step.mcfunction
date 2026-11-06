# 文件：line/find_step.mcfunction　递归，每次检查 help_msg:tmp list 的第一条

# 取出第一条的编号
execute store result score #cur hm_tmp run data get storage help_msg:tmp list[0].id
# 编号相同：用这一条的台词覆盖默认台词
execute if score #cur hm_tmp = #want hm_tmp run data modify storage help_msg:tmp found merge from storage help_msg:tmp list[0]
# 已经找到，清空待查列表，下面的递归就会停止
execute if score #cur hm_tmp = #want hm_tmp run data remove storage help_msg:tmp list
# 没找到：删掉第一条（列表已清空时这一句不会生效）
data remove storage help_msg:tmp list[0]
# 还有剩余就继续检查下一条
execute if data storage help_msg:tmp list[0] run function help_msg:line/find_step
