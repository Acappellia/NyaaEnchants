execute if data entity @s item.components."minecraft:enchantments"."minecraft:aqua_affinity" run return 1

execute unless items entity @s contents #enchantable/head_armor run return -1

return 1