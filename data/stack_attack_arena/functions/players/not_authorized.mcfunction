# @s = Players that are not playing stack attack but still ended up in an arena somehow
# at most negative corner of the arena's walls on arena floor
# called by stack_attack_arena:round/timer

# teleport to random lobby
tp @e[type=marker,tag=sat_lobby_center,limit=1,sort=random]
# tell point lost
tellraw @s ["",{"text":"["},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"},{"text":"] ","color":"none"},{"text":"Join a game via a lobby.","color":"green"}]
