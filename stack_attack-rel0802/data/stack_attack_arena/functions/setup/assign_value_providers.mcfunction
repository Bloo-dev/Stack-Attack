# @s = sat_random_value_provider area_effect_clouds of one arena (some of the sat_block_drop_locations have this additional tag)
# at the arena center
# called by stack_attack_arena:setup/prepare_entities
# assign a unique value from 0 to 9 to each sat_random_value_provider in the arena
execute store result score @s sat_random_value run data get entity @s Age
scoreboard players operation @s sat_random_value %= #10 sat_data
