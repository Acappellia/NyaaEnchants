data modify storage ne:tmp mainhand set from entity @s SelectedItem

execute store result score #polishing_lvl ne run data get storage ne:tmp mainhand.components."minecraft:enchantments".levels."ne:polishing"
execute store result score #item_damage ne run data get storage ne:tmp mainhand.components."minecraft:damage"

scoreboard players operation #polishing_lvl ne *= #item_damage ne
scoreboard players operation #polishing_lvl ne /= #100 ne

item modify entity @s weapon.mainhand ne:polishing_attr