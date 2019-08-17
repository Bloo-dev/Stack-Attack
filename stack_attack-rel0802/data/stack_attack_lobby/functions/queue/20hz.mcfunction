# handles 20hz operations for players in the queue
# @s = players with the sat_waiting_for_game
# at world spawn
# called by stack_attack_framework:pulse_check

# mark players that have picked up items as "to be kicked"
execute if entity @s[nbt=!{Inventory:[]}] run tag @s add sat_leave_queue
