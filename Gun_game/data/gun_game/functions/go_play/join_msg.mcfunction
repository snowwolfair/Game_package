tellraw @a[tag=game_player] {"text": "     欢迎来到枪战游戏大厅","color": "green"}
tellraw @a[tag=game_player] {"text": "-----------------------------------","color": "green"}
tellraw @a[tag=game_player] [{"text": "请加入队伍的时候","color": "yellow"},{"text": "务必","color": "red","italic": true},{"text": "站在对应颜色的的混凝土上","color": "yellow"}]

# 通知栏加入队伍（需要玩家有execute命令权限）
# tellraw @a[tag=game_player] {"text": "-----------------------------------","color": "green"}
# tellraw @a[tag=game_player] [{"text":"[加入黄队]    ","clickEvent":{"action":"run_command","value":"/execute as @p run function gun_game:go_play/before_join_yellow"},"color": "yellow"},{"text":"           [加入红队]","clickEvent":{"action":"run_command","value":"/execute as @p run function gun_game:go_play/before_join_red"},"color": "red"}]
# tellraw @a[tag=game_player] {"text": "-----------------------------------","color": "green"}
# tellraw @a[tag=game_player] [{"text":"[开始游戏]    ","clickEvent":{"action":"run_command","value":"/execute as @p run function gun_game:go_play/check_player"},"color": "gold"},{"text":"           [离开游戏]","clickEvent":{"action":"run_command","value":"/execute as @p run function gun_game:end_play/check_player"},"color": "dark_red"}]



# 告示牌示例
# setblock ~ ~1 ~ minecraft:oak_wall_sign[]{Text1: '{"clickEvent":{"action":"run_command","value":"/execute as @p run function gun_game:go_play/before_join_red"},"text":"加入红队","color":"red"}',Text3: '{"text":"请站到红色混凝土上","color":"white"}',Text4: '{"text":"点击告示牌","color":"white"}',facing:west}

# setblock ~ ~1 ~ minecraft:oak_wall_sign[]{Text1: '{"clickEvent":{"action":"run_command","value":"/execute as @p run function gun_game:go_play/before_join_yellow"},"text":"加入黄队","color":"yellow"}',Text3: '{"text":"请站到黄色混凝土上","color":"white"}',Text4: '{"text":"点击告示牌","color":"white"}',facing:west}


# 开始游戏告示牌
# setblock ~ ~1 ~ minecraft:oak_wall_sign[]{Text1: '{"clickEvent":{"action":"run_command","value":"/function gun_game:go_play/check_player"},"text":"开始游戏","color":"gold"}',facing:west}