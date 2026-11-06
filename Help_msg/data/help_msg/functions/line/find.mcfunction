# 文件：line/find.mcfunction　按 #want hm_tmp 里的编号查找出场台词
# 结果放在 storage help_msg:tmp found.join；没有设置过的人使用默认台词

# 先填入默认台词，找到本人条目后再覆盖
data modify storage help_msg:tmp found set value {join:'{"text":"前来支援！","color":"aqua"}'}
# 复制一份存档作为待查列表，原存档保持不动
data modify storage help_msg:tmp list set from storage help_msg:data lines
# 列表不为空才开始查找
execute if data storage help_msg:tmp list[0] run function help_msg:line/find_step
