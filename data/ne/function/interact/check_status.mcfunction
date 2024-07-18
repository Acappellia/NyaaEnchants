scoreboard players reset #table_no_item ne
execute unless entity @s[tag=ne_have_item] run scoreboard players set #table_no_item ne 1

execute if score #table_no_item ne matches 1 if items entity @p[distance=..10,tag=ne_user] weapon.mainhand #ne:enchantable run function ne:interact/place_item
execute if score #table_no_item ne matches 1 run return 1

scoreboard players reset #player_empty_hands ne
execute unless items entity @p[distance=..10,tag=ne_user] weapon.mainhand #ne:gems unless items entity @p[distance=..10,tag=ne_user] weapon.mainhand enchanted_book run scoreboard players set #player_empty_hands ne 1

execute if score #player_empty_hands ne matches 1 run function ne:interact/take_item
execute if score #player_empty_hands ne matches 1 run return 2

execute if items entity @p[distance=..10,tag=ne_user] weapon.mainhand #ne:gems run function ne:upgrade/check_type
execute if items entity @p[distance=..10,tag=ne_user] weapon.mainhand enchanted_book run function ne:enchant/start