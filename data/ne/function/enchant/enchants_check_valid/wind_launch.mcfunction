execute if data entity @s item.components."minecraft:enchantments"."nel:wind_launch" run return 1

execute unless items entity @s contents #enchantable/foot_armor run return -1

return 1