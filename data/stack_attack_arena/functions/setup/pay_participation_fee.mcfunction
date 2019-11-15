# @s = players joining a game with at least 1 point on the leaderboard
# at the arena marker's location
# called by stack_attack_arena:setup/prepare_players

# calculate participation cost
scoreboard players operation participation_fee sat_match_value = @s sat_leaderboard
scoreboard players operation participation_fee sat_match_value /= #10 sat_data
scoreboard players add participation_fee sat_match_value 1

# add participation cost to match value
scoreboard players operation match_value sat_match_value += participation_fee sat_match_value

# pay the fee
scoreboard players operation @s sat_leaderboard -= participation_fee sat_match_value

# store value of payed fee
scoreboard players operation @s sat_match_value = participation_fee sat_match_value

# reset fake player
scoreboard players reset participation_fee sat_match_value
