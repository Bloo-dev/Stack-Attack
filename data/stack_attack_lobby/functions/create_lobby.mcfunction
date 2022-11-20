# to be ran manually by an operator. Places a join game sign and a lobby center AEC.
# @s, at: depend on call, usually over chat.

# set success flag
scoreboard players set created_lobby sat_data 1

#place join game sign
setblock ~ ~ ~ dark_oak_sign{Text1:"[{\"text\":\"S\",\"color\":\"yellow\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger sat_join_queue add 1\"}},{\"text\":\"tack \",\"color\":\"light_purple\"},{\"text\":\" A\",\"color\":\"blue\"},{\"text\":\"ttack\",\"color\":\"green\"}]",Text2:"[\"\"]",Text3:"[\"\",{\"text\":\"Join Queue\",\"color\":\"white\"}]",id:"Sign"}

#place start game sign
setblock ~ ~ ~-2 dark_oak_sign{Text1:"[{\"text\":\"S\",\"color\":\"yellow\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger sat_start_game add 1\"}},{\"text\":\"tack \",\"color\":\"light_purple\"},{\"text\":\" A\",\"color\":\"blue\"},{\"text\":\"ttack\",\"color\":\"green\"}]",Text2:"[\"\"]",Text3:"[\"\",{\"text\":\"Start Game\",\"color\":\"white\"}]",id:"Sign"}


# place lobby center marker
execute align xyz positioned ~.5 ~-.5 ~.5 run summon marker ~ ~1 ~ {CustomName:'"Stack Attack Lobby Center"',Tags:["sat_lobby_center"]}
execute align xyz positioned ~.5 ~-.5 ~.5 run particle minecraft:end_rod ~ ~ ~ .1 0 .1 0.05 30

# print tellraw to give operators feedback / to allow them to remove the closest lobby marker.
tellraw @s ["",{"text":"["},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":" A","color":"blue"},{"text":"ttack","color":"green"},{"text":"] ","color":"none"},{"text":" Created a new lobby!","color":"green","clickEvent":{"action":"run_command","value":"/kill @e[tag=sat_lobby_center,distance=..10,limit=1,sort=nearest]"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to delete the closest lobby marker.","color":"red"}]}}}]
