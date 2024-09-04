tag @s add ne_mine_indicator_current
tag @s remove new_indicator

execute unless score #chain_level ne matches 1.. run return 1
execute positioned ~ ~1 ~ if block ~ ~ ~ #nel:ore_blocks unless entity @e[distance=..0.5,type=area_effect_cloud,tag=ne_mine_indicator_current] summon area_effect_cloud run function nel:effects/chain_mining/new_indicator
execute unless score #chain_level ne matches 1.. run return 1
execute positioned ~ ~-1 ~ if block ~ ~ ~ #nel:ore_blocks unless entity @e[distance=..0.5,type=area_effect_cloud,tag=ne_mine_indicator_current] summon area_effect_cloud run function nel:effects/chain_mining/new_indicator
execute unless score #chain_level ne matches 1.. run return 1
execute positioned ~1 ~ ~ if block ~ ~ ~ #nel:ore_blocks unless entity @e[distance=..0.5,type=area_effect_cloud,tag=ne_mine_indicator_current] summon area_effect_cloud run function nel:effects/chain_mining/new_indicator
execute unless score #chain_level ne matches 1.. run return 1
execute positioned ~-1 ~ ~ if block ~ ~ ~ #nel:ore_blocks unless entity @e[distance=..0.5,type=area_effect_cloud,tag=ne_mine_indicator_current] summon area_effect_cloud run function nel:effects/chain_mining/new_indicator
execute unless score #chain_level ne matches 1.. run return 1
execute positioned ~ ~ ~1 if block ~ ~ ~ #nel:ore_blocks unless entity @e[distance=..0.5,type=area_effect_cloud,tag=ne_mine_indicator_current] summon area_effect_cloud run function nel:effects/chain_mining/new_indicator
execute unless score #chain_level ne matches 1.. run return 1
execute positioned ~ ~ ~-1 if block ~ ~ ~ #nel:ore_blocks unless entity @e[distance=..0.5,type=area_effect_cloud,tag=ne_mine_indicator_current] summon area_effect_cloud run function nel:effects/chain_mining/new_indicator
execute unless score #chain_level ne matches 1.. run return 1

execute as @e[type=area_effect_cloud,distance=..2,tag=new_indicator] at @s run function nel:effects/chain_mining/indicate_loop

