execute store result score #enchant_result ne run random value 1..20

execute if score #enchant_result ne matches 1 run scoreboard players add #ench_origin_level ne 3
execute if score #enchant_result ne matches 1 run playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 1.5
execute if score #enchant_result ne matches 2..6 run scoreboard players add #ench_origin_level ne 2
execute if score #enchant_result ne matches 2..6 run playsound minecraft:block.note_block.chime player @a ~ ~ ~ 1 1.2
execute if score #enchant_result ne matches 7..17 run scoreboard players add #ench_origin_level ne 1
execute if score #enchant_result ne matches 18..20 run playsound minecraft:block.note_block.didgeridoo player @a ~ ~ ~ 1 0.8