# @s = players in the queue that have clicked the join game sign
# at @s
# called by stack_attack_lobby:area/players_in_queue

# click sound effect
playsound minecraft:ui.button.click player @s ~ ~ ~ 0.2 0.4

# announce not enough players yet
execute if score players_in_queue sat_data < required_players sat_data run tellraw @s ["",{"text":"["},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"},{"text":"] ","color":"none"},{"text":"Currently queued up: ","color":"green"},{"score":{"name":"players_in_queue","objective":"sat_data"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Not enough players in queue","color":"white"}]}},"color":"red"},{"text":"/","color":"green"},{"score":{"name":"max_players","objective":"sat_data"},"color":"green","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Max players per arena","color":"white"}]}}}]

# announce game start possible
execute if score players_in_queue sat_data >= required_players sat_data run tellraw @s ["",{"text":"["},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"},{"text":"] ","color":"none"},{"text":"Currently queued up: ","color":"green"},{"score":{"name":"players_in_queue","objective":"sat_data"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Enough players in queue to start a game","color":"white"}]}},"color":"green"},{"text":"/","color":"green"},{"score":{"name":"max_players","objective":"sat_data"},"color":"green","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Max players per arena","color":"white"}]}}}]
