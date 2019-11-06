# @s = lobby marker
# at @s
# called by stack_attack_lobby:launch/launch_conditions in case of a launch failure due to not enough players being around

# announce failure
tellraw @a[tag=sat_waiting_for_game] ["",{"text":"["},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"},{"text":"] ","color":"none"},{"text":"Not enough players to start a game! (","color":"red"},{"score":{"name":"players_in_queue","objective":"sat_data"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Players in queue","color":"white"}]}},"color":"red"},{"text":"/","color":"red"},{"score":{"name":"required_players","objective":"sat_data"},"color":"red","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Players required","color":"white"}]}}},{"text":")","color":"red"}]

# cancel sat_joining_game flag
tag @a[tag=sat_waiting_for_game,tag=sat_joining_game] remove sat_joining_game
