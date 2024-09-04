scoreboard objectives add ne_table_interact dummy

scoreboard objectives add ne_place_cd custom:time_since_death
scoreboard objectives add ne_playerlevel level
scoreboard objectives add ne_player_resetcost custom:time_since_death

schedule function ne:schedules/6s 6s append