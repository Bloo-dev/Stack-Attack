# @s = sat_kill_plane aec's
# at most negative corner of arena walls on arena floor
# called by stack_attack_arena:round/20hz at 20hz

# fill abyss 20 ticks after fangs
execute if score @s sat_abyss_timer matches 0.. run function stack_attack_arena:blocks/abyss/fill_delayed

# kill stray items
execute at @s positioned ~ ~-5 ~ as @e[type=item,dx=14,dy=40,dz=14] run function stack_attack_arena:blocks/kill_block_drops
