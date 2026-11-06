#处理下线后重新进服的玩家
execute as @a[scores={gg_leave=1..}] run function gun_game:utils/rejoin
