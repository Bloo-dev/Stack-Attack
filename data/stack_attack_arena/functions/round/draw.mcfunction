# handles arenas with sat_arena_state=2 "running" and 0 players
# @s = arenas with sat_arena_state 2 and 0 players
# at most negative corner of arena walls on arena floor
# called by stack_attack_arena:round/running

# move arena points into fake player score for next game
scoreboard players operation legacy_match_value sat_match_value += @s sat_match_value

# set round ended flag
scoreboard players set @s sat_arena_state 3
