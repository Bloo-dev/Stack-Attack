# handles players within the lobby area that are in the queue
# @s = players within 8 blocks of a lobby with the sat_waiting_for_game tag
# at @s
# called by stack_attack_lobby:area/track_players

# play in-lobby particles
particle minecraft:block lime_concrete ~ ~1.0 ~ 0.4 0.8 0.4 0.2 2
particle minecraft:block pink_concrete ~ ~1.0 ~ 0.4 0.8 0.4 0.2 2
particle minecraft:block light_blue_concrete ~ ~1.0 ~ 0.4 0.8 0.4 0.2 2
particle minecraft:block yellow_concrete ~ ~1.0 ~ 0.4 0.8 0.4 0.2 2

# effect with regen and saturation
effect give @s minecraft:regeneration 3 0 true
effect give @s minecraft:saturation 2 0 true

# enable join game trigger to print out lobby info if already joined players click the sign
execute if score @s sat_join_queue matches 1.. run function stack_attack_lobby:queue/show_queue_info
scoreboard players reset @s sat_join_queue
scoreboard players enable @s sat_join_queue

# enable start game trigger for waiting player
scoreboard players enable @s sat_start_game

# kick players that switched to spectator mode
execute if entity @s[gamemode=spectator] run function stack_attack_lobby:queue/leave_queue_generic

# kick players that picked stuff up
execute if entity @s[tag=sat_leave_queue] run function stack_attack_lobby:queue/leave_queue_items

# check whether the player started the game, make sure player wasn't kicked, hence check the tag
execute if score @s[tag=sat_waiting_for_game] sat_start_game matches 1.. run function stack_attack_lobby:launch/register_launch
