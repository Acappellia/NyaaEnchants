execute if data entity @s item.components."minecraft:enchantments"."minecraft:sweeping_edge" run return 1

execute unless items entity @s contents #enchantable/sword run return -1

return 1