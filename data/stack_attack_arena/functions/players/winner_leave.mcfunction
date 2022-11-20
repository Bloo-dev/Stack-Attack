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

# teleport back to original lobby used to join
scoreboard players operation $this_id sat_lobby_id = @s sat_lobby_id
tag @s add sat_teleport_target
execute as @e[type=marker,tag=sat_lobby_center] if score @s sat_lobby_id = $this_id sat_lobby_id at @s run tp @p[tag=sat_teleport_target] @s
tag @s remove sat_teleport_target
scoreboard players reset $this_id sat_lobby_id
