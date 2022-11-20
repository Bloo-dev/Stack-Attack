# to be ran manually by an operator. Places a join game sign and a lobby center AEC.
# @s, at: depend on call, usually over chat.

# click sound effect
playsound minecraft:ui.button.click player @s ~ ~ ~ 0.2 0.4

# only add lobby if the players isn't too close to an existing lobby.
scoreboard players set created_lobby sat_data 0
execute unless entity @e[type=marker,tag=sat_lobby_center,distance=..8] run function stack_attack_lobby:create_lobby

# print failure message
execute if score created_lobby sat_data matches 0 run tellraw @s ["",{"text":"["},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":" A","color":"blue"},{"text":"ttack","color":"green"},{"text":"] ","color":"none"},{"text":" Couldn't create lobby. Found an existing lobby nearby.","color":"red","clickEvent":{"action":"run_command","value":"/kill @e[tag=sat_lobby_center,distance=..10,limit=1,sort=nearest]"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to delete the closest lobby marker.","color":"red"}]}}}]
# reset fake player
scoreboard players reset created_lobby
