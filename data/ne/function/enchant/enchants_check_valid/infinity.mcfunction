execute if data entity @s item.components."minecraft:enchantments"."minecraft:infinity" run return 1

execute unless items entity @s contents #enchantable/bow run return -1
execute if data entity @s item.components."minecraft:enchantments"."minecraft:mending" run return -1

return 1