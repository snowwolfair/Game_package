# 文件：signal/broadcast.mcfunction　执行者：刚发出信号的求援者
# 1.18 没有宏，按钮里的号码只能写死，所以 20 个号码各写一行；每次求援只有一行条件成立
# 只发给不在救援中的人；文字固定为「玩家名 发送了求援信号 [点击支援]」，不可自定义

# 号码 1 的按钮
execute if score @s hm_slot matches 1 run tellraw @a[tag=!hm_req,tag=!hm_helper] ["",{"selector":"@s","color":"gold"},{"text":" 发送了求援信号 ","color":"red"},{"text":"[点击支援]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger hm_join set 1"},"hoverEvent":{"action":"show_text","contents":"点击传送到求援者身边（60 秒内有效）"}}]
# 号码 2 的按钮
execute if score @s hm_slot matches 2 run tellraw @a[tag=!hm_req,tag=!hm_helper] ["",{"selector":"@s","color":"gold"},{"text":" 发送了求援信号 ","color":"red"},{"text":"[点击支援]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger hm_join set 2"},"hoverEvent":{"action":"show_text","contents":"点击传送到求援者身边（60 秒内有效）"}}]
# 号码 3 的按钮
execute if score @s hm_slot matches 3 run tellraw @a[tag=!hm_req,tag=!hm_helper] ["",{"selector":"@s","color":"gold"},{"text":" 发送了求援信号 ","color":"red"},{"text":"[点击支援]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger hm_join set 3"},"hoverEvent":{"action":"show_text","contents":"点击传送到求援者身边（60 秒内有效）"}}]
# 号码 4 的按钮
execute if score @s hm_slot matches 4 run tellraw @a[tag=!hm_req,tag=!hm_helper] ["",{"selector":"@s","color":"gold"},{"text":" 发送了求援信号 ","color":"red"},{"text":"[点击支援]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger hm_join set 4"},"hoverEvent":{"action":"show_text","contents":"点击传送到求援者身边（60 秒内有效）"}}]
# 号码 5 的按钮
execute if score @s hm_slot matches 5 run tellraw @a[tag=!hm_req,tag=!hm_helper] ["",{"selector":"@s","color":"gold"},{"text":" 发送了求援信号 ","color":"red"},{"text":"[点击支援]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger hm_join set 5"},"hoverEvent":{"action":"show_text","contents":"点击传送到求援者身边（60 秒内有效）"}}]
# 号码 6 的按钮
execute if score @s hm_slot matches 6 run tellraw @a[tag=!hm_req,tag=!hm_helper] ["",{"selector":"@s","color":"gold"},{"text":" 发送了求援信号 ","color":"red"},{"text":"[点击支援]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger hm_join set 6"},"hoverEvent":{"action":"show_text","contents":"点击传送到求援者身边（60 秒内有效）"}}]
# 号码 7 的按钮
execute if score @s hm_slot matches 7 run tellraw @a[tag=!hm_req,tag=!hm_helper] ["",{"selector":"@s","color":"gold"},{"text":" 发送了求援信号 ","color":"red"},{"text":"[点击支援]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger hm_join set 7"},"hoverEvent":{"action":"show_text","contents":"点击传送到求援者身边（60 秒内有效）"}}]
# 号码 8 的按钮
execute if score @s hm_slot matches 8 run tellraw @a[tag=!hm_req,tag=!hm_helper] ["",{"selector":"@s","color":"gold"},{"text":" 发送了求援信号 ","color":"red"},{"text":"[点击支援]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger hm_join set 8"},"hoverEvent":{"action":"show_text","contents":"点击传送到求援者身边（60 秒内有效）"}}]
# 号码 9 的按钮
execute if score @s hm_slot matches 9 run tellraw @a[tag=!hm_req,tag=!hm_helper] ["",{"selector":"@s","color":"gold"},{"text":" 发送了求援信号 ","color":"red"},{"text":"[点击支援]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger hm_join set 9"},"hoverEvent":{"action":"show_text","contents":"点击传送到求援者身边（60 秒内有效）"}}]
# 号码 10 的按钮
execute if score @s hm_slot matches 10 run tellraw @a[tag=!hm_req,tag=!hm_helper] ["",{"selector":"@s","color":"gold"},{"text":" 发送了求援信号 ","color":"red"},{"text":"[点击支援]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger hm_join set 10"},"hoverEvent":{"action":"show_text","contents":"点击传送到求援者身边（60 秒内有效）"}}]
# 号码 11 的按钮
execute if score @s hm_slot matches 11 run tellraw @a[tag=!hm_req,tag=!hm_helper] ["",{"selector":"@s","color":"gold"},{"text":" 发送了求援信号 ","color":"red"},{"text":"[点击支援]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger hm_join set 11"},"hoverEvent":{"action":"show_text","contents":"点击传送到求援者身边（60 秒内有效）"}}]
# 号码 12 的按钮
execute if score @s hm_slot matches 12 run tellraw @a[tag=!hm_req,tag=!hm_helper] ["",{"selector":"@s","color":"gold"},{"text":" 发送了求援信号 ","color":"red"},{"text":"[点击支援]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger hm_join set 12"},"hoverEvent":{"action":"show_text","contents":"点击传送到求援者身边（60 秒内有效）"}}]
# 号码 13 的按钮
execute if score @s hm_slot matches 13 run tellraw @a[tag=!hm_req,tag=!hm_helper] ["",{"selector":"@s","color":"gold"},{"text":" 发送了求援信号 ","color":"red"},{"text":"[点击支援]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger hm_join set 13"},"hoverEvent":{"action":"show_text","contents":"点击传送到求援者身边（60 秒内有效）"}}]
# 号码 14 的按钮
execute if score @s hm_slot matches 14 run tellraw @a[tag=!hm_req,tag=!hm_helper] ["",{"selector":"@s","color":"gold"},{"text":" 发送了求援信号 ","color":"red"},{"text":"[点击支援]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger hm_join set 14"},"hoverEvent":{"action":"show_text","contents":"点击传送到求援者身边（60 秒内有效）"}}]
# 号码 15 的按钮
execute if score @s hm_slot matches 15 run tellraw @a[tag=!hm_req,tag=!hm_helper] ["",{"selector":"@s","color":"gold"},{"text":" 发送了求援信号 ","color":"red"},{"text":"[点击支援]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger hm_join set 15"},"hoverEvent":{"action":"show_text","contents":"点击传送到求援者身边（60 秒内有效）"}}]
# 号码 16 的按钮
execute if score @s hm_slot matches 16 run tellraw @a[tag=!hm_req,tag=!hm_helper] ["",{"selector":"@s","color":"gold"},{"text":" 发送了求援信号 ","color":"red"},{"text":"[点击支援]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger hm_join set 16"},"hoverEvent":{"action":"show_text","contents":"点击传送到求援者身边（60 秒内有效）"}}]
# 号码 17 的按钮
execute if score @s hm_slot matches 17 run tellraw @a[tag=!hm_req,tag=!hm_helper] ["",{"selector":"@s","color":"gold"},{"text":" 发送了求援信号 ","color":"red"},{"text":"[点击支援]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger hm_join set 17"},"hoverEvent":{"action":"show_text","contents":"点击传送到求援者身边（60 秒内有效）"}}]
# 号码 18 的按钮
execute if score @s hm_slot matches 18 run tellraw @a[tag=!hm_req,tag=!hm_helper] ["",{"selector":"@s","color":"gold"},{"text":" 发送了求援信号 ","color":"red"},{"text":"[点击支援]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger hm_join set 18"},"hoverEvent":{"action":"show_text","contents":"点击传送到求援者身边（60 秒内有效）"}}]
# 号码 19 的按钮
execute if score @s hm_slot matches 19 run tellraw @a[tag=!hm_req,tag=!hm_helper] ["",{"selector":"@s","color":"gold"},{"text":" 发送了求援信号 ","color":"red"},{"text":"[点击支援]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger hm_join set 19"},"hoverEvent":{"action":"show_text","contents":"点击传送到求援者身边（60 秒内有效）"}}]
# 号码 20 的按钮
execute if score @s hm_slot matches 20 run tellraw @a[tag=!hm_req,tag=!hm_helper] ["",{"selector":"@s","color":"gold"},{"text":" 发送了求援信号 ","color":"red"},{"text":"[点击支援]","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger hm_join set 20"},"hoverEvent":{"action":"show_text","contents":"点击传送到求援者身边（60 秒内有效）"}}]
