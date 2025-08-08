execute if data entity @s item.components."minecraft:enchantments"."minecraft:breach" run return 1

execute unless items entity @s contents #enchantable/mace run return -1
execute if data entity @s item.components."minecraft:enchantments"."minecraft:sharpness" run return -1
execute if data entity @s item.components."minecraft:enchantments"."minecraft:smite" run return -1
execute if data entity @s item.components."minecraft:enchantments"."minecraft:bane_of_arthropods" run return -1
execute if data entity @s item.components."minecraft:enchantments"."nel:sharpening" run return -1
execute if data entity @s item.components."minecraft:enchantments"."minecraft:impaling" run return -1
execute if data entity @s item.components."minecraft:enchantments"."minecraft:density" run return -1
#execute if data entity @s item.components."minecraft:enchantments"."minecraft:breach" run return -1