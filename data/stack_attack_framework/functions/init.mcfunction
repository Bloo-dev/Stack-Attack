#This function runs if stack attack has never been used before.
#It adds global scoreboards and a clock framework for stack attack to run off of.

tellraw @a[gamemode=creative] ["",{"text":"[Stack Attack]: Thanks for installing Stack Attack. Initialising...","color":"green"}]
execute unless entity @p run say Thanks for installing Stack Attack. Initialising...

# ============================ SCOREBOARDS ============================
scoreboard objectives add sat_clock_tick dummy

# =========================== FAKE PLAYERS ============================
scoreboard players set stack_attack_framework sat_modules 1
