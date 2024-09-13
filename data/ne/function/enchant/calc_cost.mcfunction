scoreboard players reset #ne_ench_cost ne
scoreboard players reset #book_penalty ne
execute store result score #ne_ench_cost ne run data get entity @s item.components."minecraft:repair_cost"
execute store result score #book_penalty ne run data get storage ne:tmp mainhand.components."minecraft:repair_cost"
scoreboard players operation #ne_ench_cost ne += #book_penalty ne
scoreboard players add #ne_ench_cost ne 8

scoreboard players reset #ne_ench_itemcost ne
scoreboard players reset #book_ench_times ne
execute store result score #ne_ench_itemcost ne run data get entity @s item.components."minecraft:custom_data".ne_ench_times
execute store result score #book_ench_times ne run data get storage ne:tmp mainhand.components."minecraft:custom_data".ne_ench_times
execute if score #book_ench_times ne > #ne_ench_itemcost ne run scoreboard players operation #ne_ench_itemcost ne = #book_ench_times ne
scoreboard players add #ne_ench_itemcost ne 3
execute if score #ne_ench_itemcost ne matches 10.. run scoreboard players set #ne_ench_itemcost ne 9\

execute store result score #item_break_count_hint ne run data get entity @s item.components."minecraft:custom_data".ne_break