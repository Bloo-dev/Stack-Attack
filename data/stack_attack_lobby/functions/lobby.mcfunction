# handles the lobby(s)
# @s = none
# at world spawn
# called by stack_attack_mechanics:main


# branch to all lobby markers. Handle players in or near a lobby.
execute as @e[type=marker,tag=sat_lobby_center] at @s run function stack_attack_lobby:area/load_id

# kick players that have left the lobby by walking away
execute as @a[tag=sat_waiting_for_game,tag=!sat_near_lobby] run function stack_attack_lobby:queue/leave_queue_generic
tag @a remove sat_near_lobby

# count players in queue
scoreboard players set players_in_queue sat_data 0
execute as @a[tag=sat_waiting_for_game] run scoreboard players add players_in_queue sat_data 1

# start game (DO THIS LAST. MAKE SURE PLAYERS THAT HAVE PICKED STUFF UP GET KICKED BEFORE THIS)
execute if score try_to_launch sat_data matches 1 run function stack_attack_lobby:launch/launch_conditions
