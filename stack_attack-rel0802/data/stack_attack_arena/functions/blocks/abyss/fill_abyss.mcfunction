# @s = sat_kill_plane with sat_abyss_timer score of 20..
# at @s
# called by stack_attack_arena:blocks/abyss/fill_delayed

# fill blocks and reset score
scoreboard players reset @s sat_abyss_timer
fill ~ ~-1 ~ ~12 ~-3 ~12 black_terracotta replace #stack_attack_arena:fallen_blocks
