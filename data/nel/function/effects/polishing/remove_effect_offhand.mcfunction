advancement revoke @s only nel:enchantments/polishing_revert_offhand

execute if predicate nel:enchants/polishing_offhand run return -1
item modify entity @s weapon.offhand nel:polishing_attr_remove