# handles arenas with sat_arena_state=3 "ended" and round timer < 30000
# @s = arenas with sat_arena_state 3
# at most negative corner of arena walls on arena floor
# called by stack_attack_arena:round/ended

# try set spawn rare pinata flag
execute if score @s sat_round_timer matches 350.. run scoreboard players set summon_pinata sat_data 1

# set round timer to a high value
scoreboard players set @s sat_round_timer 30000

# store score gain into fake player
scoreboard players operation points_gained sat_data = @s sat_match_size

# handle winner
execute as @a[tag=sat_in_game,dx=14,dy=255,dz=14,limit=1,sort=arbitrary] at @s run function stack_attack_arena:players/winner


# clean up arena
kill @e[type=area_effect_cloud,tag=sat_block_drop_location,dx=14,dy=255,dz=14]
kill @e[type=item,dx=14,dy=255,dz=14]
kill @e[type=area_effect_cloud,tag=sat_kill_plane,dx=14,dy=255,dz=14]

# reset summon pinata flag
scoreboard players reset summon_pinata sat_data
