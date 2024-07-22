advancement revoke @s only ne:enchantments/polishing_revert_mainhand

execute if predicate ne:enchants/polishing run return -1 
item modify entity @s weapon.mainhand ne:polishing_attr_remove