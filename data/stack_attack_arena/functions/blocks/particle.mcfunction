# @s = arenas with sat_arena_state 2
# at stack attack block drop locations in an arenas walls
# called by stack_attack_arena:round/running

execute if score @s sat_abyss_timer matches 0..3 run particle minecraft:block yellow_concrete_powder ~ ~.1 ~ 0.24 0 0.24 0 4 normal @a[distance=..16,tag=sat_in_game,nbt=!{ActiveEffects:[{Id:15b}]}]
execute if score @s sat_abyss_timer matches 4..6 run particle minecraft:block lime_concrete_powder ~ ~.1 ~ 0.24 0 0.24 0 4 normal @a[distance=..16,tag=sat_in_game,nbt=!{ActiveEffects:[{Id:15b}]}]
execute if score @s sat_abyss_timer matches 7..8 run particle minecraft:block light_blue_concrete_powder ~ ~.1 ~ 0.24 0 0.24 0 4 normal @a[distance=..16,tag=sat_in_game,nbt=!{ActiveEffects:[{Id:15b}]}]
execute if score @s sat_abyss_timer matches 9.. run particle minecraft:block pink_concrete_powder ~ ~.1 ~ 0.24 0 0.24 0 4 normal @a[distance=..16,tag=sat_in_game,nbt=!{ActiveEffects:[{Id:15b}]}]
