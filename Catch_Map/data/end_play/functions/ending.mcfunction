#关闭死亡立即重生
gamerule doImmediateRespawn false
#打开掉落伤害
gamerule fallDamage true

#切回生存模式   
gamemode survival @a[tag=in_play]

#清除药水效果
effect clear @a[team=hide,tag=in_play]

#清除游戏装备
clear @a[tag=in_play]

#清除所有实体
kill @e[tag=game_use]

#退出团队
team leave @a[team=seek,tag=in_play]
team leave @a[team=hide,tag=in_play]

#重置玩家状态
scoreboard players set @a[tag=in_play] new 0
bossbar remove seek_bossbar
#随机选择器清0
scoreboard players set @a[tag=in_play] random_select 0
scoreboard players set @a[tag=in_play] block_count 0
scoreboard players set #grass_block block_count 0
scoreboard players set #oak_leaves block_count 0
scoreboard players set #sand block_count 0
#计分板清0
scoreboard players set #hide_number Number_count 0
scoreboard players set Hider_number Choice_team 0
scoreboard players set #seek_number Number_count 0
scoreboard players set Seeker_number Choice_team 0
scoreboard players set @a[tag=in_play] seek_score 0

#停止方程循环
schedule clear in_play:arrow_rule

#重置玩家位置
teleport @a[tag=in_play] 35 67 36

#移除玩家标记
tag @a[tag=in_play] remove in_play

#回到大厅
function go_hall:join_hall