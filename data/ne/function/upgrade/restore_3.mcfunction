scoreboard players reset #item_repair_cost ne
execute store result score #item_repair_cost ne run data get entity @s item.components."minecraft:repair_cost"
scoreboard players add #item_repair_cost ne 1
scoreboard players operation #item_repair_cost ne /= #2 ne
execute store result entity @s item.components."minecraft:repair_cost" int 1 run scoreboard players remove #item_repair_cost ne 1

particle happy_villager ~ ~1 ~ 0.1 0.1 0.1 0 2
playsound entity.ender_eye.death block @a ~ ~ ~ 1 1.5

tag @s remove working

summon item ~ ~0.7 ~ {Tags:["ne_summon_item","ne_summon_item_new"],Item:{id:"stone_button",count:1},Motion:[0.0,0.2,0.0]}
data modify entity @n[type=item,tag=ne_summon_item_new,distance=..1] Item set from entity @s item
tag @n[type=item,tag=ne_summon_item_new,distance=..1] remove ne_summon_item_new
data remove entity @s item
playsound entity.item_frame.remove_item block @a ~ ~ ~ 1 1.2
schedule function ne:interact/take_item_update 9t append