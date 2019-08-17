# @s = Players that quit their session during a game of stack attack
# at most negative corner of some arena's walls on arena floor. DO NOT RELY ON THIS LOCATION
# called by stack_attack_arena:players/leave_arena

# announce to self
execute if entity @s[tag=sat_payed_fee] run function stack_attack_arena:players/announcements/death/lost_points
execute unless entity @s[tag=sat_payed_fee] run tellraw @s ["",{"text":"["},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"},{"text":"] ","color":"none"},{"text":"You were kicked from Stack Attack!","color":"red"}]

# teleport to random lobby
tp @e[type=area_effect_cloud,tag=sat_lobby_center,limit=1,sort=random]

# clear inventory
clear @s

# set the gamemode depending on the default_gamemode sat_data score.
execute if score default_gamemode sat_data matches 0 run gamemode survival
execute if score default_gamemode sat_data matches 1 run gamemode creative
execute if score default_gamemode sat_data matches 2 run gamemode adventure
execute if score default_gamemode sat_data matches 3 run gamemode spectator

# remove player from the game
tag @s remove sat_in_game
tag @s remove sat_payed_fee

# reset own score
scoreboard players reset @s sat_quit_game
