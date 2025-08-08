execute if data entity @s item.components."minecraft:enchantments"."minecraft:piercing" run return 1

execute unless items entity @s contents #enchantable/crossbow run return -1
execute if data entity @s item.components."minecraft:enchantments"."minecraft:multishot" run return -1