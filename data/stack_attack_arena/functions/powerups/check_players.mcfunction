# @s = sat_in_game players with an item in their offhand
# at most negative corner of arena walls on arena floor
# called by stack_attack_arena:players/in_game_player_operations

# add tag to prevent self-targeting
tag @s add sat_self

# set fake player for slight performance gain
scoreboard players set used_powerup sat_data 0

# check off-hand item powerup id
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{stack_attack:{item:"powerup",powerup:"golden_leapers"}}}]}] run function stack_attack_arena:powerups/golden_leapers
execute unless score used_powerup sat_data matches 1 if entity @s[nbt={Inventory:[{Slot:-106b,tag:{stack_attack:{item:"powerup",powerup:"sticky_feet"}}}]}] run function stack_attack_arena:powerups/sticky_feet
execute unless score used_powerup sat_data matches 1 if entity @s[nbt={Inventory:[{Slot:-106b,tag:{stack_attack:{item:"powerup",powerup:"helmet"}}}]}] run function stack_attack_arena:powerups/helmet
execute unless score used_powerup sat_data matches 1 if entity @s[nbt={Inventory:[{Slot:-106b,tag:{stack_attack:{item:"powerup",powerup:"pinatas_revenge"}}}]}] run function stack_attack_arena:powerups/pinatas_revenge

# playsound if a powerup was used
execute if score used_powerup sat_data matches 1 run playsound minecraft:block.enchantment_table.use block @a[tag=sat_in_game,dx=14,dy=255,dz=14] ~ 10000 ~ 0.5 1 0.5

# reset fake player and self tag
scoreboard players reset used_powerup sat_data
tag @s remove sat_self
