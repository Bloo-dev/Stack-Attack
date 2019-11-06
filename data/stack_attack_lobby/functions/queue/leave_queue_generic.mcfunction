# @s = players with the sat_waiting_for_game tag but not withint 8 blocks of a lobby
# at lobby center
# called by stack_attack_lobby:lobby

# leave queue, reset triggers
scoreboard players reset @s sat_join_queue
scoreboard players reset @s sat_start_game

tag @s remove sat_waiting_for_game

# update amount of players in queue
scoreboard players remove players_in_queue sat_data 1

# notify self
tellraw @s ["",{"text":"["},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"},{"text":"] ","color":"none"},{"text":"You have left the lobby.","color":"red"}]

# announce
tellraw @a[tag=sat_waiting_for_game] ["",{"text":"["},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"},{"text":"] ","color":"none"},{"selector":"@s","color":"none"},{"text":" has left the lobby.","color":"red"}]
