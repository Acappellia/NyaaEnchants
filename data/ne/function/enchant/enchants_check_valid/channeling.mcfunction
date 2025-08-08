execute if data entity @s item.components."minecraft:enchantments"."minecraft:channeling" run return 1

execute unless items entity @s contents #enchantable/trident run return -1
execute if data entity @s item.components."minecraft:enchantments"."minecraft:riptide" run return -1

return 1