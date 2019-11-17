# Countdown
# @s = arenas with sat_arena_state 1, sat_round_timer=-1
# at @s
# called by stack_attack_arena:round/starting

# title
title @s title ["",{"text":"1","color":"red"}]

# sound
execute as @s positioned ~6.5 ~2 ~6.5 run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 0.6
