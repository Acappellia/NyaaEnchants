execute if data entity @s item.components."minecraft:enchantments"."nel:behead" run return 1

execute unless items entity @s contents #minecraft:axes run return -1
execute if data entity @s item.components."minecraft:enchantments"."nel:kitchen_knife" run return -1
execute if data entity @s item.components."minecraft:enchantments"."minecraft:looting" run return -1