data merge entity @s {Tags:["ne_timber_indicator","ne_timber_indicator_current"],Duration:1,WaitTime:0,Radius:0,Particle:{type:"wax_on"}}

scoreboard players remove #timber_max_iteration ne 1

execute at @s run function nel:effects/timber/indicate_loop

scoreboard players add #timber_max_iteration ne 1

#scoreboard players remove #timber_level ne 1