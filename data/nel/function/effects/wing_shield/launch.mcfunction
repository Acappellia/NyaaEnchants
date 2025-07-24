summon minecraft:firework_rocket ~ ~ ~ {LifeTime:100,Tags:["ne_rescue_firework"]}
ride @s mount @n[type=firework_rocket,tag=ne_rescue_firework,distance=..1]

particle cloud ~ ~ ~ 0 0 0 0.2 30
playsound minecraft:item.totem.use player @a ~ ~ ~ 1 1.6

item modify entity @s armor.chest nel:wing_shield