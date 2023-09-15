execute store result score .temp1 mf.vars run kill @e[type=item,distance=..0.5,sort=nearest,limit=1,nbt={Item:{id:"minecraft:mangrove_roots",Count:1b}}]
execute if score .temp1 mf.vars matches 1.. run loot spawn ~ ~ ~ loot miscfeatures:blocks/donut_block

particle minecraft:poof ~ ~ ~ 0.4 0.4 0.4 0 64

stopsound @a[distance=..16] block block.mangrove_roots.break
playsound block.scaffolding.break block @a[distance=..16] ~ ~ ~

kill @s[type=item_display]