function nel:effects/timber/reset_scoreboards
execute unless predicate nel:enchants/timber run return -1

execute store result score #timber_max_iteration ne run data get entity @s SelectedItem.components."minecraft:enchantments".levels."nel:timber"
scoreboard players operation #timber_max_iteration ne *= #5 ne

execute as @e[type=area_effect_cloud,distance=..20,tag=ne_timber_indicator] at @s unless block ~ ~ ~ #logs run function nel:effects/timber/indicate_loop

execute as @e[type=area_effect_cloud,distance=..40,tag=ne_timber_indicator_current] at @s run function nel:effects/timber/find_leaves/1
execute store result score #timber_leave_count ne if entity @e[type=area_effect_cloud,distance=..40,tag=ne_leave_indicator]
execute unless score #timber_leave_count ne matches 4.. run return run kill @e[type=area_effect_cloud,distance=..40,tag=ne_timber_indicator_current]

tag @s add timber_miner
execute as @e[type=area_effect_cloud,distance=..40,tag=ne_timber_indicator_current] at @s run function nel:effects/timber/mine_block
tag @s remove timber_miner
