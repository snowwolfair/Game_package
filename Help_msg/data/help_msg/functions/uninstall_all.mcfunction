# 文件：uninstall_all.mcfunction　彻底卸载：/function help_msg:uninstall_all
# 会清掉所有人的编号和个人消息，无法恢复

# 先做普通卸载
function help_msg:uninstall
# 删除永久编号（包括 #next 计数器）
scoreboard objectives remove hm_id
# 删除所有人的求援消息和出场台词
data remove storage help_msg:data lines
# 提示执行者
tellraw @s ["",{"text":"[救援信号] ","color":"red","bold":true},{"text":"编号和个人消息也已清空","color":"gray"}]
