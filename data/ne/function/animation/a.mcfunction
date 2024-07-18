execute as @e[type=block_display,tag=ne_table_deco_1] run data merge entity @s {interpolation_duration:30,start_interpolation:-1,transformation:[1,0,0,-2,0,1,0,2,0,0,1,-2,0,0,0,3]}
execute as @e[type=block_display,tag=ne_table_deco_2] run data merge entity @s {interpolation_duration:30,start_interpolation:-1,transformation:[1,0,0,1,0,1,0,3,0,0,1,1,0,0,0,3]}
execute as @e[type=item_display,tag=ne_table_item] run data merge entity @s {interpolation_duration:30,start_interpolation:-1,transformation:[1,0,0,0,0,1,0,2,0,0,1,0,0,0,0,2]}

execute as @e[type=interaction,tag=ne_table] at @s run particle minecraft:end_rod ~ ~ ~ 0.5 0.5 0.5 0 2
execute as @e[type=interaction,tag=ne_table] at @s run particle minecraft:firework ~ ~ ~ 0.5 0.5 0.5 0 2

schedule function ne:animation/b 30t replace