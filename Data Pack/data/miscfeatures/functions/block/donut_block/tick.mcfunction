## Break
execute if block ~ ~ ~ mangrove_roots run tag @s add mf.blockDontBreak
execute if block ~ ~ ~ light[level=0] run tag @s add mf.blockDontBreak
#execute positioned ~ ~-0.5 ~ if entity @e[type=shulker,tag=mf.block.donut_block,distance=..0.1] run tag @s add mf.blockDontBreak
execute unless entity @s[tag=mf.blockDontBreak] run function miscfeatures:block/donut_block/break

## Start shaking
execute positioned ~-0.5 ~0.5 ~-0.5 if entity @e[dx=0,dy=0.1,dz=0,predicate=warpedlib:on_ground] positioned ~0.5 ~-0.5 ~0.5 if score @s mf.block.donut_block.shakeTime matches -1 run tag @s add mf.block.donut_block.startShaking
execute if entity @s[tag=mf.block.donut_block.startShaking] run data modify entity @s item.id set value "minecraft:andesite"
execute if entity @s[tag=mf.block.donut_block.startShaking] run scoreboard players set @s mf.block.donut_block.shakeTime 40
execute if entity @s[tag=mf.block.donut_block.startShaking] run setblock ~ ~ ~ light[level=0]
execute if entity @s[tag=mf.block.donut_block.startShaking] run summon shulker ~ ~-0.5 ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,AttachFace:1b,Tags:["mf.block.donut_block"],DeathLootTable:"miscfeatures:empty",active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:1000000,show_particles:0b}]}

## Shake
execute if entity @s[scores={mf.block.donut_block.shakeTime=1..}] run scoreboard players remove @s mf.block.donut_block.shakeTime 1
execute if entity @s[scores={mf.block.donut_block.shakeTime=1..}] store result entity @s transformation.translation[0] float 0.01 run random value -5..5
execute if entity @s[scores={mf.block.donut_block.shakeTime=1..}] store result entity @s transformation.translation[2] float 0.01 run random value -5..5

## Stop shaking
execute positioned ~-0.5 ~0.5 ~-0.5 unless entity @e[dx=0,dy=0.1,dz=0,predicate=warpedlib:on_ground] positioned ~0.5 ~-0.5 ~0.5 if score @s mf.block.donut_block.shakeTime matches 1.. run tag @s add mf.block.donut_block.stopShaking
execute if entity @s[tag=mf.block.donut_block.stopShaking] run data modify entity @s item.id set value "minecraft:stone"
execute if entity @s[tag=mf.block.donut_block.stopShaking] run setblock ~ ~ ~ mangrove_roots
execute if entity @s[tag=mf.block.donut_block.stopShaking] positioned ~ ~-0.5 ~ as @e[type=shulker,tag=mf.block.donut_block,distance=..0.1] at @s run function miscfeatures:entity/sendtovoid
execute if entity @s[tag=mf.block.donut_block.stopShaking] run data merge entity @s {transformation:{translation:[0f,0f,0f]}}
execute if entity @s[tag=mf.block.donut_block.stopShaking] run scoreboard players set @s mf.block.donut_block.shakeTime -1

## Fall
# Create falling block
execute if entity @s[scores={mf.block.donut_block.shakeTime=0}] run tag @s add mf.block.donut_block.startFalling
execute if entity @s[tag=mf.block.donut_block.startFalling] run summon item_display ~ ~-0.5 ~ {Tags:["mf.block.donut_block.falling","mf.block.donut_block.falling.base"],Passengers:[{id:"minecraft:item_display",Tags:["mf.block.donut_block.falling"],start_interpolation:0,interpolation_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:andesite",Count:1b,tag:{CustomModelData:2}}},{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,DeathLootTable:"miscfeatures:empty",PersistenceRequired:1b,NoAI:1b,AttachFace:1b,Tags:["mf.block.donut_block.falling"],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:1000000,show_particles:0b}]}]}
execute store result entity @e[tag=mf.block.donut_block.falling,tag=!mf.block.donut_block.falling.base,sort=nearest,limit=1] transformation.right_rotation[1] float 1 run data get entity @s transformation.right_rotation[1]
execute store result entity @e[tag=mf.block.donut_block.falling,tag=!mf.block.donut_block.falling.base,sort=nearest,limit=1] transformation.right_rotation[3] float 1 run data get entity @s transformation.right_rotation[3]

# Become invisible
execute if entity @s[tag=mf.block.donut_block.startFalling] run data modify entity @s item.id set value "minecraft:stone"
execute if entity @s[tag=mf.block.donut_block.startFalling] run setblock ~ ~ ~ light[level=0]
execute if entity @s[tag=mf.block.donut_block.startFalling] positioned ~ ~-0.5 ~ as @e[type=shulker,tag=mf.block.donut_block,distance=..0.1] at @s run function miscfeatures:entity/sendtovoid
execute if entity @s[tag=mf.block.donut_block.startFalling] run data merge entity @s {transformation:{translation:[0f,0f,0f],scale:[0f,0f,0f]}}
execute if entity @s[tag=mf.block.donut_block.startFalling] run scoreboard players set @s mf.block.donut_block.shakeTime -83

## Regrow
execute if entity @s[scores={mf.block.donut_block.shakeTime=..-2}] run scoreboard players add @s mf.block.donut_block.shakeTime 1
execute if entity @s[scores={mf.block.donut_block.shakeTime=-5}] run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{scale:[1f,1f,1f]}}
execute if entity @s[scores={mf.block.donut_block.shakeTime=-2}] run setblock ~ ~ ~ mangrove_roots

## Cleanup
tag @s remove mf.blockDontBreak
tag @s remove mf.block.donut_block.startShaking
tag @s remove mf.block.donut_block.stopShaking
tag @s remove mf.block.donut_block.startFalling