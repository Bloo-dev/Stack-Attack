#compares assigned run tick to current tick and calls main
execute if score sat_current_tick sat_clock_tick = stack_attack_mechanics sat_clock_tick run function stack_attack_mechanics:main

# 20Hz lobby operations
execute if score players_in_queue sat_data matches 1.. as @a[tag=sat_waiting_for_game] run function stack_attack_lobby:queue/20hz

# 20Hz actions on running games
execute if score arenas_active sat_data matches 1.. as @e[type=marker,tag=sat_arena,scores={sat_arena_state=2}] at @s align xyz positioned ~ ~2 ~ run function stack_attack_arena:round/20hz
