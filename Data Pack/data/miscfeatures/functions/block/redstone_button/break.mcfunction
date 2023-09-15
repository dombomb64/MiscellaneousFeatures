execute store result score .temp1 mf.vars run kill @e[type=item,distance=..0.5,sort=nearest,limit=1,nbt={Item:{id:"minecraft:stone_button",Count:1b}}]
execute if score .temp1 mf.vars matches 1.. run loot spawn ~ ~ ~ loot miscfeatures:blocks/redstone_button

particle minecraft:item redstone_block ~ ~ ~ 0.25 0.25 0.25 0.075 64

stopsound @a[distance=..16] block block.stone.break
playsound block.metal.break block @a[distance=..16] ~ ~ ~

kill @s[type=item_display]