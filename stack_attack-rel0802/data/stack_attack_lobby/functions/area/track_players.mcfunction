# handles players within the lobby area.
# @s = players within 8 blocks of a lobby, not in spectator mode
# at @s
# called by stack_attack_lobby:lobby

# handle players that aren't in the lobby yet
execute as @s[tag=!sat_waiting_for_game,gamemode=!spectator] run function stack_attack_lobby:area/new_players

# handle players that are waiting for a game to start
execute as @s[tag=sat_waiting_for_game] run function stack_attack_lobby:area/players_in_queue

# keep track of players near lobbies
tag @s[gamemode=!spectator] add sat_near_lobby
