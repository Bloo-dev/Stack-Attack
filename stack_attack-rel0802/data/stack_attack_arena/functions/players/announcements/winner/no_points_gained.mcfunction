# @s = the last remaining player in an arena of sat_arena_state 3 ("ended") if they haven't gained points in this match
# at @s
# called by stack_attack_arena:players/winner

# schedule subtitle
title @s subtitle ["",{"text":"You haven't gained any points on the leaderboard this match.","color":"blue","italic":true}]

# announce
tellraw @a ["",{"text":"["},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"},{"text":"] ","color":"none"},{"selector":"@s","color":"none"},{"text":" has won a game of \n ","color":"green"},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"},{"text":" but has not gained any points on the leaderboard.","color":"green"}]
