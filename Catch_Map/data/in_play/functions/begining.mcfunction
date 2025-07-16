#寻找者发放装备
execute as @a[tag=in_play,team=seek] run function in_play:seeker_about/give_weapon

#躲藏者发放初始装备
execute as @a[tag=in_play,team=hide] run function in_play:hider_about/give_weapon

#tp玩家到游戏地图
execute if entity @a[tag=in_play] run function in_play:map_select

#设置躲藏时间倒计时
execute if entity @a[tag=in_play] run function in_play:hid_times/before_hidtime