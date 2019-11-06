# @s = players joining a game with at least 1 point on the leaderboard
# at the arena marker's location
# called by stack_attack_arena:setup/prepare_players

# add 1 to total match size
scoreboard players add players_in_arena sat_match_size 1

# pay the fee
scoreboard players remove @s sat_leaderboard 1

# remember this
tag @s add sat_payed_fee
