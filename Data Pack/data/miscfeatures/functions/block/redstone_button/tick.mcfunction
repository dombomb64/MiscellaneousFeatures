execute unless block ~ ~ ~ stone_button run function miscfeatures:block/redstone_button/break

execute if block ~ ~ ~ stone_button[powered=true] unless score @s mf.block.redstone_button.powerTime matches 1.. run data merge entity @s {item:{id:"minecraft:andesite",Count:1b,tag:{CustomModelData:1}}}
execute if score @s mf.block.redstone_button.powerTime matches 0 run stopsound @a[distance=..16] block minecraft:block.stone_button.click_on

execute if entity @s[tag=mf.blockFace.ceilingNorth,scores={mf.block.redstone_button.powerTime=1..}] run setblock ~ ~ ~ stone_button[powered=false,face=ceiling,facing=north]
execute if entity @s[tag=mf.blockFace.ceilingSouth,scores={mf.block.redstone_button.powerTime=1..}] run setblock ~ ~ ~ stone_button[powered=false,face=ceiling,facing=south]
execute if entity @s[tag=mf.blockFace.ceilingWest,scores={mf.block.redstone_button.powerTime=1..}] run setblock ~ ~ ~ stone_button[powered=false,face=ceiling,facing=west]
execute if entity @s[tag=mf.blockFace.ceilingEast,scores={mf.block.redstone_button.powerTime=1..}] run setblock ~ ~ ~ stone_button[powered=false,face=ceiling,facing=east]

execute if entity @s[tag=mf.blockFace.floorNorth,scores={mf.block.redstone_button.powerTime=1..}] run setblock ~ ~ ~ stone_button[powered=false,face=floor,facing=north]
execute if entity @s[tag=mf.blockFace.floorSouth,scores={mf.block.redstone_button.powerTime=1..}] run setblock ~ ~ ~ stone_button[powered=false,face=floor,facing=south]
execute if entity @s[tag=mf.blockFace.floorWest,scores={mf.block.redstone_button.powerTime=1..}] run setblock ~ ~ ~ stone_button[powered=false,face=floor,facing=west]
execute if entity @s[tag=mf.blockFace.floorEast,scores={mf.block.redstone_button.powerTime=1..}] run setblock ~ ~ ~ stone_button[powered=false,face=floor,facing=east]

execute if entity @s[tag=mf.blockFace.north,scores={mf.block.redstone_button.powerTime=1..}] run setblock ~ ~ ~ stone_button[powered=false,face=wall,facing=north]
execute if entity @s[tag=mf.blockFace.south,scores={mf.block.redstone_button.powerTime=1..}] run setblock ~ ~ ~ stone_button[powered=false,face=wall,facing=south]
execute if entity @s[tag=mf.blockFace.west,scores={mf.block.redstone_button.powerTime=1..}] run setblock ~ ~ ~ stone_button[powered=false,face=wall,facing=west]
execute if entity @s[tag=mf.blockFace.east,scores={mf.block.redstone_button.powerTime=1..}] run setblock ~ ~ ~ stone_button[powered=false,face=wall,facing=east]

execute if score @s mf.block.redstone_button.powerTime matches 1.. run stopsound @a[distance=..16] block minecraft:block.stone_button.click_off
execute if score @s mf.block.redstone_button.powerTime matches 1.. run playsound minecraft:ui.button.click block @a[distance=..16] ~ ~ ~ 1 1.5
execute if score @s mf.block.redstone_button.powerTime matches 1.. run data merge entity @s {item:{id:"minecraft:stone",Count:1b,tag:{CustomModelData:1}}}
execute if score @s mf.block.redstone_button.powerTime matches 1.. run scoreboard players set @s mf.block.redstone_button.powerTime 0
execute if block ~ ~ ~ stone_button[powered=true] run scoreboard players add @s mf.block.redstone_button.powerTime 1