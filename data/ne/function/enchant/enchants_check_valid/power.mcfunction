execute if data entity @s item.components."minecraft:enchantments"."minecraft:power" run return 1

execute unless items entity @s contents #enchantable/bow run return -1
execute if data entity @s item.components."minecraft:enchantments"."nel:bulleye" run return -1
execute if data entity @s item.components."minecraft:enchantments"."nel:wind_charged" run return -1