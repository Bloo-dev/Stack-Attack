# @s = players with sat_in_game in an arena in state 2
# at most negative corner of arena walls on arena floor
# called by stack_attack_arena:round/running

# grant saturation to hungry players
effect give @s[scores={sat_hunger=..10}] saturation 2 0 true

# disable PvP for players NOT holding the Terminator 4
effect give @s minecraft:weakness 12 5 true

# count players in arena (executes this for each player in the arena)
scoreboard players add players_in_arena sat_match_size 1

# check for existence of an off-hand item
execute if entity @s[nbt={Inventory:[{Slot:-106b}]}] run function stack_attack_arena:powerups/check_players

# abyss first encounter warning sound
execute if entity @e[type=area_effect_cloud,tag=sat_abyss_warning,dx=14,dy=0,dz=14] run playsound block.gravel.step block @s ~ ~10000 ~ 0 1 0.001
