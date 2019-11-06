# @s = a player sneaking over the edge of a block for more than 20 ticks
# at @s
# called by stack_attack_arena:players/20hz

tp @s ~ ~-0.001 ~
scoreboard players reset @s sat_sneak_time
