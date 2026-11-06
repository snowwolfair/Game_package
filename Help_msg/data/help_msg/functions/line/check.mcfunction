# 文件：line/check.mcfunction　执行者：手持成书、右键了设置告示牌的玩家
# 拒绝空白页和过长的台词，台词只广播给救援成员，但太长会刷屏

# 把第 1 页复制出来，它是形如 {"text":"……"} 的 JSON 字符串
data modify storage help_msg:tmp page set from entity @s SelectedItem.tag.pages[0]
# 对字符串执行 data get 得到的是它的长度；外层 {"text":""} 占 11 个字符
execute store result score #len hm_tmp run data get storage help_msg:tmp page
# 先假设内容合格
scoreboard players set #ok hm_tmp 1
# 第 1 页是空白：不合格
execute if data storage help_msg:tmp {page:'{"text":""}'} run scoreboard players set #ok hm_tmp 0
# 空白页的提示
execute if score #ok hm_tmp matches 0 run tellraw @s ["",{"text":"[救援信号] ","color":"red","bold":true},{"text":"书的第 1 页是空的，请先写好出场台词","color":"red"}]
# 超过约 30 个字（11 + 30 = 41，换行等转义字符会多占几位）：不合格
execute if score #ok hm_tmp matches 1 if score #len hm_tmp matches 42.. run tellraw @s ["",{"text":"[救援信号] ","color":"red","bold":true},{"text":"出场台词太长了，请控制在 30 个字以内","color":"red"}]
# 过长时也标记为不合格
execute if score #ok hm_tmp matches 1 if score #len hm_tmp matches 42.. run scoreboard players set #ok hm_tmp 0
# 合格才保存
execute if score #ok hm_tmp matches 1 run function help_msg:line/save
