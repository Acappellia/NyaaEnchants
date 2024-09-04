scoreboard objectives add ne dummy
scoreboard players set #2 ne 2
scoreboard players set #5 ne 5
scoreboard players set #80 ne 80
scoreboard players set #100 ne 100

scoreboard objectives add ne_table_interact dummy

scoreboard objectives add ne_place_cd custom:time_since_death
scoreboard objectives add ne_playerlevel level
scoreboard objectives add ne_player_resetcost custom:time_since_death

schedule function ne:schedules/6s 6s append