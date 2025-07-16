#显示倒计时给玩家
bossbar set hide_bossbar players @a[tag=in_play]

#显示文字
title @a[tag=in_play] title [{"text":"游戏","color":"red"},{"text":"开始！","color":"white"}]
title @a[tag=in_play] subtitle [{"text":"玩的开心~","color":"white"}]

#执行倒计时程序
function in_play:hid_times/hid_time