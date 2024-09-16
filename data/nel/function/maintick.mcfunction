#function ne:maintick

execute as @a if predicate nel:enchants/ore_mined at @s run function nel:effects/chain_mining/check_mined
execute as @a if predicate nel:enchants/log_chopped at @s run function nel:effects/timber/check_mined