# @s = sat_in_game players in an arena on the abyss
# at @s
# called by stack_attack_arena:players/20hz

# debuffs
effect give @s slowness 1 0 true

# fangs
summon minecraft:evoker_fangs ~ ~ ~ {Passengers:[{id:"area_effect_cloud",CustomName:'"the abyss"',Tags:["sat_abyss_fang"],Particle:"block air",Radius:0.8f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:40,DurationOnUse:0f,Age:0,WaitTime:0,Effects:[{Id:7,Amplifier:10,Duration:17,ShowParticles:0b}]}]}
