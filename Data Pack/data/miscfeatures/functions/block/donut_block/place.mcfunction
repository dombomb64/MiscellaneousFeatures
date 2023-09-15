## Summon
summon item_display ~ ~0.5 ~ {Tags:["mf.block","mf.block.donut_block","mf.block.justPlaced"],start_interpolation:0,interpolation_duration:1,item:{id:"minecraft:stone",Count:1b,tag:{CustomModelData:2}}}
scoreboard players set @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] mf.block.donut_block.shakeTime -1

## Set rotation

### If vertical, rotate with the player
#execute if entity @s[nbt={Facing:0b}] run tag @s add mf.blockPlacedVert
#execute if entity @s[nbt={Facing:1b}] run tag @s add mf.blockPlacedVert
#execute if entity @s[tag=mf.blockPlacedVert] store result entity @s Facing byte 1 run scoreboard players get @a[tag=mf.justPlacedBlock,sort=nearest,limit=1] mf.entity.cardinalH
execute store result entity @s Facing byte 1 run scoreboard players get @a[tag=mf.justPlacedBlock,sort=nearest,limit=1] mf.entity.cardinalH

### Apply rotation
execute if entity @s[nbt={Facing:2b}] run data merge entity @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] {transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]}}
execute if entity @s[nbt={Facing:2b}] run tag @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] add mf.blockFace.north
execute if entity @s[nbt={Facing:2b}] run setblock ~ ~ ~ mangrove_roots

execute if entity @s[nbt={Facing:3b}] run data merge entity @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] {transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,-1f,0f,0f]}}
execute if entity @s[nbt={Facing:3b}] run tag @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] add mf.blockFace.south
execute if entity @s[nbt={Facing:3b}] run setblock ~ ~ ~ mangrove_roots

execute if entity @s[nbt={Facing:4b}] run data merge entity @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] {transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,0.707f,0f,0.707f]}}
execute if entity @s[nbt={Facing:4b}] run tag @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] add mf.blockFace.west
execute if entity @s[nbt={Facing:4b}] run setblock ~ ~ ~ mangrove_roots

execute if entity @s[nbt={Facing:5b}] run data merge entity @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] {transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,-0.707f,0f,0.707f]}}
execute if entity @s[nbt={Facing:5b}] run tag @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] add mf.blockFace.east
execute if entity @s[nbt={Facing:5b}] run setblock ~ ~ ~ mangrove_roots

## Play sound
playsound block.scaffolding.place block @a[distance=..16] ~ ~ ~

## Cleanup
tag @e[type=item_display] remove mf.block.justPlaced