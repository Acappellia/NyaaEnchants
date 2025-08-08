execute if data entity @s item.components."minecraft:enchantments"."minecraft:projectile_protection" run return 1

execute unless items entity @s contents #enchantable/armor run return -1
execute if data entity @s item.components."minecraft:enchantments"."minecraft:protection" run return -1
#execute if data entity @s item.components."minecraft:enchantments"."minecraft:projectile_protection" run return -1
execute if data entity @s item.components."minecraft:enchantments"."minecraft:fire_protection" run return -1
execute if data entity @s item.components."minecraft:enchantments"."minecraft:blast_protection" run return -1
execute if data entity @s item.components."minecraft:enchantments"."nel:wing_shield" run return -1

return 1