execute unless data entity @s item.components."minecraft:custom_data".ne_break_max run return -1

execute unless score @p[distance=..10,tag=ne_user] ne_playerlevel matches 30.. run return -1

scoreboard players reset #player_cookie_count ne
execute store result score #player_cookie_count ne run clear @p[distance=..10,tag=ne_user] minecraft:cookie[custom_data={ne_cookie:1b}] 0
execute unless score #player_cookie_count ne matches 64.. run return -1

xp add @p[distance=..10,tag=ne_user] -30 levels
clear @p[distance=..10,tag=ne_user] minecraft:cookie[custom_data={ne_cookie:1b}] 64

execute store result storage ne:tmp lore_info.index int 1 run data get entity @s item.components."minecraft:custom_data".ne_break_lore 1

function ne:upgrade/set_custom_lore with storage ne:tmp lore_info

item modify entity @p[distance=..10,tag=ne_user] weapon.mainhand ne:remove_1

playsound block.vault.insert_item_fail block @a ~ ~ ~ 1 1.2
playsound block.vault.ambient block @a ~ ~ ~ 1 1.2
particle wax_off ~ ~0.8 ~ 0.15 0 0.15 0 20
tag @s remove ne_have_item
tag @s add working
summon area_effect_cloud ~ ~ ~ {Radius:0,Duration:40,Tags:["ne_break_timer"]}
ride @n[type=area_effect_cloud,tag=ne_break_timer,distance=..0.1] mount @s

schedule function ne:upgrade/lore2 40t append