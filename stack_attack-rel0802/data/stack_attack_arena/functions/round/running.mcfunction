# handles arenas with sat_arena_state=2 "running"
# @s = arenas with sat_arena_state 2
# at most negative corner of arena walls on arena floor
# called by stack_attack_arena:round/timer

# grant saturation to hungry players and check for selected off-hand power up. Also counts players in the arena
scoreboard players set players_in_arena sat_match_size 0
execute as @a[tag=sat_in_game,dx=14,dy=255,dz=14] run function stack_attack_arena:players/in_game_player_operations
# -> amount of players in arena is now stored in players_in_arena sat_match_size

# emergency condition: kill all participating players in the region above y=250
execute positioned ~ 250 ~ run kill @a[tag=sat_in_game,dx=14,dy=5,dz=14]

# update sat_arena_state to 3 ("ended") in case there is just one player left === WIN CONDITION ===
execute if score players_in_arena sat_match_size matches ..1 run scoreboard players set @s sat_arena_state 3

# reset fake players
scoreboard players reset players_in_arena sat_match_size

# control drop timer
execute if score @s sat_drop_timer matches 0 run function stack_attack_arena:blocks/drop_timer_control

# display particles on drop locations
execute at @e[type=area_effect_cloud,tag=sat_block_drop_particle,dx=14,dy=255,dz=14] run function stack_attack_arena:blocks/particle

# play digging sound warning
execute if score @s sat_abyss_timer matches 10 run playsound block.gravel.step block @a[tag=sat_in_game,dx=14,dy=255,dz=14] ~ ~ ~ 1 0.01

# decrease drop timer
scoreboard players remove @s[scores={sat_drop_timer=1..}] sat_drop_timer 1

# summon fangs on items on the abyss
execute as @e[type=item,dx=14,dy=255,dz=14] at @s if block ~ ~-.55 ~ black_terracotta align xyz positioned ~.5 ~ ~.5 run function stack_attack_arena:blocks/abyss/eat_item
