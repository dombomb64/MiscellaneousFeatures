## Move forward
tp @s ^ ^ ^0.125

## Test
#particle wax_off ~ ~ ~

## Check for entity
execute if entity @e[tag=!mf.raycasting,tag=!mf.raycast,dx=0,dy=0,dz=0] run tag @s add mf.raycast.hit.entity

## Check for block
execute unless block ~ ~ ~ #minecraft:replaceable run tag @s add mf.raycast.hit.block

## Decrease steps left
scoreboard players remove .temp1 mf.vars 1

## Recurse
execute as @s[tag=!mf.raycast.hit.entity,tag=!mf.raycast.hit.block] if score .temp1 mf.vars matches 1.. at @s run function miscfeatures:raycast/leather_block/move
execute as @s[tag=mf.raycast.hit.block] if score .temp1 mf.vars matches 0.. run tp ^ ^ ^-0.125
execute as @s[tag=mf.raycast.hit.block] run scoreboard players set .temp1 mf.vars -1