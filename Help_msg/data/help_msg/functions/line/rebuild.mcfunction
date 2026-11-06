# 文件：line/rebuild.mcfunction　递归，每次处理 help_msg:tmp list 的第一条
# 调用前要设置好 #want hm_tmp（要去掉的编号）和 new（空列表）

# 取出第一条的编号
execute store result score #cur hm_tmp run data get storage help_msg:tmp list[0].id
# 是别人的条目：原样搬进新列表；是本人的就不搬，等于删掉
execute unless score #cur hm_tmp = #want hm_tmp run data modify storage help_msg:tmp new append from storage help_msg:tmp list[0]
# 这一条处理完，从待处理列表里删掉
data remove storage help_msg:tmp list[0]
# 还有剩余就继续处理下一条
execute if data storage help_msg:tmp list[0] run function help_msg:line/rebuild
