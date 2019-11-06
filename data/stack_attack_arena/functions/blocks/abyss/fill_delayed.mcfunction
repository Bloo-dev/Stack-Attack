# @s = sat_kill_plane with sat_abyss_timer score of 0..
# at @s
# called by stack_attack_arena:round/20hz

# count up
scoreboard players add @s sat_abyss_timer 1

# reset score
execute if score @s sat_abyss_timer matches 20.. at @s run function stack_attack_arena:blocks/abyss/fill_abyss
