#释放寻找者
teleport @a[tag=in_play,team=seek] 25 130 49

#清除躲藏倒计时
bossbar remove hide_bossbar

#显示倒计时给玩家
bossbar set seek_bossbar players @a[tag=in_play]

#显示文字
title @a[tag=in_play] title [{"text":"寻找者","color":"red"},{"text":"已释放！","color":"white"}]

#执行倒计时程序
function in_play:sek_times/sek_time