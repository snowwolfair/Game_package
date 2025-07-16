#设置tag:参与者
execute as @a[team=seek] at @s run tag @s add in_play
execute as @a[team=hide] at @s run tag @s add in_play
#给在游戏的玩家移除大厅欢迎信息
bossbar remove hall

#死亡后立即重生
gamerule doImmediateRespawn true
#免疫摔落伤害
gamerule fallDamage false
#死亡不掉落
gamerule keepInventory true

#切换为冒险模式
gamemode adventure @a[tag=in_play]

#设置方块选择器
scoreboard objectives add block_count dummy "Block Count"

#设置死亡计数器
scoreboard objectives add seek_score deathCount "Seek Score"
scoreboard players set @a[tag=in_play] seek_score 2

#创建随机选择器
scoreboard objectives add random_select dummy "Random Select"
scoreboard players set @a[tag=in_play,team=hide] random_select 0

#设置标签：初始
tag @a[tag=in_play] add loop1

#循环检测箭的NBT
schedule function in_play:arrow_rule 1t replace

#进入地图生成阶段
function in_play:begining

