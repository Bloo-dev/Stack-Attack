# @s = arenas with sat_arena_state 2 ("running")
# at most negative corner of arena walls on arena floor
# called by stack_attack_mechanics:pulse_check at 20hz
# activated by 1 or more arenas being active, checked via the fake player arenas_active in sat_data matching 1..

# second chance powerup buffs
execute as @a[tag=sat_in_game,scores={sat_totem=1..}] run function stack_attack_arena:powerups/second_chance

# handle players inside arenas
execute as @a[tag=sat_in_game,dx=14,dy=255,dz=14] run function stack_attack_arena:players/20hz

# kill plane actions
execute as @e[type=area_effect_cloud,dx=1,dy=255,dz=1,tag=sat_kill_plane] run function stack_attack_arena:blocks/kill_plane
