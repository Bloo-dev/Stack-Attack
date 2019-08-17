# handles arenas with sat_arena_state=1 "starting"
# @s = arenas with sat_arena_state 1
# # at most negative corner of arena walls on arena floor
# called by stack_attack_arena:round/timer

# do a countdown
execute if score @s sat_round_timer matches -3 run function stack_attack_arena:round/timer/3
execute if score @s sat_round_timer matches -2 run function stack_attack_arena:round/timer/2
execute if score @s sat_round_timer matches -1 run function stack_attack_arena:round/timer/1

# end countdown, also set arena state to 2 ("running")
execute if score @s sat_round_timer matches 0 run function stack_attack_arena:round/timer/go
