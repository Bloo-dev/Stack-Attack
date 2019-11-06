# call this function from a sign or chat to try to join the queue.
# makes sure players can't join the queue if they have stuff in their inventory.
# @s = player to be added to the queue
# at world spawn
# called by stack_attack_lobby:area/new_players

# check for empty inventory
execute if entity @s[tag=!sat_waiting_for_game,nbt={Inventory:[]}] run function stack_attack_lobby:queue/join_queue

# return error message if one of the criteria wasn't met
execute unless entity @s[tag=sat_waiting_for_game] run tellraw @s ["",{"text":"["},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"},{"text":"] ","color":"none"},{"text":"Couldn't join. You have items on you.","color":"red"}]

# reset trigger score
scoreboard players reset @s sat_join_queue
