execute if data entity @s item.components."minecraft:enchantments"."minecraft:fortune" run return 1

execute unless items entity @s contents #enchantable/mining_loot run return -1
execute if data entity @s item.components."minecraft:enchantments"."nel:mineralogy" run return -1
execute if data entity @s item.components."minecraft:enchantments"."minecraft:silk_touch" run return -1

return 1