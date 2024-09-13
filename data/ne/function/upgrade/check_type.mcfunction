data remove storage ne:tmp mainhand
data modify storage ne:tmp mainhand set from entity @p[distance=..10,tag=ne_user] SelectedItem

execute if data storage ne:tmp mainhand.components."minecraft:custom_data".ne_gem_upg run function ne:upgrade/limit_break
execute if data storage ne:tmp mainhand.components."minecraft:custom_data".ne_gem_restore run function ne:upgrade/restore
execute if data storage ne:tmp mainhand.components."minecraft:custom_data".ne_gem_lore run function ne:upgrade/lore