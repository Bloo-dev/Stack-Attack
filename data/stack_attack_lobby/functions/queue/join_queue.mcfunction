# @s = player to be added to the queue, not in spectator and with an empty inventory
# at not specified (dependent on caller of join_conditions)
# ran from stack_attack_lobby:queue/join_conditions

# join queue
tag @s add sat_waiting_for_game

# click sound effect
playsound minecraft:ui.button.click player @s ~ ~ ~ 0.2 0.4

# update amount of players in queue
scoreboard players add players_in_queue sat_data 1

# announce not enough players yet
execute if score players_in_queue sat_data < required_players sat_data run tellraw @a[tag=sat_waiting_for_game] ["",{"text":"["},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"},{"text":"] ","color":"none"},{"selector":"@s","color":"none"},{"text":" queued up! (","color":"green"},{"score":{"name":"players_in_queue","objective":"sat_data"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Not enough players in queue","color":"white"}]}},"color":"red"},{"text":"/","color":"green"},{"score":{"name":"max_players","objective":"sat_data"},"color":"green","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Max players per arena","color":"white"}]}}},{"text":")","color":"green"}]

# announce game start possible
execute if score players_in_queue sat_data >= required_players sat_data run tellraw @a[tag=sat_waiting_for_game] ["",{"text":"["},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"},{"text":"] ","color":"none"},{"selector":"@s","color":"none"},{"text":" queued up! (","color":"green"},{"score":{"name":"players_in_queue","objective":"sat_data"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Enough players in queue to start a game","color":"white"}]}},"color":"green"},{"text":"/","color":"green"},{"score":{"name":"max_players","objective":"sat_data"},"color":"green","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Max players per arena","color":"white"}]}}},{"text":")","color":"green"}]
