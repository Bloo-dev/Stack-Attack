# @s the person who's pressed the start game sign
# at @s
# called by stack_attack_lobby:area/players_in_queue

# click sound effect
playsound minecraft:ui.button.click player @s ~ ~ ~ 0.2 0.4

# set fake player flag
scoreboard players set try_to_launch sat_data 1

# add self to players to be joined into a game
tag @s add sat_joining_game

# mark players around this player to be joined into a game
function stack_attack_lobby:launch/mark_players

# reset press score and disable trigger
scoreboard players reset @s sat_start_game
