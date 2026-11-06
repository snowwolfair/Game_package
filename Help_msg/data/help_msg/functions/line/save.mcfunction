# 文件：line/save.mcfunction　执行者：要保存出场台词的玩家（由 line/check 调用，台词已在 help_msg:tmp page）
# 流程：把旧列表里除本人以外的条目搬进新列表，再把本人的新条目加到末尾

# 要去掉的编号是本人的 hm_id，line/rebuild 会用 #want 比较
scoreboard players operation #want hm_tmp = @s hm_id
# 复制一份现有列表作为待处理的列表，原列表在处理完成前保持不动
data modify storage help_msg:tmp list set from storage help_msg:data lines
# 新列表从空开始
data modify storage help_msg:tmp new set value []
# 列表不为空时才开始递归，本人的旧条目会被丢弃
execute if data storage help_msg:tmp list[0] run function help_msg:line/rebuild
# 本人的新条目，先清空
data modify storage help_msg:tmp entry set value {}
# 放入新台词
data modify storage help_msg:tmp entry.join set from storage help_msg:tmp page
# 写入本人编号，以后按它查找
execute store result storage help_msg:tmp entry.id int 1 run scoreboard players get @s hm_id
# 把本人的条目加到新列表末尾
data modify storage help_msg:tmp new append from storage help_msg:tmp entry
# 用新列表覆盖存档，这样每个编号只会有一条
data modify storage help_msg:data lines set from storage help_msg:tmp new
# 预览：告诉本人出场台词已保存
tellraw @s ["",{"text":"[救援信号] ","color":"red","bold":true},{"text":"出场台词已保存：","color":"green"},{"nbt":"entry.join","storage":"help_msg:tmp","interpret":true}]
