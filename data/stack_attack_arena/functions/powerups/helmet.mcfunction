# @s = player holding this powerup in their offhand
# at most negative corner of arena walls on arena floor
# called by stack_attack_arena:powerups/check_players

# clear off-hand
item replace entity @s weapon.offhand with air

# apply effect
effect give @a[tag=sat_in_game,tag=!sat_self,dx=14,dy=255,dz=14,limit=1,sort=random] minecraft:blindness 8 1

# set scoreboard flag
scoreboard players set used_powerup sat_data 1
