execute store result storage ne:tmp ench_upgrade.level int 1 run data get entity @s SelectedItem.components."minecraft:enchantments"."nel:sharpening"

function ne:temp/upgrade_exec with storage ne:tmp ench_upgrade
playsound block.amethyst_block.chime player @s