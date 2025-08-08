execute if data entity @s item.components."minecraft:enchantments"."nel:sprint" run return 1

execute unless items entity @s contents #enchantable/leg_armor run return -1
execute if data entity @s item.components."minecraft:enchantments"."minecraft:swift_sneak" run return -1