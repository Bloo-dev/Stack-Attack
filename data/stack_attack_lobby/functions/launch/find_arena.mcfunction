# search for a free arena
# @s = lobby marker
# at @s
# called by stack_attack_lobby:launch/launch_conditions

# initialise arenas that were never used before
execute as @e[type=marker,tag=sat_new_arena] run function stack_attack_arena:setup/register_new_arena

# set flag to track whether an arena was found
scoreboard players set found_arena sat_data 0

# look for an arena
execute as @e[type=marker,tag=sat_arena,scores={sat_arena_state=0},limit=1,sort=random] at @s run function stack_attack_arena:setup/prepare_entities

# announce failure to find an arena if there isn't a free arena, provide operators with the option to generate a fresh arena
execute if score found_arena sat_data matches 0 run tellraw @a[tag=sat_waiting_for_game] ["",{"text":"["},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"},{"text":"] ","color":"none"},{"text":"All arenas are currently busy. Try again later.","color":"red","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Did you know? Your server operator can add more arenas using Stack Attack's /reload help screen!"}]}}}]

# reset fake players
scoreboard players reset found_arena sat_data
