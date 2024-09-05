execute store result score @s ne_table_interact run data get entity @s attack.timestamp
execute unless score @s ne_table_interact matches 2147483647 run return -1

execute store result score #calc_high ne run data get entity @s attack.timestamp 0.0001
data modify storage ne:tmp time_data.low set string entity @s attack.timestamp -5 -1
function ne:calc/set_time_low with storage ne:tmp time_data

scoreboard players operation #calc_high_res ne = #calc_high ne
scoreboard players operation #calc_high ne /= #214748 ne
scoreboard players operation #calc_high_res ne %= #214748 ne

scoreboard players operation #calc_high ne *= #-3648 ne
scoreboard players operation #calc_high_res ne *= #10000 ne

scoreboard players operation #calc_low ne += #calc_high_res ne
scoreboard players operation #calc_low ne -= #calc_high ne

execute if score #calc_low ne matches ..-1 run function ne:calc/add_int32
scoreboard players operation @s ne_table_interact = #calc_low ne