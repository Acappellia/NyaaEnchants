execute if data entity @s item.components."minecraft:enchantments"."nel:steady" run return 1

execute unless items entity @s contents #enchantable/chest_armor run return -1

return 1