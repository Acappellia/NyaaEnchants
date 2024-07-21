execute as @a[scores={ne_player_resetcost=..-1}] at @s as @e[type=text_display,tag=ne_cost,distance=..5] run data merge entity @s {text:'""',default_background:false}

execute as @a at @s if entity @e[type=interaction,tag=ne_table,distance=..5] if predicate ne:looking_at_table at @s run function ne:show_cost/start_ray

execute as @a run attribute @s minecraft:player.mining_efficiency modifier remove ne:ench_polishing
execute as @a if predicate ne:enchants/polishing run function ne:effects/polishing/get_effect