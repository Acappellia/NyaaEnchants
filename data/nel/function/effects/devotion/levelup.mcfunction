scoreboard players set @s ne_decay.devotion -45

playsound block.conduit.activate player @s ~ ~ ~ 0.5 2

execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"nel:devotion",levels:{min:1,max:9}}]] run return run item modify entity @s weapon.mainhand nel:devotion_levelup
execute if items entity @s weapon.offhand *[enchantments~[{enchantments:"nel:devotion",levels:{min:1,max:9}}]] run return run item modify entity @s weapon.offhand nel:devotion_levelup