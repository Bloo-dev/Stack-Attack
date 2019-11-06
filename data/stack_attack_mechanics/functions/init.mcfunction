#announce module installation
tellraw @a[gamemode=creative] ["",{"text":"[Stack Attack]: Setting Constants..."}]
execute unless entity @p run say Stack Attack: Setting Constants...

#declare and initialise scoreboards and settings
scoreboard players set stack_attack_mechanics sat_modules 1
scoreboard players set stack_attack_mechanics sat_clock_tick 0

scoreboard objectives add sat_data dummy
scoreboard objectives add sat_join_queue trigger
scoreboard objectives add sat_start_game trigger
scoreboard objectives add sat_arena_state dummy
scoreboard objectives add sat_round_timer dummy
scoreboard objectives add sat_leaderboard dummy [{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"}]
scoreboard objectives add sat_hunger food
scoreboard objectives add sat_match_value dummy
scoreboard objectives add sat_deaths deathCount
scoreboard objectives add sat_quit_game minecraft.custom:minecraft.leave_game
scoreboard objectives add sat_totem minecraft.used:minecraft.totem_of_undying
scoreboard objectives add sat_abyss_timer dummy
scoreboard objectives add sat_drop_timer dummy
scoreboard objectives add sat_random_value dummy
scoreboard objectives add sat_health health
scoreboard objectives add sat_sneak_time minecraft.custom:minecraft.sneak_time
scoreboard objectives add sat_games_won dummy [{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"},{"text":" Victories","color":"green"}]
scoreboard objectives add sat_games_played dummy [{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"},{"text":" Games Played","color":"green"}]

# constants
scoreboard players set required_players sat_data 4
scoreboard players set max_players sat_data 8
scoreboard players set #10 sat_data 10
scoreboard players set #1 sat_data 1
scoreboard players set default_gamemode sat_data 0

# gamerules
gamerule commandBlockOutput false

#announce success
tellraw @a[gamemode=creative] ["",{"text":"[Stack Attack]: Stack Attack Installed!"}]
execute unless entity @p run say Stack Attack: Stack Attack Installed!
