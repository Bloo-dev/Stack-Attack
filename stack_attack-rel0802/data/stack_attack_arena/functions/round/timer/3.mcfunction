# Countdown
# @s = arenas with sat_arena_state 1, sat_round_timer=-3
# at @s
# called by stack_attack_arena:round/starting

# title
title @a[tag=sat_in_game,dx=14,dy=255,dz=14] title ["",{"text":"3","color":"green"}]

# sound
execute as @a[tag=sat_in_game,dx=14,dy=255,dz=14] positioned ~6.5 ~2 ~6.5 run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 0.6
