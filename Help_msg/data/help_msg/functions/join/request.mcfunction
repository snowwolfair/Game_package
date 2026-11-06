# 文件：join/request.mcfunction　执行者：点了「点击支援」的玩家（hm_join 为按钮号码）

# 记下点的是哪个号码
scoreboard players operation #want hm_tmp = @s hm_join
# 立刻清零，否则下一 tick 会重复执行
scoreboard players set @s hm_join 0
# 没在计时时没人清理重新进服的玩家，先清一次：下线过的求援者不该再被传送，残留的救援者标签也不该挡住点击
function help_msg:player/check_rejoin
# 自己正在求援，不能去救别人
execute if entity @s[tag=hm_req] run tellraw @s ["",{"text":"[救援信号] ","color":"red","bold":true},{"text":"你正在求援，不能前往救援","color":"red"}]
# 已经在救援中，不能同时去第二个地方
execute if entity @s[tag=hm_helper] run tellraw @s ["",{"text":"[救援信号] ","color":"red","bold":true},{"text":"你已经在救援中了","color":"red"}]
# 取当前游戏时间，用来判断信号是否已经到期
execute store result score #now hm_tmp run time query gametime
# 清掉上一次可能残留的临时标签
tag @a remove hm_match
# 给持有这个号码、且还没到期的在线求援者打上临时标签（每秒检查之间的空档也不会放行过期信号）
execute as @a[tag=hm_req] if score @s hm_slot = #want hm_tmp if score @s hm_cd > #now hm_tmp run tag @s add hm_match
# 找不到求援者：信号已经过期（包括点到很久以前的旧消息），或求援者已下线、死亡
execute unless entity @s[tag=hm_req] unless entity @s[tag=hm_helper] unless entity @a[tag=hm_match] run tellraw @s ["",{"text":"[救援信号] ","color":"red","bold":true},{"text":"救援信号已过期","color":"gray"}]
# 找到了：前往救援
execute unless entity @s[tag=hm_req] unless entity @s[tag=hm_helper] if entity @a[tag=hm_match] run function help_msg:join/accept
# 没有成为救援者（信号过期等）：重新开启按钮，还能点其他仍有效的求援
execute unless entity @s[tag=hm_helper] run scoreboard players enable @s hm_join
# 用完就去掉临时标签
tag @a remove hm_match
