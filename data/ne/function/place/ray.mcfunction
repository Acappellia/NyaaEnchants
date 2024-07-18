#define score_holder #ray_can_place
scoreboard players reset #ray_can_place ne
execute positioned ^ ^ ^0.1 align xyz positioned ~0.5 ~ ~0.5 run function ne:place/check_block

execute if score #ray_can_place ne matches 1 align xyz positioned ~0.5 ~ ~0.5 run function ne:place/setblock
execute unless score #ray_can_place ne matches 1 if entity @s[distance=..5] positioned ^ ^ ^0.1 run function ne:place/ray