execute if data entity @s item.components."minecraft:enchantments"."nel:armored" run return 1

execute unless items entity @s contents #enchantable/equippable run return -1
execute if data entity @s item.components."minecraft:enchantments"."nel:vitality" run return -1