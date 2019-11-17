# Countdown
# @s = players in arenas with sat_arena_state 1, sat_round_timer=0
# at arenas with sat_arena_state 1, sat_round_timer=0
# called by stack_attack_arena:round/timer/go

# title
title @s title ["",{"text":"GO!","color":"blue"}]

# sound
execute as @s positioned ~6.5 ~2 ~6.5 run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 1.2

# calculate points that might be gained by winning
scoreboard players operation point_gain sat_match_value = match_value sat_match_value
scoreboard players operation point_gain sat_match_value -= @s sat_match_value

# send private chat message
execute if score point_gain sat_match_value matches 2.. run tellraw @s ["",{"text":"["},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"},{"text":"] ","color":"none"},{"text":"Ready, Set, Stack! A win will gain you ","color":"green"},{"score":{"name":"point_gain","objective":"sat_match_value"}},{"text":" points!","color":"green"}]
execute if score point_gain sat_match_value matches 1 run tellraw @s ["",{"text":"["},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"},{"text":"] ","color":"none"},{"text":"Ready, Set, Stack! A win will gain you ","color":"green"},{"score":{"name":"point_gain","objective":"sat_match_value"}},{"text":" point!","color":"green"}]
execute if score point_gain sat_match_value matches 0 run tellraw @s ["",{"text":"["},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"},{"text":"] ","color":"none"},{"text":"Ready, Set, Stack! A win will ","color":"green"},{"text":"not ","color":"none"},{"text":"gain you any points. ","color":"green"}]
