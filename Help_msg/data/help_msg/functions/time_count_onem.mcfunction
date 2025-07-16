execute as @p[tag=in_help] if score @s helpmsg matches 0.. run scoreboard players add @s helpmsg 1

schedule function help_msg:time_count_onem 1s

execute as @p[tag=in_help] if score @s helpmsg matches 60 run scoreboard players set @s helpmsg 0
execute as @p[tag=in_help] if score @s helpmsg matches 0 run advancement revoke @s only help_msg:help_sign
execute as @p[tag=in_help] if score @s helpmsg matches 0 run team remove help
execute as @p[tag=in_help] if score @s helpmsg matches 0 run tag @s remove in_help
execute as @p[tag=in_help] if score @s helpmsg matches 0 run schedule clear help_msg:time_count_onem


