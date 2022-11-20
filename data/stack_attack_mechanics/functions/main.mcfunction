# 1.25Hz main clock, pulses all components

# lobby
function stack_attack_lobby:lobby

# round timer / arena handling
execute if score arenas_active sat_data matches 1.. as @e[type=marker,tag=sat_arena,scores={sat_arena_state=1..3}] at @s align xyz positioned ~ ~2 ~ run function stack_attack_arena:round/timer

# remove in game powerup items from players not in a game. Failsafe if a player somehow manages to smuggle an item out.
execute as @a[tag=!sat_in_game,gamemode=!creative,gamemode=!spectator,nbt={Inventory:[{tag:{stack_attack:{item:"powerup"}}}]}] run function stack_attack_arena:powerups/clear

# reset automatic global statistic scoreboards
scoreboard players reset @a sat_deaths
scoreboard players reset @a sat_totem
scoreboard players reset @a sat_quit_game
scoreboard players reset @a[tag=!sat_in_game] sat_sneak_time
