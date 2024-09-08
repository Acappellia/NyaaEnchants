setblock ~ ~ ~ air

execute on passengers on passengers as @s[tag=ne_table_item] if entity @s[tag=ne_have_item] run function ne:break/return_item

execute on passengers on passengers on passengers run kill @s
execute on passengers on passengers run kill @s
execute on passengers run kill @s
kill @s
particle block{block_state:{Name:end_portal_frame}} ~ ~0.5 ~ 0.3 0.3 0.3 0 20
playsound block.stone.break block @a ~ ~0.5 ~ 1 1

loot spawn ~ ~0.5 ~ loot ne:ne_table

data remove entity @s attack