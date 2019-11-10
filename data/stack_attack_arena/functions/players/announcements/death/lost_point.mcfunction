# @s = Players that have been kicked from their arena for various reasons
# at most negative corner of some arena's walls on arena floor. DO NOT RELY ON THIS LOCATION
# called by stack_attack_arena:players/leave_arena or /quit_game or /death

# tellraw
tellraw @s ["",{"text":"["},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":"A","color":"blue"},{"text":"ttack","color":"green"},{"text":"] ","color":"none"},{"text":"You lost a point on the leaderboard!","color":"red"}]
