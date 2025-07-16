#铁套
item replace entity @s armor.head with iron_helmet{display:{Name:'[{"text":"Seeker\'s armor","italic":false}]',Lore:['[{"text":"For seeker","italic":false}]']},Enchantments:[{id:"binding_curse",lvl:1}],Unbreakable:1b,HideFlags:1} 1
item replace entity @s armor.chest with iron_chestplate{display:{Name:'[{"text":"Seeker\'s armor","italic":false}]',Lore:['[{"text":"For seeker","italic":false}]']},Enchantments:[{id:"binding_curse",lvl:1}],Unbreakable:1b,HideFlags:1} 1
item replace entity @s armor.legs with iron_leggings{display:{Name:'[{"text":"Seeker\'s armor","italic":false}]',Lore:['[{"text":"For seeker","italic":false}]']},Enchantments:[{id:"binding_curse",lvl:1}],Unbreakable:1b,HideFlags:1} 1
item replace entity @s armor.feet with iron_boots{display:{Name:'[{"text":"Seeker\'s armor","italic":false}]',Lore:['[{"text":"For seeker","italic":false}]']},Enchantments:[{id:"binding_curse",lvl:1}],Unbreakable:1b,HideFlags:1} 1
#斧头
item replace entity @s container.0 with diamond_axe{display:{Name:'[{"text":"Seeker\'s axe","italic":false}]',Lore:['[{"text":"For seek","italic":false}]']},Enchantments:[{id:"sharpness",lvl:3}],Unbreakable:1b} 1
#弓箭
item replace entity @s container.1 with bow{display:{Name:'[{"text":"Seeker\'s bow","italic":false}]',Lore:['[{"text":"For seek","italic":false}]']},Enchantments:[{id:"infinity",lvl:1}],Unbreakable:1b} 1
item replace entity @s container.9 with arrow 1 



#data modify entity @s Inventory[{Slot:0b}] set from entity @s Inventory[{Slot:8b}]binding_curse