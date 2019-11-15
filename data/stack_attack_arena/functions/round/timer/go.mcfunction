# Countdown
# @s = arenas with sat_arena_state 1, sat_round_timer=0
# at @s
# called by stack_attack_arena:round/starting

# title
title @a[tag=sat_in_game,dx=14,dy=255,dz=14] title ["",{"text":"GO!","color":"blue"}]

# sound
execute as @a[tag=sat_in_game,dx=14,dy=255,dz=14] positioned ~6.5 ~2 ~6.5 run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 1.2

# announce pot size to participating players
execute if score @s sat_match_value matches 2.. run tellraw @a[tag=sat_in_game,dx=14,dy=255,dz=14] ["",{"text":"["},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"},{"text":"] ","color":"none"},{"text":"Ready, Set, Stack! There are ","color":"green"},{"score":{"name":"@s","objective":"sat_match_value"}},{"text":" points in the pot!","color":"green"}]
execute if score @s sat_match_value matches 1 run tellraw @a[tag=sat_in_game,dx=14,dy=255,dz=14] ["",{"text":"["},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"},{"text":"] ","color":"none"},{"text":"Ready, Set, Stack! There is ","color":"green"},{"score":{"name":"@s","objective":"sat_match_value"}},{"text":" point in the pot!","color":"green"}]

# update sat_arena_state
scoreboard players set @s sat_arena_state 2
