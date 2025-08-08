execute store result score #get_ench_level ne run data get entity @s active_effects[{id:"minecraft:luck"}].amplifier
scoreboard players operation @s ne_effect_stack.sonic_spikes += #get_ench_level ne
effect clear @s luck
tag @s add ne_sonic_spike_hit

playsound minecraft:entity.warden.sonic_charge neutral @a ~ ~ ~ 0.5 2