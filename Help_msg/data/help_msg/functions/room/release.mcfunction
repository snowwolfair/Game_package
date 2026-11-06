# 文件：room/release.mcfunction　执行者：要退出救援的救援者

# 去掉救援者标签，之后又能接收求援、使用信号弹
tag @s remove hm_helper
# 不再属于任何号码
scoreboard players set @s hm_slot 0
# 重新开启「点击支援」，还能点其他仍有效的求援
scoreboard players enable @s hm_join
# 告诉本人救援已结束
tellraw @s ["",{"text":"[救援信号] ","color":"red","bold":true},{"text":"救援已结束，你可以再次接收求援","color":"gray"}]
