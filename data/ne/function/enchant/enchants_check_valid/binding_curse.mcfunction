execute if data entity @s item.components."minecraft:enchantments"."minecraft:binding_curse" run return 1

execute unless items entity @s contents #enchantable/equippable run return -1

return 1