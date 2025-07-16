execute as @a if data entity @s Inventory[{Slot:-106b}].tag.display.Lore run effect give @s speed 60 1
execute as @a unless data entity @s Inventory[{Slot:-106b}].tag.display.Lore run effect clear

data get entity @p Inventory

summon villager ~ ~ ~ {CustomName: '{"text":"军需官"}',NoAI: 1,CustomNameVisible: 1b,Invulnerable: 1b,Rotation: [230F, 0F],Offers: {Recipes: [{buy: {id: "minecraft:diamond",Count: 1,tag: {display: {Name: '{"text":"积分"}',Lore: ['{"text":"军事演习唯一指定通用品，需要在军需官处换成货币","color":"purple"}']},Unbreakable: 1}},maxUses: 99,sell: {id: "minecraft:gold_ingot",Count: 2,tag: {display: {Name: '{"text":"金币"}',Lore: ['{"text":"军事演习的货币，用来兑换枪械改造部件和防弹衣","color":"purple"}']}}}}, {buy: {id: "minecraft:diamond",Count: 1,tag: {display: {Name: '{"text":"积分"}',Lore: ['{"text":"军事演习唯一指定通用品，需要在军需官处换成货币","color":"purple"}']},Unbreakable:1}},maxUses: 99,sell: {id: "minecraft:iron_ingot",Count: 4,tag: {display: {Name: '{"text":"铁币"}',Lore: ['{"text":"军事演习的货币，用来兑换各种枪械","color":"purple"}']}}}}, {buy: {id: "minecraft:diamond",Count: 1,tag: {display: {Name: '{"text":"积分"}',Lore: ['{"text":"军事演习唯一指定通用品，需要在军需官处换成货币","color":"purple"}']},Unbreakable: 1}},maxUses: 99,sell: {id: "minecraft:copper_ingot",Count: 8,tag: {display: {Name: '{"text":"铜币"}',Lore: ['{"text":"军事演习的货币，用来兑换枪械弹药和手雷","color":"purple"}']}}}}, {buy: {id: "minecraft:copper_ingot",Count: 4,tag: {display: {Name: '{"text":"铜币"}',Lore: ['{"text":"军事演习的货币，用来兑换枪械弹药和手雷","color":"purple"}']}}}, maxUses: 99,sell: {id: "tacz:ammo",Count: 30, tag: {AmmoId:"tacz:9mm"}}},{buy: {id: "minecraft:coal",Count: 2,tag: {display: { Name: '{"text":"死亡积分"}',Lore: ['{"text":"别灰心，带着他换来的东西重返战场吧","color":"purple"}']},Unbreakable: 1}},maxUses: 99,sell: {id: "tacz:modern_kinetic_gun",Count: 1,tag: {GunId:"tacz:m249"}}}, {buy: {id: "minecraft:coal",Count: 1,tag: {display: {Name: '{"text":"死亡积分"}',Lore: ['{"text":"别灰心，带着他换来的东西重返战场吧","color":"purple"}']},Unbreakable: 1}},maxUses: 99,sell: {id: "tacz:ammo",Count: 30,tag:{AmmoId:"tacz:556x45"}}}]},VillagerData: {level: 99,profession: "minecraft:nitwit"}}


summon villager ~ ~ ~ {CustomName:'{"text":"弹药贩子"}',NoAI:1,CustomNameVisible:1b,Invulnerable:1b,Offers: {Recipes:[{buy:{id:"minecraft:copper_ingot",Count:1,tag:{display:{Name:'{"text":"铜币"}',Lore:['{"text":"军事演习的货币，用来兑换枪械弹药和手雷","color":"purple"}']}}},maxUses:99,sell:{id:"tacz:ammo",Count:20,tag:{AmmoId:"tacz:762x39"}}},{buy:{id:"minecraft:copper_ingot",Count:1,tag:{display:{Name:'{"text":"铜币"}',Lore:['{"text":"军事演习的货币，用来兑换枪械弹药和手雷","color":"purple"}']}}},maxUses:99,sell:{id:"tacz:ammo",Count:15,tag:{AmmoId:"tacz:68x51fury"}}},{buy:{id:"minecraft:copper_ingot",Count:1,tag:{display:{Name:'{"text":"铜币"}',Lore:['{"text":"军事演习的货币，用来兑换枪械弹药和手雷","color":"purple"}']}}},maxUses:99,sell:{id:"tacz:ammo",Count:5,tag:{AmmoId:"emxarms:x16sg"}}},{buy:{id:"minecraft:copper_ingot",Count:1,tag:{display:{Name:'{"text":"铜币"}',Lore:['{"text":"军事演习的货币，用来兑换枪械弹药和手雷","color":"purple"}']}}},maxUses:99,sell:{id:"tacz:ammo",Count:20,tag:{AmmoId:"tacz:45acp"}}},{buy:{id:"minecraft:copper_ingot",Count:1,tag:{display:{Name:'{"text":"铜币"}',Lore:['{"text":"军事演习的货币，用来兑换枪械弹药和手雷","color":"purple"}']}}},maxUses:99,sell:{id:"tacz:ammo",Count:4,tag:{AmmoId:"emxarms:1045x103"}}}, ]}, VillagerData:{level:99,profession:"minecraft:nitwit"}}

