execute store result score #ench_origin_level ne run data get entity @s item.components."minecraft:stored_enchantments".levels."minecraft:multishot"
execute store result score #ench_added_level ne run data get storage ne:tmp ench_component."minecraft:stored_enchantments".levels."minecraft:multishot"
#execute store result score #ench_maxlvl ne run data get entity @s item.components."minecraft:custom_data".ne_break
#scoreboard players add #ench_maxlvl ne 1
#execute if score #ench_maxlvl ne matches 11.. run scoreboard players set #ench_maxlvl ne 10

execute if score #ench_origin_level ne > #ench_added_level ne run return -1
#execute if score #ench_origin_level ne >= #ench_maxlvl ne run return -1

execute if score #ench_origin_level ne = #ench_added_level ne run function ne:enchant/random_result
execute if score #ench_origin_level ne < #ench_added_level ne run scoreboard players operation #ench_origin_level ne = #ench_added_level ne
#execute if score #ench_origin_level ne > #ench_maxlvl ne run scoreboard players operation #ench_origin_level ne = #ench_maxlvl ne
#execute if score #ench_origin_level ne matches 11.. run scoreboard players set #ench_origin_level ne 10

execute store result entity @s item.components."minecraft:stored_enchantments".levels."minecraft:multishot" int 1 run scoreboard players get #ench_origin_level ne