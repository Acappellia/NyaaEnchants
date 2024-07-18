advancement revoke @s only ne:place

execute if score @s ne_place_cd matches ..0 run return -1
scoreboard players set @s ne_place_cd -5
execute anchored eyes positioned ^ ^ ^1 run function ne:place/ray