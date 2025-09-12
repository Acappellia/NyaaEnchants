data remove storage ne:tmp ench_component
execute on vehicle on passengers as @s[tag=ne_table_enchstore] run data modify storage ne:tmp ench_component set from entity @s item.components

data modify entity @s item.components."minecraft:repair_cost" set from storage ne:tmp ench_component."minecraft:repair_cost"
data modify entity @s item.components."minecraft:custom_data".ne_ench_times set from storage ne:tmp ench_component."minecraft:custom_data".ne_ench_times

function ne:enchant/add_enchants

particle witch ~ ~1 ~ 0.1 0.1 0.1 0 2
playsound entity.ender_eye.death block @a ~ ~ ~ 1 1.5

tag @s remove working

summon item ~ ~0.7 ~ {Tags:["ne_summon_item","ne_summon_item_new"],Item:{id:"stone_button",count:1},Motion:[0.0,0.2,0.0]}
data modify entity @n[type=item,tag=ne_summon_item_new,distance=..1] Item set from entity @s item
tag @n[type=item,tag=ne_summon_item_new,distance=..1] remove ne_summon_item_new
data remove entity @s item
playsound entity.item_frame.remove_item block @a ~ ~ ~ 1 1.2
schedule function ne:interact/take_item_update 9t append