data modify storage ne:tmp mainhand set from entity @s SelectedItem

execute anchored eyes positioned ^ ^ ^0.5 run function ne:show_cost/ray

scoreboard players set @s ne_player_resetcost -2