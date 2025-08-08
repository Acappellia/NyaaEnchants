execute if data entity @s item.components."minecraft:enchantments"."minecraft:quick_charge" run return 1

execute unless items entity @s contents #enchantable/crossbow run return -1
execute if data entity @s item.components."minecraft:enchantments"."nel:devotion" run return -1

return 1