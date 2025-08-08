function ne:maintick

execute as @a if predicate nel:enchants/ore_mined at @s run function nel:effects/chain_mining/check_mined
execute as @a if predicate nel:enchants/log_chopped at @s run function nel:effects/timber/check_mined
execute as @a if score @s ne_use.fishing_rod matches 1.. at @s anchored eyes positioned ^ ^ ^ run function nel:effects/airforce_curse/use_rod