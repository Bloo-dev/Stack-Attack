# sets a default. Called by chat ui in advanced settings. Function necessary for sound.

# click sound effect
playsound minecraft:ui.button.click player @s ~ ~ ~ 0.2 0.4

# set default
scoreboard players set required_players sat_data 4

# send chat feedback
tellraw @s ["",{"text":"["},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"},{"text":"] ","color":"none"},{"text":"Set ","color":"white"},{"text":"required_players ","color":"green"},{"text":"to ","color":"white"},{"text":"4 ","color":"green"},{"text":"!","color":"none"}]
