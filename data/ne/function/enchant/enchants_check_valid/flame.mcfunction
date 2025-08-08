execute if data entity @s item.components."minecraft:enchantments"."minecraft:flame" run return 1

execute unless items entity @s contents #enchantable/bow run return -1
execute if data entity @s item.components."minecraft:enchantments"."nel:wind_charged" run return -1