summon villager ~ ~ ~ {CustomName:'{"text":"黑市商人"}',NoAI:1,CustomNameVisible:1b,Invulnerable:1b,Offers: {Recipes:[{buy:{id:"minecraft:diamond",Count:3,tag:{display:{Name:'{"text":"积分"}',Lore:['{"text":"军事演习唯一指定通用品，需要在军需官处换成货币","color":"purple"}']},Unbreakable:1}},maxUses:99,sell:{id:"tac:m24",Count:1}},{buy:{id:"minecraft:diamond",Count:2,tag:{display:{Name:'{"text":"积分"}',Lore:['{"text":"军事演习唯一指定通用品，需要在军需官处换成货币","color":"purple"}']},Unbreakable:1}},maxUses:99,sell:{id:"tac:dp28",Count:1}} ]},VillagerData:{level:99,profession:"minecraft:nitwit"}}

summon villager ~ ~ ~ {CustomName:'{"text":"军火贩子"}',NoAI:1,CustomNameVisible:1b,Invulnerable:1b,Offers: {Recipes:[{buy:{id:"minecraft:iron_ingot",Count:4,tag:{display:{Name:'{"text":"铁币"}',Lore:['{"text":"军事演习的货币，用来兑换各种枪械","color":"purple"}']}}},maxUses:99,sell:{id:"tacz:modern_kinetic_gun",Count:1,tag:{GunId:"tacz:vector45"}}},{buy:{id:"minecraft:iron_ingot",Count:8,tag:{display:{Name:'{"text":"铁币"}',Lore:['{"text":"军事演习的货币，用来兑换各种枪械","color":"purple"}']}}},maxUses:99,sell:{id:"tacz:modern_kinetic_gun",Count:1,tag:{GunId:"classicr:ngsw_r_renewed"}}},{buy:{id:"minecraft:iron_ingot",Count:4,tag:{display:{Name:'{"text":"铁币"}',Lore:['{"text":"军事演习的货币，用来兑换各种枪械","color":"purple"}']}}},maxUses:99,sell:{id:"tacz:modern_kinetic_gun",Count:1,tag:{GunId:"tacz:ak47"}}}, ]},VillagerData:{level:99,profession:"minecraft:nitwit"}}

summon villager ~ ~ ~ {CustomName:'{"text":"配件工匠"}',NoAI:1,CustomNameVisible:1b,Invulnerable:1b,Offers: {Recipes:[{buy:{id:"minecraft:gold_ingot",Count:2,tag:{display:{Name:'{"text":"金币"}',Lore:['{"text":"军事演习的货币，用来兑换枪械改造部件和防弹衣","color":"purple"}']}}},maxUses:99,sell:{id:"tacz:attachment",Count:1,tag:{AttachmentId:"scope_acog_ta31"}}},{buy:{id:"minecraft:gold_ingot",Count:4,tag:{display:{Name:'{"text":"金币"}',Lore:['{"text":"军事演习的货币，用来兑换枪械改造部件和防弹衣","color":"purple"}']}}},maxUses:99,sell:{id:"tac:elcan_14x",Count:1}},{buy:{id:"minecraft:gold_ingot",Count:2,tag:{display:{Name:'{"text":"金币"}',Lore:['{"text":"军事演习的货币，用来兑换枪械改造部件和防弹衣","color":"purple"}']}}},maxUses:99,sell:{id:"tac:silencer",Count:1}},{buy:{id:"minecraft:gold_ingot",Count:2,tag:{display:{Name:'{"text":"金币"}',Lore:['{"text":"军事演习的货币，用来兑换枪械改造部件和防弹衣","color":"purple"}']}}},maxUses:99,sell:{id:"tac:pistol_silencer",Count:1}},{buy:{id:"minecraft:gold_ingot",Count:2,tag:{display:{Name:'{"text":"金币"}',Lore:['{"text":"军事演习的货币，用来兑换枪械改造部件和防弹衣","color":"purple"}']}}},maxUses:99,sell:{id:"tac:eotech_n",Count:1}},{buy:{id:"minecraft:gold_ingot",Count:2,tag:{display:{Name:'{"text":"金币"}',Lore:['{"text":"军事演习的货币，用来兑换枪械改造部件和防弹衣","color":"purple"}']}}},maxUses:99,sell:{id:"tac:ir_laser",Count:1}},{buy:{id:"minecraft:gold_ingot",Count:6,tag:{display:{Name:'{"text":"金币"}',Lore:['{"text":"军事演习的货币，用来兑换枪械改造部件和防弹衣","color":"purple"}']}}},maxUses:99,sell:{id:"tac:8x_scope",Count:1}},{buy:{id:"minecraft:gold_ingot",Count:2,tag:{display:{Name:'{"text":"金币"}',Lore:['{"text":"军事演习的货币，用来兑换枪械改造部件和防弹衣","color":"purple"}']}}},maxUses:99,sell:{id:"tac:aimpoint_t2",Count:1}} ]},VillagerData:{level:99,profession:"minecraft:nitwit"}}


