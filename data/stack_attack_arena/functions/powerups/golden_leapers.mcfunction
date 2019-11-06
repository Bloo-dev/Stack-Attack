# @s = player holding this powerup in their offhand
# at most negative corner of arena walls on arena floor
# called by stack_attack_arena:powerups/check_players

# clear off-hand
replaceitem entity @s weapon.offhand air

# clear other jump boosts (to counteract sticky feet)
effect clear @s minecraft:jump_boost
effect clear @s minecraft:unluck

# apply effect
effect give @s minecraft:jump_boost 5 4

# set scoreboard flag
scoreboard players set used_powerup sat_data 1
