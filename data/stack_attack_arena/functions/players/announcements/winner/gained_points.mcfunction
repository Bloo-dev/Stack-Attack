# @s = the last remaining player in an arena of sat_arena_state 3 ("ended") if they gained points in this match
# at @s
# called by stack_attack_arena:players/winner

# schedule subtitle
execute if score points_gained sat_data matches 2.. run title @s subtitle ["",{"text":"You've ","color":"blue","italic":true},{"text":"gained ","color":"blue","italic":true},{"score":{"name":"points_gained","objective":"sat_data"},"color":"white","italic":true},{"text":" points on the leaderboard!","color":"blue","italic":true}]
execute if score points_gained sat_data matches 1 run title @s subtitle ["",{"text":"You've ","color":"blue","italic":true},{"text":"gained ","color":"blue","italic":true},{"score":{"name":"points_gained","objective":"sat_data"},"color":"white","italic":true},{"text":" point on the leaderboard!","color":"blue","italic":true}]

# chat announcement
execute if score @s sat_leaderboard matches 2.. run tellraw @a ["",{"text":"["},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"},{"text":"] ","color":"none"},{"selector":"@s","color":"none"},{"text":" has hit ","color":"green"},{"score":{"name":"@s","objective":"sat_leaderboard"}},{"text":" points on the leaderboard!","color":"green"}]
execute if score @s sat_leaderboard matches 1 run tellraw @a ["",{"text":"["},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"},{"text":"] ","color":"none"},{"selector":"@s","color":"none"},{"text":" has hit ","color":"green"},{"score":{"name":"@s","objective":"sat_leaderboard"}},{"text":" point on the leaderboard!","color":"green"}]
