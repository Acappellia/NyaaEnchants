execute anchored eyes positioned ^ ^ ^ run particle portal ^ ^-0.2 ^0.5 0 0 0 1 1

execute if score @s ne_decay.supercharged matches 0.. run function nel:effects/supercharged/reset_supercharge

scoreboard players set @s ne_decay.supercharged -2
scoreboard players add @s ne_progress.supercharged 1