execute unless score @s ne_effect_stack.sonic_spikes matches ..1 anchored eyes positioned ^ ^ ^ run particle sonic_boom ~ ~ ~ 0.8 0.5 0.8 0 1
scoreboard players remove @s ne_effect_stack.sonic_spikes 1
execute unless entity @s[tag=ne_sonic_spike_hit_ready] run return run tag @s add ne_sonic_spike_hit_ready
 
damage @s 4 sonic_boom
playsound minecraft:entity.warden.sonic_boom neutral @a ~ ~ ~ 1 2

execute unless score @s ne_effect_stack.sonic_spikes matches ..0 run return 1
tag @s remove ne_sonic_spike_hit
tag @s remove ne_sonic_spike_hit_ready
scoreboard players reset @s ne_effect_stack.sonic_spikes