execute unless score @p[distance=..10,tag=ne_user] ne_playerlevel matches 5.. run return -1
xp add @p[distance=..10,tag=ne_user] -5 levels
item modify entity @p[distance=..10,tag=ne_user] weapon.mainhand ne:remove_1

playsound block.vault.eject_item block @a ~ ~ ~ 1 1.2
playsound block.vault.ambient block @a ~ ~ ~ 1 1.2
particle end_rod ~ ~0.8 ~ 0.15 0 0.15 0 20
tag @s remove ne_have_item
tag @s add working
summon area_effect_cloud ~ ~ ~ {Duration:40,Tags:["ne_restore_timer"]}
ride @n[type=area_effect_cloud,tag=ne_restore_timer,distance=..0.1] mount @s

schedule function ne:upgrade/restore_2 40t append