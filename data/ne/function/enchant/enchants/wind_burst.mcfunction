execute if data entity @s item.components."minecraft:stored_enchantments".levels."minecraft:wind_burst" run function ne:enchant/enchants_store/wind_burst
execute unless data entity @s item.components."minecraft:enchantments".levels."minecraft:wind_burst" run return -1

execute store result score #ench_origin_level ne run data get entity @s item.components."minecraft:enchantments".levels."minecraft:wind_burst"
execute store result score #ench_added_level ne run data get storage ne:tmp ench_component."minecraft:stored_enchantments".levels."minecraft:wind_burst"
execute store result score #ench_maxlvl ne run data get entity @s item.components."minecraft:custom_data".ne_break
scoreboard players add #ench_maxlvl ne 3
execute if score #ench_maxlvl ne matches 11.. run scoreboard players set #ench_maxlvl ne 10

execute if score #ench_origin_level ne > #ench_added_level ne run return -1
execute if score #ench_origin_level ne >= #ench_maxlvl ne run return -1

execute if score #ench_origin_level ne = #ench_added_level ne run function ne:enchant/random_result
execute if score #ench_origin_level ne < #ench_added_level ne run scoreboard players operation #ench_origin_level ne = #ench_added_level ne
execute if score #ench_origin_level ne > #ench_maxlvl ne run scoreboard players operation #ench_origin_level ne = #ench_maxlvl ne

execute store result entity @s item.components."minecraft:enchantments".levels."minecraft:wind_burst" int 1 run scoreboard players get #ench_origin_level ne