execute if data entity @s item.components."minecraft:enchantments"."nel:chikageya" run return 1

execute unless items entity @s contents #enchantable/crossbow run return -1

return 1