team modify red color

scoreboard objectives add tmp dummy
scoreboard objectives add temp dummy

execute as @p if score @s tmp matches 1 if score @s temp matches 1 run say "你获得了军需官的积分1"

execute as @p run tellraw @s [{"selector": }]

#{buy:{id:"minecraft:diamond",Count:1,tag:{display:{Name:'{"text":"积分"}',Lore:['{"text":"军事演习唯一指定通用品，需要在军需官处换成货币","color":"purple"}']},Unbreakable:1}},maxUses:99,sell:{id:"minecraft:gold_ingot",Count:2,tag:{display:{Name:'{"text":"金币"}',Lore:['{"text":"军事演习的货币，用来兑换枪械改造部件和防弹衣","color":"purple"}']}}}}

#display:{Name:'{"text":"死亡积分"}',Lore:['{"text":"别灰心，带着他换来的东西重返战场吧","color":"purple"}']},Unbreakable:1

give @a minecraft:leather_boots{display:{color:16701501}} 1

give @a tacz:attachment{AttachmentId:"emxarms:sight_emx_array"} 1
give @a tacz:modern_kinetic_gun{GunId:"emxarms:emx_pmg90"} 1
give @a tacz:ammo{AmmoId:"emxarms:1045x103"} 1


setblock ~ ~1 ~ minecraft:oak_wall_sign[]{Text1: '{"clickEvent":{"action":"run_command","value":"/execute as @p run function go_play:before_join_red"},"text":"加入红队"}',Text3: '{"text":"请站到红色混凝土上","color":"white"}',Text4: '{"text":"点击告示牌","color":"white"}',facing:west}
# tacz:glock_17 9mm

setblock ~ ~1 ~ minecraft:oak_wall_sign{Text1: '{"clickEvent":{"action":"run_command","value":"/execute as @p run function gun_game:go_hall/join_hall"},"text":"join game"}',Text2: '{"clickEvent":{"action":"run_command","value":"/execute as @p run function gun_game:go_hall/show_msg"},"text":""}'}
setblock ~ ~1 ~ minecraft:oak_wall_sign{Text1: '{"clickEvent":{"action":"run_command","value":"/execute as @p run function gun_game:end_play/ending_game"},"text":"leave game"}',Text2: '{"clickEvent":{"action":"run_command","value":"/execute as @p run function end_play:eshow_msg"},"text":""}'}


execute as @a at @a run say hello world!

tellraw @s [{"score":{"name":"Dragon_Flight","objective": "kill_count"}}]

execute as @a run tag @s remove tt
execute as @r run function test213:test1

summon villager ~ ~ ~ {CustomName:'{"text":"军需官"}',NoAI:true,CustomNameVisible: 1b,Invulnerable: 1b,Rotation: [230F, 0F],Offers: {Recipes: [{buy: {id: "minecraft:diamond",Count: 1,tag: {display: {Name: '{"text":"积分"}',Lore: ['{"text":"军事演习唯一指定通用品，需要在军需官处换成货币","color":"purple"}']},Unbreakable: true}},maxUses: 99,sell: {id: "minecraft:gold_ingot",Count: 2,tag: {display: {Name: '{"text":"金币"}',Lore: ['{"text":"军事演习的货币，用来兑换枪械改造部件和防弹衣","color":"purple"}']}}}}]},VillagerData: {level: 99,profession: "minecraft:nitwit"}}

