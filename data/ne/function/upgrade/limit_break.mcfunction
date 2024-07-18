execute unless score @p[distance=..10,tag=ne_user] ne_playerlevel matches 10.. run return -1
execute if data entity @s item.components."minecraft:custom_data".ne_break_max run return -1
xp add @p[distance=..10,tag=ne_user] -10 levels
item modify entity @p[distance=..10,tag=ne_user] weapon.mainhand ne:remove_1

playsound block.vault.insert_item_fail block @a ~ ~ ~ 1 1.2
playsound block.vault.ambient block @a ~ ~ ~ 1 1.2
particle wax_off ~ ~0.8 ~ 0.15 0 0.15 0 20
tag @s remove ne_have_item
tag @s add working
summon area_effect_cloud ~ ~ ~ {Duration:40,Tags:["ne_break_timer"]}
ride @n[type=area_effect_cloud,tag=ne_break_timer,distance=..0.1] mount @s

schedule function ne:upgrade/limit_break2 40t append