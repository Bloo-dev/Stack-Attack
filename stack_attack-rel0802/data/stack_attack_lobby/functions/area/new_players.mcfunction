# handles players within the lobby area that aren't in the queue yet
# @s = players within 8 blocks of a lobby without the sat_waiting_for_game tag
# at @s
# called by stack_attack_lobby:area/track_players

# enable trigger for all players nearby that aren't in the queue yet.
scoreboard players enable @s sat_join_queue

# try to join players into the queue if they executed the trigger (preferably via a join sign)
execute if score @s sat_join_queue matches 1.. run function stack_attack_lobby:queue/join_conditions
