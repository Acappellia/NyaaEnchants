execute if data entity @s item.components."minecraft:enchantments"."minecraft:feather_falling" run return 1

execute unless items entity @s contents #enchantable/foot_armor run return -1
execute if data entity @s item.components."minecraft:enchantments"."nel:spring_boots" run return -1

return 1