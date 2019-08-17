# @s = arenas with sat_arena_state 2 and sat_drop_timer=0
# at sat_block_drop_location aecs within an arena
# called by stack_attack_arena:blocks/drop_timer_control

# spawn particle emitters
summon area_effect_cloud ~ ~ ~ {CustomName:'"Stack Attack Block Drop Particle"',Age:-2147483648,Duration:55,WaitTime:-2147483648,Tags:["sat_block_drop_particle"]}

# decide on a block to summon. Implementing a radius in the second selector wont work since the distance between these sat_block_drop_location aecs can vary A LOT. (sat_random_value_provider aecs are also sat_block_drop_location aecs)
scoreboard players operation @s sat_random_value = @e[type=area_effect_cloud,tag=sat_random_value_provider,limit=1,sort=random] sat_random_value

# summon block depending on sat_random_value score
execute if score @s sat_random_value matches 0 run summon falling_block ~ ~50 ~ {BlockState:{Name:"minecraft:redstone_block"},Time:1,HurtEntities:1b,FallHurtMax:6.3f,FallHurtAmount:6.3f,DropItem:0b,CustomName:'"Stack Attack Block"',Tags:["sat_block"]}
execute if score @s sat_random_value matches 1 run function stack_attack_arena:powerups/choose_powerup
execute if score @s sat_random_value matches 2..3 run summon falling_block ~ ~50 ~ {BlockState:{Name:"minecraft:pink_concrete_powder"},Time:1,HurtEntities:1b,FallHurtMax:6.3f,FallHurtAmount:6.3f,DropItem:0b,CustomName:'"Stack Attack Block"',Tags:["sat_block"]}
execute if score @s sat_random_value matches 4..5 run summon falling_block ~ ~50 ~ {BlockState:{Name:"minecraft:yellow_concrete_powder"},Time:1,HurtEntities:1b,FallHurtMax:6.3f,FallHurtAmount:6.3f,DropItem:0b,CustomName:'"Stack Attack Block"',Tags:["sat_block"]}
execute if score @s sat_random_value matches 6..7 run summon falling_block ~ ~50 ~ {BlockState:{Name:"minecraft:light_blue_concrete_powder"},Time:1,HurtEntities:1b,FallHurtMax:6.3f,FallHurtAmount:6.3f,DropItem:0b,CustomName:'"Stack Attack Block"',Tags:["sat_block"]}
execute if score @s sat_random_value matches 7..8 run summon falling_block ~ ~50 ~ {BlockState:{Name:"minecraft:lime_concrete_powder"},Time:1,HurtEntities:1b,FallHurtMax:6.3f,FallHurtAmount:6.3f,DropItem:0b,CustomName:'"Stack Attack Block"',Tags:["sat_block"]}
