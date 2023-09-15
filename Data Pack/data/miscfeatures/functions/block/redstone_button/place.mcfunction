## Summon
summon item_display ~ ~0.5 ~ {Tags:["mf.block","mf.block.redstone_button","mf.block.justPlaced"],start_interpolation:0,interpolation_duration:1,item:{id:"minecraft:stone",Count:1b,tag:{CustomModelData:1}}}

## Set rotation

### If vertical, rotate with the player
execute store result entity @s ItemRotation byte 1 run scoreboard players get @a[tag=mf.justPlacedBlock,sort=nearest,limit=1] mf.entity.cardinalH

### Apply rotation
execute if entity @s[nbt={Facing:0b,ItemRotation:2b}] run data merge entity @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] {transformation:{translation:[0f,0f,0f],left_rotation:[1f,0f,0f,0f],scale:[1f,1f,1f],right_rotation:[0f,1f,0f,0f]}}
execute if entity @s[nbt={Facing:0b,ItemRotation:2b}] run tag @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] add mf.blockFace.ceilingNorth
execute if entity @s[nbt={Facing:0b,ItemRotation:2b}] run setblock ~ ~ ~ stone_button[face=ceiling,facing=north]
execute if entity @s[nbt={Facing:0b,ItemRotation:3b}] run data merge entity @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] {transformation:{translation:[0f,0f,0f],left_rotation:[1f,0f,0f,0f],scale:[1f,1f,1f],right_rotation:[0f,1f,0f,0f]}}
execute if entity @s[nbt={Facing:0b,ItemRotation:3b}] run tag @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] add mf.blockFace.ceilingSouth
execute if entity @s[nbt={Facing:0b,ItemRotation:3b}] run setblock ~ ~ ~ stone_button[face=ceiling,facing=south]
execute if entity @s[nbt={Facing:0b,ItemRotation:4b}] run data merge entity @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] {transformation:{translation:[0f,0f,0f],left_rotation:[1f,0f,0f,0f],scale:[1f,1f,1f],right_rotation:[0f,0.707f,0f,0.707f]}}
execute if entity @s[nbt={Facing:0b,ItemRotation:4b}] run tag @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] add mf.blockFace.ceilingWest
execute if entity @s[nbt={Facing:0b,ItemRotation:4b}] run setblock ~ ~ ~ stone_button[face=ceiling,facing=west]
execute if entity @s[nbt={Facing:0b,ItemRotation:5b}] run data merge entity @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] {transformation:{translation:[0f,0f,0f],left_rotation:[1f,0f,0f,0f],scale:[1f,1f,1f],right_rotation:[0f,-0.707f,0f,0.707f]}}
execute if entity @s[nbt={Facing:0b,ItemRotation:5b}] run tag @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] add mf.blockFace.ceilingEast
execute if entity @s[nbt={Facing:0b,ItemRotation:5b}] run setblock ~ ~ ~ stone_button[face=ceiling,facing=east]

execute if entity @s[nbt={Facing:1b,ItemRotation:2b}] run data merge entity @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] {transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]}}
execute if entity @s[nbt={Facing:1b,ItemRotation:2b}] run tag @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] add mf.blockFace.floorNorth
execute if entity @s[nbt={Facing:1b,ItemRotation:2b}] run setblock ~ ~ ~ stone_button[face=floor,facing=north]
execute if entity @s[nbt={Facing:1b,ItemRotation:3b}] run data merge entity @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] {transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,1f,0f,0f]}}
execute if entity @s[nbt={Facing:1b,ItemRotation:3b}] run tag @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] add mf.blockFace.floorSouth
execute if entity @s[nbt={Facing:1b,ItemRotation:3b}] run setblock ~ ~ ~ stone_button[face=floor,facing=south]
execute if entity @s[nbt={Facing:1b,ItemRotation:4b}] run data merge entity @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] {transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,0.707f,0f,0.707f]}}
execute if entity @s[nbt={Facing:1b,ItemRotation:4b}] run tag @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] add mf.blockFace.floorWest
execute if entity @s[nbt={Facing:1b,ItemRotation:4b}] run setblock ~ ~ ~ stone_button[face=floor,facing=west]
execute if entity @s[nbt={Facing:1b,ItemRotation:5b}] run data merge entity @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] {transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,-0.707f,0f,0.707f]}}
execute if entity @s[nbt={Facing:1b,ItemRotation:5b}] run tag @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] add mf.blockFace.floorEast
execute if entity @s[nbt={Facing:1b,ItemRotation:5b}] run setblock ~ ~ ~ stone_button[face=floor,facing=east]

execute if entity @s[nbt={Facing:2b}] run data merge entity @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] {transformation:{translation:[0f,0f,0f],left_rotation:[-0.707f,0f,0f,0.707f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]}}
execute if entity @s[nbt={Facing:2b}] run tag @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] add mf.blockFace.north
execute if entity @s[nbt={Facing:2b}] run setblock ~ ~ ~ stone_button[face=wall,facing=north]

execute if entity @s[nbt={Facing:3b}] run data merge entity @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] {transformation:{translation:[0f,0f,0f],left_rotation:[-0.707f,0f,0f,0.707f],scale:[1f,1f,1f],right_rotation:[0f,0f,-1f,0f]}}
execute if entity @s[nbt={Facing:3b}] run tag @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] add mf.blockFace.south
execute if entity @s[nbt={Facing:3b}] run setblock ~ ~ ~ stone_button[face=wall,facing=south]

execute if entity @s[nbt={Facing:4b}] run data merge entity @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] {transformation:{translation:[0f,0f,0f],left_rotation:[-0.707f,0f,0f,0.707f],scale:[1f,1f,1f],right_rotation:[0f,0f,0.707f,0.707f]}}
execute if entity @s[nbt={Facing:4b}] run tag @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] add mf.blockFace.west
execute if entity @s[nbt={Facing:4b}] run setblock ~ ~ ~ stone_button[face=wall,facing=west]

execute if entity @s[nbt={Facing:5b}] run data merge entity @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] {transformation:{translation:[0f,0f,0f],left_rotation:[-0.707f,0f,0f,0.707f],scale:[1f,1f,1f],right_rotation:[0f,0f,-0.707f,0.707f]}}
execute if entity @s[nbt={Facing:5b}] run tag @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] add mf.blockFace.east
execute if entity @s[nbt={Facing:5b}] run setblock ~ ~ ~ stone_button[face=wall,facing=east]

## Play sound
playsound block.metal.place block @a[distance=..16] ~ ~ ~

## Cleanup
tag @e[type=item_display] remove mf.block.justPlaced