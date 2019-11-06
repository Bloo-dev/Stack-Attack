# @s = sat_kill_plane aec's
# at most negative corner of arena walls on arena floor
# called by stack_attack_arena:blocks/kill_plane at 20Hz

# kill different item types
execute if entity @s[nbt={Item:{id:"minecraft:pink_concrete_powder"}}] run kill @s
execute if entity @s[nbt={Item:{id:"minecraft:yellow_concrete_powder"}}] run kill @s
execute if entity @s[nbt={Item:{id:"minecraft:lime_concrete_powder"}}] run kill @s
execute if entity @s[nbt={Item:{id:"minecraft:light_blue_concrete_powder"}}] run kill @s
execute if entity @s[nbt={Item:{id:"minecraft:black_terracotta"}}] run kill @s
execute if entity @s[nbt={Item:{id:"minecraft:redstone_block"}}] run kill @s
