execute if data entity @s item.components."minecraft:enchantments"."nel:brisk_walking" run return 1

execute unless items entity @s contents #enchantable/foot_armor run return -1
execute if data entity @s item.components."minecraft:enchantments"."minecraft:frost_walker" run return -1
execute if data entity @s item.components."minecraft:enchantments"."minecraft:soul_speed" run return -1

return 1