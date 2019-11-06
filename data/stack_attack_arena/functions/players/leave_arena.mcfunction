# @s = Players that are playing stack attack (sat_in_game)
# at most negative corner of some arena's walls on arena floor. DO NOT RELY ON THIS LOCATION
# called by stack_attack_arena:round/running AND stack_attack_arena:round/starting

# check for leaving via gamemode change
execute if entity @s[gamemode=!adventure] run function stack_attack_arena:players/gamemode_changed

# check for leaving via death
execute if score @s sat_deaths matches 1.. run function stack_attack_arena:players/death

# check for leaving via quit session
execute if score @s sat_quit_game matches 1.. run function stack_attack_arena:players/quit_game
