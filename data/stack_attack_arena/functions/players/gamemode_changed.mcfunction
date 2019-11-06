# @s = Players that changed their gamemode during a game of stack attack
# at most negative corner of some arena's walls on arena floor. DO NOT RELY ON THIS LOCATION
# called by stack_attack_arena:players/leave_arena

# announce to self
execute if entity @s[tag=sat_payed_fee] run function stack_attack_arena:players/announcements/death/lost_points
execute unless entity @s[tag=sat_payed_fee] run tellraw @s ["",{"text":"["},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"},{"text":"] ","color":"none"},{"text":"You were kicked from Stack Attack!","color":"red"}]

# remove player from the game
tag @s remove sat_in_game
tag @s remove sat_payed_fee
