scoreboard players set #214748 ne 214748
scoreboard players set #-3648 ne -3648
scoreboard players set #10000 ne 10000

scoreboard objectives add ne_table_interact dummy

execute unless score #max_break ne matches 1.. run scoreboard players set #max_break ne 9

execute unless score #server_time_offset ne = #server_time_offset ne run scoreboard players set #server_time_offset ne 0
scoreboard players operation #server_time_offset ne = #server_time_offset nc

scoreboard objectives add ne_place_cd custom:time_since_death
scoreboard objectives add ne_playerlevel level
scoreboard objectives add ne_player_resetcost custom:time_since_death

schedule function ne:schedules/6s 6s append