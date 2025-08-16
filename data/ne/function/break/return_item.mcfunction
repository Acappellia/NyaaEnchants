summon item ~ ~1 ~ {Tags:["ne_summon_item"],Motion:[0.0,0.2,0.0],Item:{id:"stone",count:1}}
data modify entity @n[type=item,tag=ne_summon_item,distance=..1] Item set from entity @s item
tag @n[type=item,tag=ne_summon_item,distance=..1] remove ne_summon_item

execute unless entity @s[tag=ne_have_item] run particle angry_villager ~ ~ ~ 0.1 0.1 0.1 0 3