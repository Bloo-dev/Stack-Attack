tellraw @a ["",{"text":"["},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"},{"text":"] ","color":"none"},{"text":"Need help with setting up Stack Attack? Click here.","color":"green","clickEvent":{"action":"run_command","value":"/function stack_attack_framework:user_interface/setup_screen"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Operator permissions required.","color":"white"}]}}}]
execute unless entity @p run say Stack Attack: Reloading...

#install modules scoreboard
scoreboard objectives add sat_modules dummy

#check if Stack Attack has been used here before
execute unless score stack_attack_framework sat_modules matches 1.. run function stack_attack_framework:init

#initiate stack attack modules
function #stack_attack_framework:init_check
