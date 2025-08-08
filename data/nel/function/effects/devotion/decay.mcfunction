playsound block.conduit.deactivate player @s ~ ~ ~ 0.5 2

execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"nel:devotion",levels:{min:1}}]] run item modify entity @s weapon.mainhand nel:devotion_decay
execute if items entity @s weapon.offhand *[enchantments~[{enchantments:"nel:devotion",levels:{min:1}}]] run item modify entity @s weapon.offhand nel:devotion_decay