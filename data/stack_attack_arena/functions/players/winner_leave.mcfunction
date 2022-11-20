# @s = the last remaining player in an arena of sat_arena_state 3 ("ended")
# at @s
# called by stack_attack_arena:round/ended after delay

# clear inventory
clear @s

# clear effects
effect clear @s

# remove tags
tag @s remove sat_in_game

# set the gamemode depending on the default_gamemode sat_data score.
execute if score default_gamemode sat_data matches 0 run gamemode survival
execute if score default_gamemode sat_data matches 1 run gamemode creative
execute if score default_gamemode sat_data matches 2 run gamemode adventure
execute if score default_gamemode sat_data matches 3 run gamemode spectator

# teleport to random lobby
tp @e[type=marker,tag=sat_lobby_center,limit=1,sort=random]
