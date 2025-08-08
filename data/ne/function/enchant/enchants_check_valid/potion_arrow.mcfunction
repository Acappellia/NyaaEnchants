execute if data entity @s item.components."minecraft:enchantments"."nel:potion_arrow" run return 1

execute unless items entity @s contents #nel:enchantable_ranged run return -1
execute if data entity @s item.components."minecraft:enchantments"."nel:wind_charged" run return -1