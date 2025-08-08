summon item ~ ~0.7 ~ {Tags:["ne_summon_item","ne_summon_item_new"],Item:{id:"stone_button",count:1},Motion:[0.0,0.2,0.0]}
data modify entity @n[type=item,tag=ne_summon_item_new,distance=..1] Item set from entity @s item
tag @n[type=item,tag=ne_summon_item_new,distance=..1] remove ne_summon_item_new
data remove entity @s item
playsound entity.item_frame.remove_item block @a ~ ~ ~ 1 1.2
tag @s remove ne_have_item
schedule function ne:interact/take_item_update 10t append