#添加tag:玩家
execute run tag @p add game_player

#添加大厅标题
execute run bossbar add minecraft:hall "Have fun!"
#修改大厅标题
execute run bossbar set minecraft:hall color yellow
execute run bossbar set minecraft:hall max 7
execute run bossbar set minecraft:hall value 7
execute run bossbar set minecraft:hall style notched_10

scoreboard objectives add colorful_bossbar dummy "Colorful Bossbar"

#大厅标题玩家可见
execute run bossbar set hall players @a[tag=game_player]

#创建队伍
team add red "红队"
team add yellow "黄队"

#设置队伍颜色
team modify red color red
team modify yellow color yellow

#设置队伍属性
team modify red nametagVisibility hideForOtherTeams
team modify yellow nametagVisibility hideForOtherTeams

#创建队伍计分板侧边栏
scoreboard objectives add Choice_team dummy "Team"
scoreboard objectives setdisplay sidebar Choice_team
scoreboard objectives add Number_count dummy "Number Count"

#创建红黄击杀榜
scoreboard objectives add red_kill_point teamkill.yellow

scoreboard objectives add yellow_kill_point teamkill.red

#创建死亡榜
scoreboard objectives add death_point deathCount

# scoreboard objectives add death_count dummy "死亡榜"

#创建击杀榜
scoreboard objectives add kill_count playerKillCount "击杀榜"

#创建团队击杀榜
scoreboard objectives add Team_kill_count dummy "team_kill"
scoreboard players set Red_Team Team_kill_count 0
scoreboard players set Yellow_Team Team_kill_count 0

#创建new标识
scoreboard objectives add new dummy "New"

#创建winner标识
scoreboard objectives add gun_winner dummy "Winner"

#执行颜色变换
scoreboard players set #change_time colorful_bossbar 7
schedule function gun_game:go_hall/colorful 1t
#scoreboard players add Seek_number Choice_team 1
#scoreboard players add Hide_number Choice_team 1
schedule function gun_game:go_play/join_msg 1t
