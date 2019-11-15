# handles arenas with sat_arena_state=2 "running" and 0 players
# @s = arenas with sat_arena_state 2 and 0 players
# at most negative corner of arena walls on arena floor
# called by stack_attack_arena:round/running

# move arena points into fake player score for next game
scoreboard players operation legacy_match_value sat_match_value += @s sat_match_value

# chat announcement
tellraw @a ["",{"text":"["},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"},{"text":"] ","color":"none"},{"text":"A game of ","color":"green"},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"},{"text":" ended in a draw!","color":"green"}]

# set round ended flag
scoreboard players set @s sat_arena_state 3
