# @s = players joining a game for the first time, already spread to their arena
# at the arena marker's location
# called by stack_attack_arena:setup/prepare_players

# hand out initial points
scoreboard players set @s sat_leaderboard 8

# grant advacnement
advancement grant @s only stack_attack_arena:root
