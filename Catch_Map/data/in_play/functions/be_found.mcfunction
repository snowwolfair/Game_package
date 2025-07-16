#清除身上所有装备
clear @s
#清除隐身效果
effect clear @s invisibility
#发放搜寻者装备
function in_play:seeker_about/give_weapon

#转换为搜寻者
execute if entity @s[team=hide] run function go_play:join_seek
#10秒后传送到指定地图
schedule function in_play:map_select 10s append