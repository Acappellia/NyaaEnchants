execute store result entity @s item.components."minecraft:repair_cost" int 1 run scoreboard players get #ne_ench_cost ne
execute store result entity @s item.components."minecraft:custom_data".ne_ench_times int 1 run scoreboard players remove #ne_ench_itemcost ne 2

data modify entity @s item.components."minecraft:stored_enchantments" set from storage ne:tmp mainhand.components."minecraft:stored_enchantments"