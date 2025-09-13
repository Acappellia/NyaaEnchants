execute unless score @s ne_cooldown.wind_launch matches -2.. run return -1
execute if score @s ne_cooldown.wind_launch matches -1 run return run scoreboard players set @s ne_cooldown.wind_launch -2
scoreboard players reset @s ne_cooldown.wind_launch
scoreboard players set @s ne_effect_stack.wind_launch 1