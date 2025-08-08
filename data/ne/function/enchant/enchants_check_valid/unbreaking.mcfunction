execute if data entity @s item.components."minecraft:enchantments"."minecraft:unbreaking" run return 1

execute unless items entity @s contents #enchantable/durability run return -1
execute if data entity @s item.components."minecraft:enchantments"."nel:tenacity" run return -1