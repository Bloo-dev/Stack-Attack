# Countdown
# @s = arenas with sat_arena_state 1, sat_round_timer=0
# at @s
# called by stack_attack_arena:round/starting
say go
# calculate point gain potential for tellraw
scoreboard players operation match_value sat_match_value = @s sat_match_value

# show announcements
execute as @a[tag=sat_in_game,dx=14,dy=255,dz=14] run function stack_attack_arena:round/timer/announcements

# reset fake players
scoreboard players reset match_value sat_match_value
scoreboard players reset point_gain sat_match_value

# update sat_arena_state
scoreboard players set @s sat_arena_state 2
