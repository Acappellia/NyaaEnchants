execute as @p[distance=..30,tag=chain_miner] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ air
playsound block.stone.break block @a ~ ~ ~ 1 1
particle wax_on ~ ~ ~ 0.2 0.2 0.2 0 5
kill @s