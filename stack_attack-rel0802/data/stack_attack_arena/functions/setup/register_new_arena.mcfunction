# @s = arenas that were never used before, so arenas with the sat_new_arena tag
# at the lobby marker that started the arena selection
# called by stack_attack_lobby:launch/find_arena

tag @s remove sat_new_arena
scoreboard players set @s sat_arena_state 0
