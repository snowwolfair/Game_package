scoreboard players add @s tempnum 1

execute as @s if score @s tempnum > #numcut tempnum run scoreboard players operation #numcut tempnum = @s tempnum

execute as @s if score @s tempnum <= #numcut tempnum run scoreboard players operation @s tempnum = #numcut tempnum

scoreboard players add #numcut tempnum 1