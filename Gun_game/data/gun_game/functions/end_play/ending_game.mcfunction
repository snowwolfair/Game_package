schedule clear gun_game:in_play/begin_play
schedule clear gun_game:in_play/time_count/time_count_down
schedule clear gun_game:in_play/yellow_kill
schedule clear gun_game:in_play/red_kill

#标记游戏结束
scoreboard players set #running gun_game_const 0

#判定胜负：一方全部离线时另一方获胜，否则按击杀数
execute if score #forfeit gun_game_const matches 1 run function gun_game:end_play/winner_yellow
execute if score #forfeit gun_game_const matches 2 run function gun_game:end_play/winner_red
execute if score #forfeit gun_game_const matches 0 if score Red_Team Team_kill_count > Yellow_Team Team_kill_count run function gun_game:end_play/winner_red
execute if score #forfeit gun_game_const matches 0 if score Yellow_Team Team_kill_count > Red_Team Team_kill_count run function gun_game:end_play/winner_yellow
execute if score #forfeit gun_game_const matches 0 if score Red_Team Team_kill_count = Yellow_Team Team_kill_count run title @a[tag=in_play] title [{"text":"平局!","color":"white","bold":true}]
execute if score #forfeit gun_game_const matches 0 if score Red_Team Team_kill_count = Yellow_Team Team_kill_count run title @a[tag=in_play] subtitle [{"text":"游戏结束!","color":"white"}]
scoreboard players set #forfeit gun_game_const 0

#重生点设回大厅
execute at @e[type=marker,tag=gg_hall_spawn,limit=1] run spawnpoint @a[tag=in_play] ~ ~ ~
kill @e[type=marker,tag=gg_hall_spawn]

#关闭死亡立即重生
gamerule doImmediateRespawn false
#打开掉落伤害
gamerule fallDamage true
#打开死亡掉落
gamerule keepInventory false

# 移除顶部倒计时
bossbar remove minecraft:gun_game_play_time
#清除背包
clear @a[tag=in_play]

#切回生存模式   
gamemode survival @a[tag=in_play]

#退出团队
team leave @a[tag=in_play]

#重置玩家状态
scoreboard players set @a[tag=in_play] new 0

#计分板清0
scoreboard players set #red_number Number_count 0
scoreboard players set Red_number Choice_team 0
scoreboard players set #yellow_number Number_count 0
scoreboard players set Yellow_number Choice_team 0

scoreboard players set @a[tag=in_play] red_kill_point 0
scoreboard players set @a[tag=in_play] yellow_kill_point 0
scoreboard players set * Team_kill_count 0
scoreboard players set @a[tag=in_play] kill_count 0
scoreboard players set @a[tag=in_play] death_point 0

#移除玩家标记
tag @a[tag=in_play] remove in_play

#回到大厅
function gun_game:go_hall/join_hall