# HUGE credit to @Quillbee on YouTube for showing off this method of raycasting.

## Check for block here
summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["mf.raycast.initCheck"]}
execute anchored eyes rotated as @s run tp @e[tag=mf.raycast.initCheck,sort=nearest,limit=1] ^ ^ ^ ~ ~
execute as @e[tag=mf.raycast.initCheck,sort=nearest,limit=1] at @s unless block ~ ~ ~ #replaceable run return 0

## Setup
tag @s add mf.raycasting
scoreboard players set .temp1 mf.vars 36
execute if entity @s[gamemode=creative] run scoreboard players set .temp1 mf.vars 40

## Summon
summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["mf.raycast"]}

## Position and rotate
execute anchored eyes rotated as @s run tp @e[tag=mf.raycast,sort=nearest,limit=1] ^ ^ ^ ~ ~

## Process
execute as @e[tag=mf.raycast,sort=nearest,limit=1] run function miscfeatures:raycast/leather_block/process

tag @s remove mf.raycasting