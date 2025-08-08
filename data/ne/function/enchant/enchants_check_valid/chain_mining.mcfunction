execute if data entity @s item.components."minecraft:enchantments"."nel:chain_mining" run return 1

execute unless items entity @s contents #pickaxes run return -1
execute if data entity @s item.components."minecraft:enchantments"."minecraft:efficiency" run return -1
execute if data entity @s item.components."minecraft:enchantments"."nel:polishing" run return -1