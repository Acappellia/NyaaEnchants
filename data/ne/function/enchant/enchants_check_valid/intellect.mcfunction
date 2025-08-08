execute if data entity @s item.components."minecraft:enchantments"."nel:intellect" run return 1

execute unless items entity @s contents #enchantable/head_armor run return -1

return 1