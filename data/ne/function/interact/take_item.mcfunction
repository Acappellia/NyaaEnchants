summon item ~ ~0.7 ~ {Tags:["ne_summon_item"],Item:{id:"stone_button",count:1},Motion:[0.0,0.2,0.0]}
data modify entity @n[type=item,tag=ne_summon_item,distance=..1] Item set from entity @s item
data modify entity @s item set value {id:"air",count:1}
playsound entity.item_frame.remove_item block @a ~ ~ ~ 1 1.2
tag @s remove ne_have_item
schedule function ne:interact/take_item_update 10t append