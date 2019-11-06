# handles the lobby markers
# @s = lobby marker
# at @s
# called by stack_attack_lobby:lobby

# handle players nearby
execute as @a[distance=..8] at @s run function stack_attack_lobby:area/track_players

# kick players that left the lobby area from the queue and reset their triggers
#execute as @a[distance=8..] run function stack_attack_lobby:area/outside
