#runs every tick
scoreboard players add sat_current_tick sat_clock_tick 1
execute if score sat_current_tick sat_clock_tick matches 16.. run scoreboard players set sat_current_tick sat_clock_tick 0
function #stack_attack_framework:pulse_check
