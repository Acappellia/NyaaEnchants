data modify storage nel:tmp arrow_data set from entity @s

execute if data storage nel:tmp arrow_data.item{id:"minecraft:arrow"} run return -1

execute summon area_effect_cloud run function nel:effects/potion_arrow/set_aec_data

particle splash ~ ~ ~ 1.5 0 1.5 0 20
playsound entity.splash_potion.break player @a
kill @s