data modify entity @s item set from entity @p[distance=..10,tag=ne_user] SelectedItem
item modify entity @p[distance=..10,tag=ne_user] weapon.mainhand ne:remove_1

playsound block.end_portal_frame.fill block @a ~ ~ ~ 1 0.8
tag @s add ne_have_item