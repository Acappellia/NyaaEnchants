advancement revoke @s only ne:break

execute unless entity @s[gamemode=creative] unless items entity @s weapon.mainhand #pickaxes run return -1

execute if score @s ne_place_cd matches ..0 run return -1
scoreboard players set @s ne_place_cd -5

##identifying the ne_table point
#define score_holder #current_time
#execute store result score #current_time ne run time query gametime
#execute as @e[distance=..5,type=interaction,tag=ne_table] run function ne:calc/get_atk_time
#execute as @e[distance=..5,type=interaction,tag=ne_table] if data entity @s attack run tag @s add interact_target


execute as @e[distance=..5,type=interaction,tag=ne_table] if data entity @s attack at @s on vehicle run function ne:break/remove_block