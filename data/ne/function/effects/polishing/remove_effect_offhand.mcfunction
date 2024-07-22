advancement revoke @s only ne:enchantments/polishing_revert_offhand

execute if predicate ne:enchants/polishing_offhand run return -1
item modify entity @s weapon.offhand ne:polishing_attr_remove