#重置所有玩家显示时间
scoreboard players reset * hours
scoreboard players reset * minutes
scoreboard players reset * seconds

#设置标志位为1
scoreboard players add * mark 1
scoreboard players remove @a mark 1

#全体玩家执行函数
execute as @a[scores={mark=1..}] run function severmode:timecount/restart
execute as @a[] run function severmode:timecount/minite

#每一秒循环
schedule function severmode:timecount/begin_time 1s replace