#设置tag:参与者
execute as @a[team=yellow] at @s run tag @s add in_play
execute as @a[team=red] at @s run tag @s add in_play

#标记游戏进行中
scoreboard players set #running gun_game_const 1
scoreboard players set #forfeit gun_game_const 0

#记录本局局号
scoreboard players add #round gun_game_const 1
scoreboard players operation @a[tag=in_play] gg_round = #round gun_game_const

#传送到各队出生点并设置重生点
tp @a[tag=in_play,team=red] 408 64 -156
spawnpoint @a[tag=in_play,team=red] 408 64 -156
tp @a[tag=in_play,team=yellow] 442 61 -310
spawnpoint @a[tag=in_play,team=yellow] 442 61 -310

# execute as @a[team=yellow] at @s run tag @s remove game_player 
# execute as @a[team=red] at @s run tag @s remove game_player

#给在游戏的玩家移除大厅欢迎信息
bossbar remove hall

#移除团队榜
scoreboard objectives setdisplay sidebar

#死亡后立即重生
gamerule doImmediateRespawn true
#免疫摔落伤害
gamerule fallDamage false
#死亡不掉落
gamerule keepInventory true

#切换为冒险模式
gamemode adventure @a[tag=in_play]

#设置击杀榜
scoreboard objectives setdisplay sidebar kill_count

#设置击杀计数
schedule function gun_game:in_play/red_kill 1t replace
schedule function gun_game:in_play/yellow_kill 1t replace

#开始游戏计时
schedule function gun_game:in_play/time_count/game_play_time 1t replace

#给予初始物品
give @a[tag=in_play] tacz:modern_kinetic_gun{GunFireMode:"SEMI",GunId:"tacz:glock_17",GunCurrentAmmoCount:18} 1
give @a[tag=in_play] tacz:ammo{AmmoId:"tacz:9mm"} 100
give @a[tag=in_play] minecraft:diamond{display:{Name:'{"text":"积分"}',Lore:['{"text":"军事演习唯一指定通用品，需要在军需官处换成货币","color":"purple"}']},Unbreakable:1b} 2

#给予初始装备
item replace entity @a[tag=in_play,team=red] armor.head with minecraft:leather_helmet{display:{Name:'{"text":"军帽"}',Lore:['{"text":"军事演习唯一指定装备","color":"purple"}'],color:11546150},Unbreakable:1b} 1
item replace entity @a[tag=in_play,team=red] armor.chest with minecraft:leather_chestplate{display:{Name:'{"text":"军衣"}',Lore:['{"text":"军事演习唯一指定装备","color":"purple"}'],color:11546150},Unbreakable:1b} 1
item replace entity @a[tag=in_play,team=red] armor.legs with minecraft:leather_leggings{display:{Name:'{"text":"军裤"}',Lore:['{"text":"军事演习唯一指定装备","color":"purple"}'],color:11546150},Unbreakable:1b} 1
item replace entity @a[tag=in_play,team=red] armor.feet with minecraft:leather_boots{display:{Name:'{"text":"军靴"}',Lore:['{"text":"军事演习唯一指定装备","color":"purple"}'],color:11546150},Unbreakable:1b} 1


item replace entity @a[tag=in_play,team=yellow] armor.head with minecraft:leather_helmet{display:{Name:'{"text":"军帽"}',Lore:['{"text":"军事演习唯一指定装备","color":"purple"}'],color:16701501},Unbreakable:1b} 1
item replace entity @a[tag=in_play,team=yellow] armor.chest with minecraft:leather_chestplate{display:{Name:'{"text":"军衣"}',Lore:['{"text":"军事演习唯一指定装备","color":"purple"}'],color:16701501},Unbreakable:1b} 1
item replace entity @a[tag=in_play,team=yellow] armor.legs with minecraft:leather_leggings{display:{Name:'{"text":"军裤"}',Lore:['{"text":"军事演习唯一指定装备","color":"purple"}'],color:16701501},Unbreakable:1b} 1
item replace entity @a[tag=in_play,team=yellow] armor.feet with minecraft:leather_boots{display:{Name:'{"text":"军靴"}',Lore:['{"text":"军事演习唯一指定装备","color":"purple"}'],color:16701501},Unbreakable:1b} 1


#进入地图生成阶段
function gun_game:in_play/begin_play

