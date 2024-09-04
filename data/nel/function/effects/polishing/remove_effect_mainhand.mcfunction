advancement revoke @s only nel:enchantments/polishing_revert_mainhand

execute if predicate nel:enchants/polishing run return -1 
item modify entity @s weapon.mainhand nel:polishing_attr_remove