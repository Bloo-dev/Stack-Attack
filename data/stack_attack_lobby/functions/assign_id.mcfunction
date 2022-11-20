# assigns a newly created lobby marker an id. Used to teleport players back to the lobby they joined from.
# @s, at: depend on call, usually over chat.
# called by stack_attack_lobby:create_lobby

# load id from UUID
execute store result score @s sat_lobby_id run data get entity @s UUID[0]

# remove tag
tag @s remove sat_new_lobby_center
