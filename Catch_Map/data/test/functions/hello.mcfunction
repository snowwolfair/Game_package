#execute as @r at @s if score #test loop_test matches 0.. run say "hello!"
#execute if score #test loop_test matches 0.. run scoreboard players remove #test loop_test 1

#execute as @r at @s if score #test1 loop_break matches 0.. run say "hdd!"
#execute if score #test1 loop_break matches 0.. run scoreboard players remove #test1 loop_break 1


#execute if score #test loop_test matches 0.. run schedule function test:hello 3s replace
#execute if score #test1 loop_break matches 0 run schedule clear test:hello

tag @p list

say hello!