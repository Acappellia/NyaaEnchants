execute store result storage ne:tmp lore_info.index int 1 run data get entity @s item.components."minecraft:custom_data".ne_break_lore 1

scoreboard players reset #item_break_count
execute store result score #item_break_count ne run data get entity @s item.components."minecraft:custom_data".ne_break
execute store result entity @s item.components."minecraft:custom_data".ne_break int 1 run scoreboard players add #item_break_count ne 1
execute if score #item_break_count ne >= #max_breaks ne run data modify entity @s item.components."minecraft:custom_data".ne_break_max set value 1

execute store result storage ne:tmp lore_info.count int 1 run scoreboard players get #item_break_count ne
function ne:upgrade/set_lore with storage ne:tmp lore_info