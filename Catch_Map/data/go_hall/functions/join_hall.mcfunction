#传送至大厅
execute run teleport @p 35 67 36
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
execute if entity @a[tag=game_player] run bossbar set hall players @a[tag=game_player]
#添加躲藏倒计时
execute run bossbar add minecraft:hide_bossbar "Hiding Time"
execute run bossbar set minecraft:hide_bossbar color green
execute run bossbar set minecraft:hide_bossbar max 60
execute run bossbar set minecraft:hide_bossbar style notched_10
scoreboard objectives add hide_scorece dummy "TIME"
scoreboard players set #hide_time hide_scorece 60

#添加寻找倒计时
execute run bossbar add minecraft:seek_bossbar "Hunting Time!"
execute run bossbar set minecraft:seek_bossbar color red
execute run bossbar set minecraft:seek_bossbar max 300
execute run bossbar set minecraft:seek_bossbar style notched_20
scoreboard objectives add seek_scorece dummy "TIME"
scoreboard players set #seek_time seek_scorece 300

#创建队伍
execute run team add seek "Seekers"
execute run team add hide "Hiders"
#设置队伍前缀
execute run team modify seek prefix "[Seeker]" 
execute run team modify hide prefix "[Hider]"
#设置队伍颜色
execute run team modify seek color dark_red
execute run team modify hide color green
#创建队伍计分板侧边栏
scoreboard objectives add Choice_team dummy "Team"
scoreboard objectives setdisplay sidebar Choice_team
scoreboard objectives add Number_count dummy "Number Count"

#创建地图选择器
scoreboard objectives add select_map dummy "Select Map"
scoreboard players set #select_map select_map 1
#创建new标识
scoreboard objectives add new dummy "New"

#执行颜色变换
scoreboard players set #change_time colorful_bossbar 7
schedule function go_hall:colorful 1t
#scoreboard players add Seek_number Choice_team 1
#scoreboard players add Hide_number Choice_team 1


