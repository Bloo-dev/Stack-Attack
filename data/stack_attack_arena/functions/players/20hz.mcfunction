# @s = sat_in_game players in an arena
# at most negative corner of the arena's walls on arena floor
# called by stack_attack_arena:round/20hz

# timed edging
execute if score @s sat_sneak_time matches 20.. at @s if block ~ ~-1 ~ #stack_attack_arena:air run function stack_attack_arena:players/timed_edging
execute at @s unless block ~ ~-1 ~ #stack_attack_arena:air run scoreboard players reset @s sat_sneak_time

# effect players on the abyss
execute at @s if block ~ ~-.65 ~ black_terracotta align xyz positioned ~.5 ~ ~.5 unless entity @e[type=area_effect_cloud,tag=sat_abyss_fang,dx=0,dy=0,dz=0] run function stack_attack_arena:blocks/abyss/eat_player
