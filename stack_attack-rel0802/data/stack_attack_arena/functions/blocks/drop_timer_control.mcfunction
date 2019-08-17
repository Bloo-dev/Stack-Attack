# @s = arenas with sat_arena_state 2 and sat_drop_timer=0
# at most negative corner of arena walls on arena floor
# called by stack_attack_arena:round/running

# increase abyss timer
scoreboard players add @s sat_abyss_timer 1

# block dropping, spreadplayers seperate to make spread distance be useful
spreadplayers ~7.5 ~7.5 1 6 false @e[type=area_effect_cloud,tag=sat_block_drop_location,dx=14,dy=255,dz=14]
execute at @e[type=area_effect_cloud,tag=sat_block_drop_location,dx=14,dy=255,dz=14] run function stack_attack_arena:blocks/set_drop_location

# reset drop timer to a value according to sat_round_timer
scoreboard players set @s[scores={sat_round_timer=0..17}] sat_drop_timer 4
scoreboard players set @s[scores={sat_round_timer=18..82}] sat_drop_timer 3
scoreboard players set @s[scores={sat_round_timer=83..127}] sat_drop_timer 2
scoreboard players set @s[scores={sat_round_timer=128..}] sat_drop_timer 1

# abyss handling
# move fangs
execute if score @s sat_abyss_timer matches 11 as @e[type=area_effect_cloud,tag=sat_kill_plane,dx=1,dy=255,dz=1] at @s run function stack_attack_arena:blocks/abyss/move
# warning
execute if score @s sat_abyss_timer matches 10 as @e[type=area_effect_cloud,tag=sat_kill_plane,dx=1,dy=255,dz=1] at @s run summon area_effect_cloud ~6 ~0.8 ~6 {CustomName:'"The Ground is shaking!"',CustomNameVisible:1b,Particle:"crit",ReapplicationDelay:0,Radius:7f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:60,DurationOnUse:0f,Age:0,WaitTime:0,Tags:["sat_abyss_warning"]}
# reset timer
execute if score @s sat_abyss_timer matches 11 run scoreboard players set @s sat_abyss_timer 0
