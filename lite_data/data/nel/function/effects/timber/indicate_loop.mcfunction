tag @s add ne_timber_indicator_current

execute if score #timber_max_iteration ne matches ..0 run return -1

#execute unless score #timber_level ne matches 1.. run return 1
execute positioned ~ ~1 ~ if block ~ ~ ~ #logs unless entity @e[distance=..0.5,type=area_effect_cloud,tag=ne_timber_indicator_current] summon area_effect_cloud run function nel:effects/timber/new_indicator
execute positioned ~1 ~1 ~ if block ~ ~ ~ #logs unless entity @e[distance=..0.5,type=area_effect_cloud,tag=ne_timber_indicator_current] summon area_effect_cloud run function nel:effects/timber/new_indicator
execute positioned ~1 ~1 ~1 if block ~ ~ ~ #logs unless entity @e[distance=..0.5,type=area_effect_cloud,tag=ne_timber_indicator_current] summon area_effect_cloud run function nel:effects/timber/new_indicator
execute positioned ~ ~1 ~1 if block ~ ~ ~ #logs unless entity @e[distance=..0.5,type=area_effect_cloud,tag=ne_timber_indicator_current] summon area_effect_cloud run function nel:effects/timber/new_indicator
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ #logs unless entity @e[distance=..0.5,type=area_effect_cloud,tag=ne_timber_indicator_current] summon area_effect_cloud run function nel:effects/timber/new_indicator
execute positioned ~-1 ~1 ~ if block ~ ~ ~ #logs unless entity @e[distance=..0.5,type=area_effect_cloud,tag=ne_timber_indicator_current] summon area_effect_cloud run function nel:effects/timber/new_indicator
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ #logs unless entity @e[distance=..0.5,type=area_effect_cloud,tag=ne_timber_indicator_current] summon area_effect_cloud run function nel:effects/timber/new_indicator
execute positioned ~ ~1 ~-1 if block ~ ~ ~ #logs unless entity @e[distance=..0.5,type=area_effect_cloud,tag=ne_timber_indicator_current] summon area_effect_cloud run function nel:effects/timber/new_indicator
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ #logs unless entity @e[distance=..0.5,type=area_effect_cloud,tag=ne_timber_indicator_current] summon area_effect_cloud run function nel:effects/timber/new_indicator

execute positioned ~1 ~ ~ if block ~ ~ ~ #logs unless entity @e[distance=..0.5,type=area_effect_cloud,tag=ne_timber_indicator_current] summon area_effect_cloud run function nel:effects/timber/new_indicator
execute positioned ~1 ~ ~1 if block ~ ~ ~ #logs unless entity @e[distance=..0.5,type=area_effect_cloud,tag=ne_timber_indicator_current] summon area_effect_cloud run function nel:effects/timber/new_indicator
execute positioned ~ ~ ~1 if block ~ ~ ~ #logs unless entity @e[distance=..0.5,type=area_effect_cloud,tag=ne_timber_indicator_current] summon area_effect_cloud run function nel:effects/timber/new_indicator
execute positioned ~-1 ~ ~1 if block ~ ~ ~ #logs unless entity @e[distance=..0.5,type=area_effect_cloud,tag=ne_timber_indicator_current] summon area_effect_cloud run function nel:effects/timber/new_indicator
execute positioned ~-1 ~ ~ if block ~ ~ ~ #logs unless entity @e[distance=..0.5,type=area_effect_cloud,tag=ne_timber_indicator_current] summon area_effect_cloud run function nel:effects/timber/new_indicator
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ #logs unless entity @e[distance=..0.5,type=area_effect_cloud,tag=ne_timber_indicator_current] summon area_effect_cloud run function nel:effects/timber/new_indicator
execute positioned ~ ~ ~-1 if block ~ ~ ~ #logs unless entity @e[distance=..0.5,type=area_effect_cloud,tag=ne_timber_indicator_current] summon area_effect_cloud run function nel:effects/timber/new_indicator
execute positioned ~1 ~ ~-1 if block ~ ~ ~ #logs unless entity @e[distance=..0.5,type=area_effect_cloud,tag=ne_timber_indicator_current] summon area_effect_cloud run function nel:effects/timber/new_indicator

execute as @e[type=area_effect_cloud,distance=..2,tag=new_indicator] at @s run function nel:effects/timber/indicate_loop
