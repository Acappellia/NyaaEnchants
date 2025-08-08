execute if data entity @s item.components."minecraft:enchantments"."$enchantment$" run return 1

execute unless items entity @s contents #valid_items run return -1
execute if data entity @s item.components."minecraft:enchantments"."uncompatable_enchants" run return -1