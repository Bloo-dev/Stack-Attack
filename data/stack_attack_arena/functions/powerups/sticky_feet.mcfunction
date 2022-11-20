# @s = player holding this powerup in their offhand
# at most negative corner of arena walls on arena floor
# called by stack_attack_arena:powerups/check_players

# clear off-hand
item replace entity @s weapon.offhand with air

# apply effect
execute as @a[tag=sat_in_game,tag=!sat_self,dx=14,dy=255,dz=14] run function stack_attack_arena:powerups/apply_sticky_feet

# set scoreboard flag
scoreboard players set used_powerup sat_data 1
