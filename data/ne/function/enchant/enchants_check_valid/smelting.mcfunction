execute if data entity @s item.components."minecraft:enchantments"."nel:smelting" run return 1

execute unless items entity @s contents #enchantable/mining run return -1
execute if data entity @s item.components."minecraft:enchantments"."minecraft:silk_touch" run return -1