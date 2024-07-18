advancement revoke @s only ne:break

execute unless entity @s[gamemode=creative] unless items entity @s weapon.mainhand #pickaxes run return -1

execute if score @s ne_place_cd matches ..0 run return -1
scoreboard players set @s ne_place_cd -5

##identifying the ne_table point
#define score_holder #current_time
execute store result score #current_time ne run time query gametime
execute as @e[distance=..5,type=interaction,tag=ne_table] store result score @s ne_table_interact run data get entity @s attack.timestamp
execute as @e[distance=..5,type=interaction,tag=ne_table] if score @s ne_table_interact = #current_time ne run tag @s add interact_target



##determine if the point exists
execute as @e[distance=..5,type=interaction,tag=interact_target,tag=ne_table,limit=1] at @s run function ne:break/remove_block
tag @e[distance=..5,type=interaction,tag=ne_table] remove interact_target