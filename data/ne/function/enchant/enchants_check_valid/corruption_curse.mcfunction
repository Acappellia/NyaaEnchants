execute if data entity @s item.components."minecraft:enchantments"."nel:corruption_curse" run return 1

execute unless items entity @s contents #enchantable/durability run return -1

return 1