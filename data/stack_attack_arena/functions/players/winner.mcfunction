# @s = the last remaining player in an arena of sat_arena_state 3 ("ended")
# at @s
# called by stack_attack_arena:round/clean_up/immediate

# apply gained points
scoreboard players operation @s sat_leaderboard += points_gained sat_data
execute if entity @s[tag=sat_payed_fee] run scoreboard players operation points_gained sat_data -= #1 sat_data
tag @s remove sat_payed_fee

# announcements
execute if score points_gained sat_data matches 1.. run function stack_attack_arena:players/announcements/winner/gained_points
execute if score points_gained sat_data matches 0 run function stack_attack_arena:players/announcements/winner/no_points_gained

# reset fake players
scoreboard players reset points_gained sat_data

#display title
title @s times 8 154 40
title @s title ["",{"text":"YOU WON!","color":"gold"}]

# fireworks
summon minecraft:firework_rocket ~2 ~4 ~ {Life:0,LifeTime:27,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,FadeColors:[I;16752839,15783754],Colors:[I;7464700,10941749]}]}}}}
summon minecraft:firework_rocket ~ ~2 ~ {Life:0,LifeTime:40,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Colors:[I;16752839,15783754],FadeColors:[I;7464700,10941749]},{Type:2,Trail:1b,Colors:[I;16764946,16771361,16776960]}]}}}}
summon minecraft:firework_rocket ~ ~4 ~-2 {Life:0,LifeTime:32,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,FadeColors:[I;16752839,15783754],Colors:[I;7464700,10941749]}]}}}}

# spawn rare pinata if conditions were met
execute if score summon_pinata sat_data matches 1 run summon minecraft:llama ~ ~ ~ {CustomName:"{\"text\":\"Piñata\",\"color\":\"gold\"}",Tags:["sat_rare_pinata"],CustomNameVisible:1b,Health:2f,Variant:2,ChestedHorse:1b,Items:[{Slot:2b,id:"minecraft:cake",Count:1b},{Slot:3b,id:"minecraft:golden_apple",Count:1b},{Slot:4b,id:"minecraft:cookie",Count:1b}],DecorItem:{id:"minecraft:yellow_carpet",Count:1b}}
execute if score summon_pinata sat_data matches 1 run advancement grant @s only stack_attack_arena:locate_pinata

# sound
playsound ui.toast.challenge_complete voice @s ~ ~ ~ 1 0.8

# effect with resistance and regen to prevent death
effect give @s minecraft:resistance 9999 12 true
effect give @s minecraft:regeneration 9999 12 true

# track victory on scoreboard
scoreboard players add @s sat_games_won 1
