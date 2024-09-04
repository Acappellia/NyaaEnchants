execute as @p[distance=..30,tag=timber_miner] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if block ~ ~ ~ #logs run playsound block.wood.break block @a ~ ~ ~ 1 1
execute if block ~ ~ ~ #leaves run playsound block.cherry_leaves.break block @a ~ ~ ~ 1 1
setblock ~ ~ ~ air
particle wax_off ~ ~ ~ 0.2 0.2 0.2 0 5
kill @s