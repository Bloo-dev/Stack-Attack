# @s = lobby marker
# at @s
# called by stack_attack_lobby:lobby

# look for a free arena if there are enough players around
execute if score players_in_queue sat_data >= required_players sat_data run function stack_attack_lobby:launch/find_arena

# fail if not enough players
execute if score players_in_queue sat_data < required_players sat_data run function stack_attack_lobby:launch/not_enough_players
# reset fake players
scoreboard players reset try_to_launch sat_data
