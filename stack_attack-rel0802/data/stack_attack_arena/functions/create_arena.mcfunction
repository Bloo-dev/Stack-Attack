# to be ran manually by an operator. Places a arena structure block.
# @s, at: depend on call, usually over chat.

# click sound effect
playsound minecraft:ui.button.click player @s ~ ~ ~ 0.2 0.4

# arena structure_block
setblock ~ ~ ~ structure_block{mirror:"NONE",ignoreEntities:0b,rotation:"NONE",mode:"LOAD",integrity:1.0f,showair:0b,name:"stack_attack_arena:arena_base",id:"minecraft:structure_block",sizeY:32,sizeZ:15,showboundingbox:1b}
setblock ~ ~32 ~ structure_block{mirror:"NONE",ignoreEntities:1b,rotation:"NONE",mode:"LOAD",integrity:1.0f,showair:0b,name:"stack_attack_arena:arena_top",id:"minecraft:structure_block",sizeY:32,sizeZ:15,showboundingbox:1b}
execute align xyz positioned ~.5 ~-.5 ~.5 run particle minecraft:end_rod ~ ~ ~ .1 0 .1 0.05 30

# print tellraw to give operators feedback / to allow them to remove the closest lobby marker.
tellraw @s ["",{"text":"["},{"text":"S","color":"yellow"},{"text":"tack ","color":"light_purple"},{"text":" A","color":"blue"},{"text":"ttack","color":"green"},{"text":"] ","color":"none"},{"text":" Placed a structure block containing a fresh arena! Please review it's position.","color":"green","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"All settings were pre-set for you.","color":"white"}]}}}]
