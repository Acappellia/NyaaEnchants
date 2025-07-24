data modify entity @s item.components."minecraft:lore" append value ""
execute store result entity @s item.components."minecraft:custom_data".ne_break_lore int 1 if data entity @s item.components."minecraft:lore"[]

data modify entity @s item.components."minecraft:custom_data".ne_break set value 1
execute unless score #max_breaks ne matches 1 run data modify entity @s item.components."minecraft:lore" append value [{"text": "> ","color": "#2b3c9e"},{"text": "Limit Break!","color": "#4d9eee"},{"text": " >>>","color": "#2b3c9e"},{"text": " +1","color": "#95ff31"}]
execute if score #max_breaks ne matches 1 run data modify entity @s item.components."minecraft:lore" append value [{"text": "> ","color": "#2b3c9e"},{"text": "Limit Break!","color": "#4d9eee"},{"text": " >>>","color": "#2b3c9e"},{"text": " +1","color": "#95ff31"},{"text": " MAX!","color": "#d8ffb3"}]
execute if score #max_breaks ne matches 1 run data modify entity @s item.components."minecraft:custom_data".ne_break_max set value 1
