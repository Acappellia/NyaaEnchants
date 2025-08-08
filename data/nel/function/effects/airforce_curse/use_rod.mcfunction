scoreboard players reset @s ne_use.fishing_rod

execute if items entity @s weapon.mainhand fishing_rod[enchantments~[{enchantments:"nel:airforce_curse",levels:{min:1}}]] run return run function nel:effects/airforce_curse/record_enchant
execute if items entity @s weapon.mainhand fishing_rod[enchantments~[{enchantments:"nel:enchanted_bait",levels:{min:1}}]] run return run function nel:effects/enchanted_bait/record_enchant_mainhand
execute if items entity @s weapon.offhand fishing_rod[enchantments~[{enchantments:"nel:airforce_curse",levels:{min:1}}]] run return run function nel:effects/airforce_curse/record_enchant
execute if items entity @s weapon.offhand fishing_rod[enchantments~[{enchantments:"nel:enchanted_bait",levels:{min:1}}]] run return run function nel:effects/enchanted_bait/record_enchant_offhand