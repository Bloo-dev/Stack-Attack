# handles arenas with sat_arena_state=3 "ended" and round timer = 30014
# @s = arenas with sat_arena_state 3
# at most negative corner of arena walls on arena floor
# called by stack_attack_arena:round/timer

# force-leave winner
execute as @a[tag=sat_in_game,dx=14,dy=255,dz=14,limit=1,sort=arbitrary] at @s run function stack_attack_arena:players/winner_leave

# clean up arena
kill @e[type=llama,dx=14,dy=255,dz=14]
kill @e[type=item,dx=14,dy=255,dz=14]

# clear blocks ===== THIS IS THE REASON WHY AN ARENA MUST BE ABOVE Y=62
fill ~1 ~ ~1 ~13 255 ~13 air

# reset sat_match_size
scoreboard players reset @s sat_match_size

# reset sat_arena_state
scoreboard players set @s sat_arena_state 0

# reset sat_round_timer
scoreboard players reset @s sat_round_timer

# reset sat_abyss_timer
scoreboard players reset @s sat_abyss_timer

# reset sat_drop_timer
scoreboard players reset @s sat_drop_timer

# de-register this game from the arenas_active sat_data score
scoreboard players remove arenas_active sat_data 1
