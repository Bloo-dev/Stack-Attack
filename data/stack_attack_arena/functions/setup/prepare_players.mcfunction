# @s = players joining a game, already spread to their arena
# at the arena marker's location
# called by stack_attack_arena:setup/prepare_entities

# remove old tags, replace with sat_in_game and reset old participation fee storage for security.
scoreboard players reset @s sat_match_value
tag @s remove sat_waiting_for_game
tag @s remove sat_joining_game
tag @s add sat_in_game

# adjust title times
title @s times 0 12 4

# clear effects and heal
effect clear @s

# initial saturation, is meant to run out to prevent natural regeneration
effect give @s minecraft:saturation 4 12 true
effect give @s minecraft:instant_health 1 20
effect give @s minecraft:weakness 12 5 true
effect give @s minecraft:resistance 4 12 true

# set gamemode
gamemode adventure

# track games played stat
scoreboard players add @s sat_games_played 1

# playsound
playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 0.5 0 0

# hand out some point in case the player has never played before and grant advacnement
execute unless score @s sat_leaderboard matches -2147483648..2147483647 run function stack_attack_arena:setup/prepare_new_players

# equip vests before participation fee is payed
replaceitem entity @s[scores={sat_leaderboard=8..11}] armor.chest leather_chestplate{display:{color:15468800,Name:"{\"text\":\"Piñiata's Rough Quilt\",\"italic\":\"false\"}"},Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"chest",Amount:0,Operation:0,UUIDMost:10513,UUIDLeast:111743}],Enchantments:[{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],HideFlags:1} 1
replaceitem entity @s[scores={sat_leaderboard=11..14}] armor.chest leather_chestplate{display:{color:16166926,Name:"{\"text\":\"Piñiata's Coarse Quilt\",\"italic\":\"false\"}"},Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"chest",Amount:0,Operation:0,UUIDMost:10513,UUIDLeast:111743}],Enchantments:[{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],HideFlags:1} 1
replaceitem entity @s[scores={sat_leaderboard=15..18}] armor.chest leather_chestplate{display:{color:16773687,Name:"{\"text\":\"Piñiata's Wooly Quilt\",\"italic\":\"false\"}"},Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"chest",Amount:0,Operation:0,UUIDMost:10513,UUIDLeast:111743}],Enchantments:[{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],HideFlags:1} 1
replaceitem entity @s[scores={sat_leaderboard=19..22}] armor.chest leather_chestplate{display:{color:12123959,Name:"{\"text\":\"Piñiata's Warm Mantle\",\"italic\":\"false\"}"},Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"chest",Amount:0,Operation:0,UUIDMost:10513,UUIDLeast:111743}],Enchantments:[{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],HideFlags:1} 1
replaceitem entity @s[scores={sat_leaderboard=23..26}] armor.chest leather_chestplate{display:{color:2150446,Name:"{\"text\":\"Piñiata's Comfortable Mantle\",\"italic\":\"false\"}"},Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"chest",Amount:0,Operation:0,UUIDMost:10513,UUIDLeast:111743}],Enchantments:[{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],HideFlags:1} 1
replaceitem entity @s[scores={sat_leaderboard=27..30}] armor.chest leather_chestplate{display:{color:2150562,Name:"{\"text\":\"Piñiata's Beloved Mantle\",\"italic\":\"false\"}"},Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"chest",Amount:0,Operation:0,UUIDMost:10513,UUIDLeast:111743}],Enchantments:[{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],HideFlags:1} 1
replaceitem entity @s[scores={sat_leaderboard=31..34}] armor.chest leather_chestplate{display:{color:1177343,Name:"{\"text\":\"Piñiata's Simple Jacket\",\"italic\":\"false\"}"},Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"chest",Amount:0,Operation:0,UUIDMost:10513,UUIDLeast:111743}],Enchantments:[{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],HideFlags:1} 1
replaceitem entity @s[scores={sat_leaderboard=35..38}] armor.chest leather_chestplate{display:{color:1151743,Name:"{\"text\":\"Piñiata's Plush Jacket\",\"italic\":\"false\"}"},Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"chest",Amount:0,Operation:0,UUIDMost:10513,UUIDLeast:111743}],Enchantments:[{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],HideFlags:1} 1
replaceitem entity @s[scores={sat_leaderboard=39..42}] armor.chest leather_chestplate{display:{color:6955247,Name:"{\"text\":\"Piñiata's Magical Jacket\",\"italic\":\"false\"}"},Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"chest",Amount:0,Operation:0,UUIDMost:10513,UUIDLeast:111743}],Enchantments:[{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],HideFlags:1} 1
replaceitem entity @s[scores={sat_leaderboard=43..}] armor.chest leather_chestplate{display:{color:8716537,Name:"{\"text\":\"Piñiata's Robe\",\"italic\":\"false\"}"},Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"chest",Amount:0,Operation:0,UUIDMost:10513,UUIDLeast:111743}],Enchantments:[{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],HideFlags:1} 1

# pay participation fee if player has at least 1 point
execute if score @s sat_leaderboard matches 1.. run function stack_attack_arena:setup/pay_participation_fee
