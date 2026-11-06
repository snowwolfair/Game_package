# 文件：line/set.mcfunction　执行者：右键「救援台词设置站」告示牌的玩家
# 告示牌上的命令按服务器权限执行，@s 仍是点击的玩家，所以玩家不需要会用命令
#
# 设置站由 OP 手动放置：站在要放的位置，在聊天栏执行下面这条命令（不到 256 字符，可直接输入）
#   rotation 决定文字朝向：0 朝南、4 朝西、8 朝北、12 朝东
#   必须放在出生点保护范围（spawn-protection）之外，否则非 OP 右键不了
#
# /setblock ~ ~ ~ minecraft:oak_sign[rotation=0]{GlowingText:1b,Text1:'{"text":"救援台词设置站","color":"dark_red","clickEvent":{"action":"run_command","value":"/function help_msg:line/set"}}',Text2:'{"text":"主手拿署名的成书"}',Text3:'{"text":"右键这块告示牌"}'}

# 第一次设置台词的人还没有永久编号，先领一个；台词按编号保存
execute unless score @s hm_id matches 1.. run function help_msg:id/assign
# 主手不是有内容的成书：提示用法（未署名的书与笔没有可读的页面）
execute unless data entity @s SelectedItem{id:"minecraft:written_book"}.tag.pages[0] run tellraw @s ["",{"text":"[救援信号] ","color":"red","bold":true},{"text":"请把署名后的成书拿在主手，再右键告示牌，书的第 1 页会成为你的出场台词","color":"gray"}]
# 拿着成书：先检查内容，再保存
execute if data entity @s SelectedItem{id:"minecraft:written_book"}.tag.pages[0] run function help_msg:line/check
