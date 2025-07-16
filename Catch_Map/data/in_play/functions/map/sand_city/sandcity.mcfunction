
#初始状态（seek_score=2)
teleport @a[team=seek,scores={seek_score=2}] 25 125 49
teleport @a[team=hide,scores={seek_score=2}] 25 125 43
#被击杀后转化为的状态（seek_score=1）
teleport @a[team=seek,scores={seek_score=1}] 25 130 49
#将标志位恢复


scoreboard players set @a[team=seek,scores={seek_score=1}] seek_score 0
scoreboard players set @a[team=hide,scores={seek_score=1}] seek_score 0
