# 文件：give.mcfunction　执行者：要领取信号弹的玩家（管理员用 /function help_msg:give，或接到交易、商店）
# 名称必须和 advancements/help_sign.json 里的 nbt 完全一致，铁砧改名做不出带颜色的同名物品

# 给 16 个救援信号弹：红色名称、说明文字、一级飞行、红色球形爆炸
give @s minecraft:firework_rocket{display:{Name:'{"text":"救援信号弹","color":"red"}',Lore:['{"text":"对着地面右键使用，向全服发出求援","color":"gray","italic":false}','{"text":"信号 60 秒有效，期间不能再次使用","color":"gray","italic":false}']},Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I;16711680]}]}} 16
