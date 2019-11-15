# @s = a random empty arena to be prepared
# at @s
# called by stack_attack_lobby:launch/find_arena

# summon stepper for kill plane raising and fang spawning
summon area_effect_cloud ~1 ~2 ~1 {CustomName:'"Stack Attack Kill Plane"',Particle:"block air",Tags:["sat_kill_plane"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

# summon 14 Block Drop Location Markers
summon area_effect_cloud ~7.5 ~2 ~7.5 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Particle:"block air",CustomName:'"Stack Attack Block Drop Location"',Tags:["sat_block_drop_location","sat_random_value_provider"]}
summon area_effect_cloud ~7.5 ~2 ~7.5 {Age:-2147483647,Duration:-1,WaitTime:-2147483648,Particle:"block air",CustomName:'"Stack Attack Block Drop Location"',Tags:["sat_block_drop_location","sat_random_value_provider"]}
summon area_effect_cloud ~7.5 ~2 ~7.5 {Age:-2147483646,Duration:-1,WaitTime:-2147483648,Particle:"block air",CustomName:'"Stack Attack Block Drop Location"',Tags:["sat_block_drop_location","sat_random_value_provider"]}
summon area_effect_cloud ~7.5 ~2 ~7.5 {Age:-2147483645,Duration:-1,WaitTime:-2147483648,Particle:"block air",CustomName:'"Stack Attack Block Drop Location"',Tags:["sat_block_drop_location","sat_random_value_provider"]}
summon area_effect_cloud ~7.5 ~2 ~7.5 {Age:-2147483644,Duration:-1,WaitTime:-2147483648,Particle:"block air",CustomName:'"Stack Attack Block Drop Location"',Tags:["sat_block_drop_location","sat_random_value_provider"]}
summon area_effect_cloud ~7.5 ~2 ~7.5 {Age:-2147483643,Duration:-1,WaitTime:-2147483648,Particle:"block air",CustomName:'"Stack Attack Block Drop Location"',Tags:["sat_block_drop_location","sat_random_value_provider"]}
summon area_effect_cloud ~7.5 ~2 ~7.5 {Age:-2147483642,Duration:-1,WaitTime:-2147483648,Particle:"block air",CustomName:'"Stack Attack Block Drop Location"',Tags:["sat_block_drop_location","sat_random_value_provider"]}
summon area_effect_cloud ~7.5 ~2 ~7.5 {Age:-2147483641,Duration:-1,WaitTime:-2147483648,Particle:"block air",CustomName:'"Stack Attack Block Drop Location"',Tags:["sat_block_drop_location","sat_random_value_provider"]}
summon area_effect_cloud ~7.5 ~2 ~7.5 {Age:-2147483640,Duration:-1,WaitTime:-2147483648,Particle:"block air",CustomName:'"Stack Attack Block Drop Location"',Tags:["sat_block_drop_location","sat_random_value_provider"]}
summon area_effect_cloud ~7.5 ~2 ~7.5 {Age:-2147483639,Duration:-1,WaitTime:-2147483648,Particle:"block air",CustomName:'"Stack Attack Block Drop Location"',Tags:["sat_block_drop_location","sat_random_value_provider"]}
summon area_effect_cloud ~7.5 ~2 ~7.5 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Particle:"block air",CustomName:'"Stack Attack Block Drop Location"',Tags:["sat_block_drop_location"]}
summon area_effect_cloud ~7.5 ~2 ~7.5 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Particle:"block air",CustomName:'"Stack Attack Block Drop Location"',Tags:["sat_block_drop_location"]}
summon area_effect_cloud ~7.5 ~2 ~7.5 {Age:-2147483640,Duration:-1,WaitTime:-2147483648,Particle:"block air",CustomName:'"Stack Attack Block Drop Location"',Tags:["sat_block_drop_location","sat_random_value_provider"]}
summon area_effect_cloud ~7.5 ~2 ~7.5 {Age:-2147483639,Duration:-1,WaitTime:-2147483648,Particle:"block air",CustomName:'"Stack Attack Block Drop Location"',Tags:["sat_block_drop_location","sat_random_value_provider"]}

# prepare sat_random_value_provider with values
execute positioned ~7.5 ~2 ~7.5 as @e[type=area_effect_cloud,tag=sat_random_value_provider,distance=..0.001] run function stack_attack_arena:setup/assign_value_providers

# spread players into the arena
spreadplayers ~7.5 ~7.5 1 5 false @a[tag=sat_joining_game]

# effect players with buffs, equip jackets, replace sat_joining_game and sat_waiting_for_game with sat_in_game
execute as @a[tag=sat_joining_game] run function stack_attack_arena:setup/prepare_players
# -> match value is now stored in match_value sat_match_value

#====== Players now just have the sat_in_game tag ======

# store match value onto arena marker AEC
scoreboard players operation @s sat_match_value = match_value sat_match_value
scoreboard players reset match_value sat_match_value

# set sat_round_timer to -4
scoreboard players set @s sat_round_timer -4

# set initial wave speed to 4
scoreboard players set @s sat_drop_timer 1

# set arena_state to "starting"=1
scoreboard players set @s sat_arena_state 1

# set fake player flag to enable clocks for the game
scoreboard players add arenas_active sat_data 1
