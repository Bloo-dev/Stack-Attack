# cyclic function that loops to ensure not to add more than max_players sat_data to the "join arena" queue
# @s = a player requesting to start a game
# at @s
# called by stack_attack_lobby:launch/register_launch


# count how many players were added
scoreboard players add joined_players sat_data 1

tag @p[tag=sat_waiting_for_game,tag=!sat_joining_game] add sat_joining_game

# repeat until max players is reached (will just loop and do nothing if there aren't enough players on the server)
execute if score joined_players sat_data < max_players sat_data run function stack_attack_lobby:launch/mark_players

# reset fake players
scoreboard players reset joined_players sat_data
