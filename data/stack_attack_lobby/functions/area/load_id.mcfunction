# loads the lobby id into a fake player for easy processing.
# @s = sat_lobby_center marker
# at @s
# called by stack_attack_lobby:lobby

# move id into fake player
scoreboard players operation $this_id sat_lobby_id = @s sat_lobby_id

# track nearby players
execute as @a[distance=..8] at @s run function stack_attack_lobby:area/track_players

# reset fake player
scoreboard players reset $this_id sat_lobby_id
