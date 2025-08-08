execute if data entity @s item.components."minecraft:enchantments"."nel:swift_blade" run return 1

execute unless items entity @s contents #enchantable/sword run return -1
execute if data entity @s item.components."minecraft:enchantments"."nel:giant_sword" run return -1

return 1