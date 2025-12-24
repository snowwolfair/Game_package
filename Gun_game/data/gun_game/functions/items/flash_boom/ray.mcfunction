execute as @a at @s rotated as @s if entity @s[distance=..4] if block ~ ~ ~ #minecraft:beehives run say hello
execute as @a at @s rotated as @s if entity @s[distance=..4] unless block ~ ~ ~ #minecraft:beehives positioned ^ ^ ^0.005 run function gun_game:items/flash_boom/ray
execute as @a at @s rotated ~15 ~ if entity @s[distance=..4] unless block ~ ~ ~ #minecraft:beehives positioned ^ ^ ^0.005 run function gun_game:items/flash_boom/ray
execute as @a at @s rotated ~-15 ~ if entity @s[distance=..4] unless block ~ ~ ~ #minecraft:beehives positioned ^ ^ ^0.005 run function gun_game:items/flash_boom/ray
execute as @a at @s rotated ~30 ~ if entity @s[distance=..4] unless block ~ ~ ~ #minecraft:beehives positioned ^ ^ ^0.005 run function gun_game:items/flash_boom/ray