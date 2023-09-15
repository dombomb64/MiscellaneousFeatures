execute unless block ~ ~ ~ #replaceable run summon item ~ ~ ~ {Motion:[0.0d,0.25d,0.0d],CustomNameVisible:1b,CustomName:'{"translate":"miscfeatures.blockSpaceTaken","fallback":"Please use the Miscellaneous Features resource pack and set your game language to English (US)."}',Item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{mf.item:"leather_block",display:{Name:'{"translate":"block.miscfeatures.leather_block","fallback":"Please use the Miscellaneous Features resource pack and set your game language to English (US).","italic":false}'},CustomModelData:1}}}
execute unless block ~ ~ ~ #replaceable as @e[type=item,sort=nearest,limit=1,nbt={Age:0s,Item:{tag:{mf.item:"leather_block"}}}] if data entity @a[tag=mf.raycasting,sort=nearest,limit=1] SelectedItem.tag.display.color store result entity @s item.tag.display.color int 1 run data get entity @a[tag=mf.raycasting,sort=nearest,limit=1] SelectedItem.tag.display.color
execute unless block ~ ~ ~ #replaceable run return 0

## Summon
summon item_display ~ ~0.5 ~ {Tags:["mf.block","mf.block.leather_block","mf.block.justPlaced"],start_interpolation:0,interpolation_duration:1,item:{id:"minecraft:stone",Count:1b,tag:{CustomModelData:3}},Passengers:[{id:"minecraft:item_display",Rotation:[0f,0f],item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:2}},transformation:{translation:[0f,0f,0.5f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,0.1f],right_rotation:[0f,0f,0f,1f]}},{id:"minecraft:item_display",Rotation:[90f,0f],item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:2}},transformation:{translation:[0f,0f,0.5f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,0.1f],right_rotation:[0f,0f,0f,1f]}},{id:"minecraft:item_display",Rotation:[-180f,0f],item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:2}},transformation:{translation:[0f,0f,0.5f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,0.1f],right_rotation:[0f,0f,0f,1f]}},{id:"minecraft:item_display",Rotation:[-90f,0f],item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:2}},transformation:{translation:[0f,0f,0.5f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,0.1f],right_rotation:[0f,0f,0f,1f]}},{id:"minecraft:item_display",Rotation:[0f,90f],item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:2}},transformation:{translation:[0f,0f,0.5f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,0.1f],right_rotation:[0f,0f,0f,1f]}},{id:"minecraft:item_display",Rotation:[0f,-90f],item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:2}},transformation:{translation:[0f,0f,0.5f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,0.1f],right_rotation:[0f,0f,0f,1f]}}]}

## Get color
execute as @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] if data entity @a[tag=mf.raycasting,sort=nearest,limit=1] SelectedItem.tag.display.color on passengers store result entity @s item.tag.display.color int 1 run data get entity @a[tag=mf.raycasting,sort=nearest,limit=1] SelectedItem.tag.display.color

## Set rotation
#execute run data merge entity @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] {transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]}}
execute run tag @e[type=item_display,tag=mf.block.justPlaced,sort=nearest,limit=1] add mf.blockFace.none
execute run setblock ~ ~ ~ mangrove_roots

## Play sound
playsound block.scaffolding.place block @a[distance=..16] ~ ~ ~ 1 0.6

## Cleanup
tag @e[type=item_display] remove mf.block.justPlaced