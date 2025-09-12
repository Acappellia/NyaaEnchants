execute as @a if items entity @s weapon.mainhand enchanted_book[stored_enchantments~[{enchantments:["nel:sharpening"]}]] run function ne:temp/ench_upgrade_book
execute as @a if items entity @s weapon.mainhand *[enchantments~[{enchantments:["nel:sharpening"]}]] run function ne:temp/ench_upgrade

schedule function ne:schedules/1s 1s replace