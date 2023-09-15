tp ~ ~-0.1 ~

execute if block ~ ~ ~ #warpedlib:collision/top_touch run particle minecraft:poof ~ ~ ~ 0.4 0.4 0.4 0 64
execute if block ~ ~ ~ #warpedlib:collision/top_touch as @e[tag=mf.block.donut_block.falling,distance=..0.5] run function miscfeatures:entity/sendtovoid

execute if predicate warpedlib:in_void run particle minecraft:cloud ~ ~0.5 ~ 0.25 0.25 0.25 0 20
execute if predicate warpedlib:in_void as @e[tag=mf.block.donut_block.falling,distance=..0.5] run function miscfeatures:entity/sendtovoid