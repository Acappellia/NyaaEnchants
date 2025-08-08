execute if data entity @s item.components."minecraft:enchantments"."minecraft:luck_of_the_sea" run return 1

execute unless items entity @s contents #enchantable/fishing run return -1
execute if data entity @s item.components."minecraft:enchantments"."nel:enchanted_bait" run return -1