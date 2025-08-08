execute if data entity @s item.components."minecraft:enchantments"."nel:airforce_curse" run return 1

execute unless items entity @s contents #enchantable/fishing run return -1

return 1