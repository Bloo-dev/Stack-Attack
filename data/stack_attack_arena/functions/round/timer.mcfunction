# handles arenas. Only called if there is at least one arena active.
# @s = arenas with sat_arena_state 1..3 (at least "starting")
# at most negative corner of arena walls on arena floor
# called by stack_attack_mechanics:main

# add 1 to the timer
scoreboard players add @s sat_round_timer 1

# remove non-autherized players from arenas
execute as @a[tag=!sat_in_game,tag=!sat_joining_game,gamemode=!spectator,gamemode=!creative,dx=14,dy=255,dz=14] unless score @s sat_health matches 0 run function stack_attack_arena:players/not_authorized

# kick players from game if they changed gamemode /quit their session / died
execute as @a[tag=sat_in_game] run function stack_attack_arena:players/leave_arena

# handle starting games (sat_arena_state=1)
execute if score @s sat_arena_state matches 1 run function stack_attack_arena:round/starting

# handle running games (sat_arena_state=2)
execute if score @s sat_arena_state matches 2 run function stack_attack_arena:round/running

# handle ended games (sat_arena_state=3)
execute if score @s sat_arena_state matches 3 run function stack_attack_arena:round/ended
