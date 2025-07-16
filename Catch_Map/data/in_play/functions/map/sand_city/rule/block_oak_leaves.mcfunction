#召唤tag=leave_A的盔甲架,树叶
execute if entity @a[tag=in_play,scores={random_select=2,block_count=1}] run summon minecraft:armor_stand ~ ~1 ~ {Tags:["leave_A","game_use"],Invulnerable:1b,Passengers:[{Tags:["leave_A","game_use"],CanPickUpLoot:0b,NoGravity:1b,OnGround:1b,FallDistance:1,Time:-99999,DropItem:0b,HurtEntities:0b,BlockState:{Name:"minecraft:oak_leaves"},id:"minecraft:falling_block"}],Invisible:1,ShowArms:1,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:true}

#召唤tag=leave_B的盔甲架,树叶
execute if entity @a[tag=in_play,scores={random_select=2,block_count=2}] run summon minecraft:armor_stand ~ ~1 ~ {Tags:["leave_B","game_use"],Invulnerable:1b,Passengers:[{Tags:["leave_B","game_use"],CanPickUpLoot:0b,NoGravity:1b,OnGround:1b,FallDistance:1,Time:-99999,DropItem:0b,HurtEntities:0b,BlockState:{Name:"minecraft:oak_leaves"},id:"minecraft:falling_block"}],Invisible:1,ShowArms:1,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:true}

#召唤tag=leave_C的盔甲架,树叶
execute if entity @a[tag=in_play,scores={random_select=2,block_count=3}] run summon minecraft:armor_stand ~ ~1 ~ {Tags:["leave_C","game_use"],Invulnerable:1b,Passengers:[{Tags:["leave_C","game_use"],CanPickUpLoot:0b,NoGravity:1b,OnGround:1b,FallDistance:1,Time:-99999,DropItem:0b,HurtEntities:0b,BlockState:{Name:"minecraft:oak_leaves"},id:"minecraft:falling_block"}],Invisible:1,ShowArms:1,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:true}

#召唤tag=leave_D的盔甲架,树叶
execute if entity @a[tag=in_play,scores={random_select=2,block_count=4}] run summon minecraft:armor_stand ~ ~1 ~ {Tags:["leave_D","game_use"],Invulnerable:1b,Passengers:[{Tags:["leave_D","game_use"],CanPickUpLoot:0b,NoGravity:1b,OnGround:1b,FallDistance:1,Time:-99999,DropItem:0b,HurtEntities:0b,BlockState:{Name:"minecraft:oak_leaves"},id:"minecraft:falling_block"}],Invisible:1,ShowArms:1,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:true}

#召唤tag=leave_E的盔甲架,树叶
execute if entity @a[tag=in_play,scores={random_select=2,block_count=5}] run summon minecraft:armor_stand ~ ~1 ~ {Tags:["leave_E","game_use"],Invulnerable:1b,Passengers:[{Tags:["leave_E","game_use"],CanPickUpLoot:0b,NoGravity:1b,OnGround:1b,FallDistance:1,Time:-99999,DropItem:0b,HurtEntities:0b,BlockState:{Name:"minecraft:oak_leaves"},id:"minecraft:falling_block"}],Invisible:1,ShowArms:1,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:true}

#替换最后一栏物品栏为树叶
execute as @a[tag=in_play,scores={random_select=2}] run item replace entity @s hotbar.8 with oak_leaves 1 

#执行传送方程
function in_play:map/sand_city/rule/teleport/oak_leave_teleport