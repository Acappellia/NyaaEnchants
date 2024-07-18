data modify entity @s item.components."minecraft:lore" append value '""'
execute store result entity @s item.components."minecraft:custom_data".ne_break_lore int 1 if data entity @s item.components."minecraft:lore"
data modify entity @s item.components."minecraft:lore" append value '[{"text": "- ","color": "gray","italic": false},{"text": "⭐","color": "#ffffff","italic": false},{"text": " -","color": "gray","italic": false}]'
data modify entity @s item.components."minecraft:custom_data".ne_break set value 1