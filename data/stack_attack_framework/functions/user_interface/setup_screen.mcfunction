# @s = op from chat
# at @s
# called by clicking the prompt in the reload message

# click sound effect
playsound minecraft:ui.button.click player @s ~ ~ ~ 0.2 0.4

# print emtpy line
tellraw @s [""]

tellraw @s ["",{"text":"["},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"},{"text":"] ","color":"none"},{"text":"[","color":"none"},{"text":"Add new lobby","color":"blue","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click here to create a lobby at your location."}]}},"clickEvent":{"action":"run_command","value":"/function stack_attack_lobby:creation_check"}},{"text":"] ","color":"none"},{"text":"[","color":"none"},{"text":"Add new arena","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click here to create an arena at your location."}]}},"clickEvent":{"action":"run_command","value":"/function stack_attack_arena:create_arena"}},{"text":"] ","color":"none"},{"text":"[","color":"none"},{"text":"Help","color":"light_purple","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click here for help with setting up Stack Attack. "}]}},"clickEvent":{"action":"run_command","value":"/function stack_attack_framework:user_interface/what_is_stack_attack"}},{"text":"]","color":"none"}]
tellraw @s ["",{"text":"Stack Attack 1.16, Snapshot 0517 - ","color":"gray"},{"text":"Bloo ","color":"gray","clickEvent":{"action":"open_url","value":"https://twitter.com/Bluefire610"}},{"text":"2019. Special thanks to: ","color":"gray"},{"text":"SpecialBuilder32 ","color":"gray","clickEvent":{"action":"open_url","value":"https://twitter.com/SpecialBuilder"}},{"text":"and ","color":"gray"},{"text":"ToffeeMax","color":"gray","clickEvent":{"action":"open_url","value":"https://twitter.com/ToffeeMax"}}]

# print emtpy line
tellraw @s [""]
