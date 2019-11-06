# @s = players that used the second chance power up
# at most negative corner of some arena's walls on arena floor. DO NOT RELY ON THIS POSITION.
# called by stack_attack_arena:round/20hz

# effects
effect give @s levitation 1 7 true
effect give @s resistance 1 20 true

# reset own score
scoreboard players reset @s sat_totem
