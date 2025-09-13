scoreboard players remove @s ne_effect_stack.wind_launch 1
execute if score @s ne_effect_stack.wind_launch matches ..0 run return run scoreboard players set @s ne_cooldown.wind_launch -1
scoreboard players reset @s ne_cooldown.wind_launch