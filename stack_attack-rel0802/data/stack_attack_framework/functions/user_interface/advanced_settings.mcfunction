# @s = operator player from reload chat user_interface
# at @s
# called by stack_attack_framework:user_interface/what_is_stack_attack

# click sound effect
playsound minecraft:ui.button.click player @s ~ ~ ~ 0.2 0.4

# print emtpy line
tellraw @s [""]

# list settings
tellraw @s ["",{"text":"["},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"},{"text":"] ","color":"none"},{"text":"Advanced Scoreboard Settings:","color":"green"}]

# settings
tellraw @s ["",{"text":"["},{"text":"Max Players Per Arena","color":"yellow"},{"text":"]: ","color":"none"},{"text":"Set ","clickEvent":{"action":"suggest_command","value":"/scoreboard players set max_players sat_data "},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to queue command into chat."}]}},"color":"none"},{"text":"max_players ","color":"green","clickEvent":{"action":"suggest_command","value":"/scoreboard players set max_players sat_data "},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to queue command into chat."}]}}},{"text":"in ","clickEvent":{"action":"suggest_command","value":"/scoreboard players set max_players sat_data "},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to queue command into chat."}]}},"color":"none"},{"text":"sat_data ","color":"green","clickEvent":{"action":"suggest_command","value":"/scoreboard players set max_players sat_data "},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to queue command into chat."}]}}},{"text":"to adjust the max amount of players per arena. ","clickEvent":{"action":"suggest_command","value":"/scoreboard players set max_players sat_data "},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to queue command into chat."}]}},"color":"none"},{"text":"Default: 8","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/function stack_attack_framework:user_interface/default_values/max_players"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to restore default."}]}}}]
tellraw @s ["",{"text":"["},{"text":"Min Players Per Arena","color":"yellow"},{"text":"]: ","color":"none"},{"text":"Set ","clickEvent":{"action":"suggest_command","value":"/scoreboard players set required_players sat_data "},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to queue command into chat."}]}},"color":"none"},{"text":"required_players ","color":"green","clickEvent":{"action":"suggest_command","value":"/scoreboard players set required_players sat_data "},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to queue command into chat."}]}}},{"text":"in ","clickEvent":{"action":"suggest_command","value":"/scoreboard players set required_players sat_data "},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to queue command into chat."}]}},"color":"none"},{"text":"sat_data ","color":"green","clickEvent":{"action":"suggest_command","value":"/scoreboard players set required_players sat_data "},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to queue command into chat."}]}}},{"text":"to adjust the amount of players required to start a game. ","clickEvent":{"action":"suggest_command","value":"/scoreboard players set required_players sat_data "},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to queue command into chat."}]}},"color":"none"},{"text":"Default: 4","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/function stack_attack_framework:user_interface/default_values/required_players"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to restore default."}]}}}]
tellraw @s ["",{"text":"["},{"text":"Post-Game Gamemode","color":"yellow"},{"text":"]: ","color":"none"},{"text":"Set ","clickEvent":{"action":"suggest_command","value":"/scoreboard players set default_gamemode sat_data "},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to queue command into chat."}]}},"color":"none"},{"text":"default_gamemode ","color":"green","clickEvent":{"action":"suggest_command","value":"/scoreboard players set default_gamemode sat_data "},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to queue command into chat."}]}}},{"text":"in ","clickEvent":{"action":"suggest_command","value":"/scoreboard players set default_gamemode sat_data "},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to queue command into chat."}]}},"color":"none"},{"text":"sat_data ","color":"green","clickEvent":{"action":"suggest_command","value":"/scoreboard players set default_gamemode sat_data "},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to queue command into chat."}]}}},{"text":"to change the gamemode players get set to after a game of stack attack. \n","clickEvent":{"action":"suggest_command","value":"/scoreboard players set default_gamemode sat_data "},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to queue command into chat."}]}},"color":"none"},{"text":" Default: ","color":"none"},{"text":"[Survival]\n","color":"green","clickEvent":{"action":"run_command","value":"/function stack_attack_framework:user_interface/default_values/gamemode_survival"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to restore default."}]}}},{"text":" Other Options: ","color":"none"},{"text":"[Creative] ","color":"green","clickEvent":{"action":"run_command","value":"/function stack_attack_framework:user_interface/default_values/gamemode_creative"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to set the post-game gamemode to Creative."}]}}},{"text":"[Adventure] ","color":"green","clickEvent":{"action":"run_command","value":"/function stack_attack_framework:user_interface/default_values/gamemode_adventure"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to set the post-game gamemode to Adventure."}]}}},{"text":"[Spectator]","color":"green","clickEvent":{"action":"run_command","value":"/function stack_attack_framework:user_interface/default_values/gamemode_spectator"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to set the post-game gamemode to Spectator."}]}}}]


# print emtpy line
tellraw @s [""]