function ne:enchant/calc_cost

execute unless score @p[distance=..10,tag=ne_user] ne_playerlevel >= #ne_ench_cost ne run return -1

scoreboard players reset #player_cookie_count ne
execute store result score #player_cookie_count ne run clear @p[distance=..10,tag=ne_user] minecraft:cookie[custom_data={ne_cookie:1b}] 0
execute unless score #player_cookie_count ne >= #ne_ench_itemcost ne run return -1

data remove storage ne:tmp cost_info
execute store result storage ne:tmp cost_info.lvl int 1 run scoreboard players get #ne_ench_cost ne
execute store result storage ne:tmp cost_info.count int 1 run scoreboard players get #ne_ench_itemcost ne
execute as @p[distance=..10,tag=ne_user] run function ne:enchant/take_cost with storage ne:tmp cost_info

item modify entity @p[distance=..10,tag=ne_user] weapon.mainhand ne:remove_1

execute on vehicle on passengers as @s[tag=ne_table_enchstore] run function ne:enchant/store_data

playsound block.enchantment_table.use block @a ~ ~ ~ 1 1.2
playsound block.vault.ambient block @a ~ ~ ~ 1 1.2
particle enchant ~ ~0.8 ~ 0.15 0 0.15 0 20
tag @s remove ne_have_item
tag @s add working
summon area_effect_cloud ~ ~ ~ {Duration:40,Tags:["ne_ench_timer"]}
ride @n[type=area_effect_cloud,tag=ne_ench_timer,distance=..0.1] mount @s

schedule function ne:enchant/schedule 40t append