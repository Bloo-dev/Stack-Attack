# handles arenas with sat_arena_state=3 "ended"
# @s = arenas with sat_arena_state 3
# at most negative corner of arena walls on arena floor
# called by stack_attack_arena:round/timer

# complete immediate clean up actions
execute if score @s sat_round_timer matches ..29999 run function stack_attack_arena:round/clean_up/immediate

# complete delayed clean up actions
execute if score @s sat_round_timer matches 30014.. run function stack_attack_arena:round/clean_up/delayed
