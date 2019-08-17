# @s = operator player from reload chat user_interface
# at @s
# called by stack_attack_framework:user_interface/setup_screen

# click sound effect
playsound minecraft:ui.button.click player @s ~ ~ ~ 0.2 0.4

# print emtpy line
tellraw @s [""]

# explain what stack attack is
tellraw @s ["",{"text":"["},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"},{"text":"] ","color":"none"},{"text":"Welcome to Stack Attack! Stack Attack is an all self-contained multiplayer game for 4 or more players. Stack Attack can run on any world and will not mess with any of your gameplay outside the dedicated Stack Attack arenas, here's how to get started:","color":"green"}]

# outline how to get it set up
tellraw @s ["",{"text":"["},{"text":"1","color":"yellow"},{"text":"]: ","color":"none"},{"text":"Create at least one lobby using the buttons above. Lobbies can not overlap, however, you can have however many you want and the signs can be moved around within the lobby to suite your build.","color":"none"}]
tellraw @s ["",{"text":"["},{"text":"2","color":"yellow"},{"text":"]: ","color":"none"},{"text":"Create at least one arena using the buttons above. You can have however many arenas you want, one arena fits 4 to 8 players. Make sure to extend the arena's barrier sleeve up to the sky limit using the ","color":"none"},{"text":"stack_attack_arena:arena_top ","color":"green"},{"text":"structure. A structure block for both the base and the top will be placed and configured for you.","color":"none"}]
tellraw @s ["",{"text":"["},{"text":"3","color":"yellow"},{"text":"]: ","color":"none"},{"text":"That's it! You're now ready to go! If you want to tweak things further, check out ","color":"none"},{"text":"these","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/function stack_attack_framework:user_interface/advanced_settings"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click here to show advanced settings."}]}}},{"text":" settings.","color":"none","underlined":false}]

# print emtpy line
tellraw @s [""]
