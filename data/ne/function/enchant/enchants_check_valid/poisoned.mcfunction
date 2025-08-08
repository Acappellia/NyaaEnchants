execute if data entity @s item.components."minecraft:enchantments"."nel:poisoned" run return 1

execute unless items entity @s contents #nel:enchantable_poisoned run return -1
execute if data entity @s item.components."minecraft:enchantments"."minecraft:fire_aspect" run return -1
execute if data entity @s item.components."minecraft:enchantments"."nel:kemono_friends" run return -1