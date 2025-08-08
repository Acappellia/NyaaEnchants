advancement revoke @s only nel:enchantments/supercharged_using_4

function nel:effects/supercharged/charging

execute if score @s ne_progress.supercharged matches 60 run function nel:effects/supercharged/stack_1
execute if score @s ne_progress.supercharged matches 90 run function nel:effects/supercharged/stack_2
execute if score @s ne_progress.supercharged matches 120 run function nel:effects/supercharged/stack_3
execute if score @s ne_progress.supercharged matches 150 run function nel:effects/supercharged/stack_4