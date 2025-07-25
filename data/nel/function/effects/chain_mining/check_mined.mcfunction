function nel:effects/chain_mining/reset_scoreboards
execute unless predicate nel:enchants/chain_mining run return -1

execute store result score #chain_level ne run data get entity @s SelectedItem.components."minecraft:enchantments"."nel:chain_mining"
scoreboard players add #chain_level ne 1

execute as @e[type=area_effect_cloud,distance=..20,tag=ne_mine_indicator] at @s unless block ~ ~ ~ #nel:ore_blocks run function nel:effects/chain_mining/indicate_loop

tag @s add chain_miner
execute as @e[type=area_effect_cloud,distance=..30,tag=ne_mine_indicator_current] at @s run function nel:effects/chain_mining/mine_block
tag @s remove chain_miner
