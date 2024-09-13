execute if data storage ne:tmp mainhand.components."minecraft:custom_data".ne_gem_restore run data merge entity @s {text:'[{"translate": "container.repair.cost","color": "white","with": [{"text": "5","color": "green"}]},{"text": " lvl","color": "green"}]',default_background:true}
execute if data storage ne:tmp mainhand.components."minecraft:custom_data".ne_gem_upg run data merge entity @s {text:'[{"translate": "container.repair.cost","color": "white","with": [{"text": "10","color": "green"}]},{"text": " lvl","color": "green"}]',default_background:true}
execute if data storage ne:tmp mainhand.components."minecraft:custom_data".ne_gem run return 1

execute on vehicle run function ne:enchant/calc_cost

execute unless score #item_break_count ne matches 1.. run data merge entity @s {text:'[{"text": "[","color": "white"},{"text": "未突破","color": "red"},{"text": "] ","color": "white"},{"translate": "container.repair.cost","color": "white","with": [{"score": {"name": "#ne_ench_cost","objective": "ne"},"color": "green"}]},{"text": " lvl ","color": "green"},{"score": {"name": "#ne_ench_itemcost","objective": "ne"},"color": "gold"},{"text": " 🍪","color": "gold"}]',default_background:true}
execute if score #item_break_count ne matches 1.. run data merge entity @s {text:'[{"text": "[","color": "white"},{"text": "Break","color": "#4d9eee"},{"text": "+","color": "#95ff31"},{"score": {"name": "#item_break_count","objective": "ne"},"color": "#95ff31"},{"text": "] ","color": "white"},{"translate": "container.repair.cost","color": "white","with": [{"score": {"name": "#ne_ench_cost","objective": "ne"},"color": "green"}]},{"text": " lvl ","color": "green"},{"score": {"name": "#ne_ench_itemcost","objective": "ne"},"color": "gold"},{"text": " 🍪","color": "gold"}]',default_background:true}