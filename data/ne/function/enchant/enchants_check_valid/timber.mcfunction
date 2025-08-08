execute if data entity @s item.components."minecraft:enchantments"."nel:timber" run return 1

execute unless items entity @s contents #axes run return -1
execute if data entity @s item.components."minecraft:enchantments"."minecraft:efficiency" run return -1
execute if data entity @s item.components."minecraft:enchantments"."nel:polishing" run return -1

return 1